/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.database.Cursor
 *  android.net.Uri
 *  android.provider.MediaStore
 *  android.provider.MediaStore$Images
 *  android.provider.MediaStore$Images$Thumbnails
 *  android.provider.MediaStore$Video
 *  android.provider.MediaStore$Video$Thumbnails
 *  android.text.TextUtils
 *  android.util.Log
 */
package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.ExifOrientationStream;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MediaStoreThumbFetcher
implements DataFetcher<InputStream> {
    private static final ThumbnailStreamOpenerFactory DEFAULT_FACTORY = new ThumbnailStreamOpenerFactory();
    private static final int MINI_HEIGHT = 384;
    private static final int MINI_WIDTH = 512;
    private static final String TAG = "MediaStoreThumbFetcher";
    private final Context context;
    private final DataFetcher<InputStream> defaultFetcher;
    private final ThumbnailStreamOpenerFactory factory;
    private final int height;
    private InputStream inputStream;
    private final Uri mediaStoreUri;
    private final int width;

    public MediaStoreThumbFetcher(Context context, Uri uri, DataFetcher<InputStream> dataFetcher, int n2, int n3) {
        this(context, uri, dataFetcher, n2, n3, DEFAULT_FACTORY);
    }

    MediaStoreThumbFetcher(Context context, Uri uri, DataFetcher<InputStream> dataFetcher, int n2, int n3, ThumbnailStreamOpenerFactory thumbnailStreamOpenerFactory) {
        this.context = context;
        this.mediaStoreUri = uri;
        this.defaultFetcher = dataFetcher;
        this.width = n2;
        this.height = n3;
        this.factory = thumbnailStreamOpenerFactory;
    }

    private static boolean isMediaStoreUri(Uri uri) {
        if (uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    private static boolean isMediaStoreVideo(Uri uri) {
        if (MediaStoreThumbFetcher.isMediaStoreUri(uri) && uri.getPathSegments().contains("video")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private InputStream openThumbInputStream(ThumbnailStreamOpener thumbnailStreamOpener) {
        InputStream inputStream;
        try {
            inputStream = thumbnailStreamOpener.open(this.context, this.mediaStoreUri);
        }
        catch (FileNotFoundException var3_3) {
            if (Log.isLoggable((String)"MediaStoreThumbFetcher", (int)3)) {
                Log.d((String)"MediaStoreThumbFetcher", (String)"Failed to find thumbnail file", (Throwable)var3_3);
            }
            inputStream = null;
        }
        int n2 = -1;
        if (inputStream == null) return inputStream;
        n2 = thumbnailStreamOpener.getOrientation(this.context, this.mediaStoreUri);
        if (n2 != -1) {
            return new ExifOrientationStream(inputStream, n2);
        }
        return inputStream;
    }

    @Override
    public void cancel() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void cleanup() {
        if (this.inputStream != null) {
            try {
                this.inputStream.close();
            }
            catch (IOException var1_1) {}
        }
        this.defaultFetcher.cleanup();
    }

    @Override
    public String getId() {
        return this.mediaStoreUri.toString();
    }

    @Override
    public InputStream loadData(Priority priority) throws Exception {
        ThumbnailStreamOpener thumbnailStreamOpener = this.factory.build(this.mediaStoreUri, this.width, this.height);
        if (thumbnailStreamOpener != null) {
            this.inputStream = this.openThumbInputStream(thumbnailStreamOpener);
        }
        if (this.inputStream == null) {
            this.inputStream = this.defaultFetcher.loadData(priority);
        }
        return this.inputStream;
    }

    static class FileService {
        FileService() {
        }

        public boolean exists(File file) {
            return file.exists();
        }

        public File get(String string2) {
            return new File(string2);
        }

        public long length(File file) {
            return file.length();
        }
    }

    static class ImageThumbnailQuery
    implements ThumbnailQuery {
        private static final String[] PATH_PROJECTION = new String[]{"_data"};
        private static final String PATH_SELECTION = "kind = 1 AND image_id = ?";

        ImageThumbnailQuery() {
        }

        @Override
        public Cursor queryPath(Context context, Uri object) {
            object = object.getLastPathSegment();
            return context.getContentResolver().query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION, "kind = 1 AND image_id = ?", new String[]{object}, null);
        }
    }

    static interface ThumbnailQuery {
        public Cursor queryPath(Context var1, Uri var2);
    }

    static class ThumbnailStreamOpener {
        private static final FileService DEFAULT_SERVICE = new FileService();
        private ThumbnailQuery query;
        private final FileService service;

        public ThumbnailStreamOpener(FileService fileService, ThumbnailQuery thumbnailQuery) {
            this.service = fileService;
            this.query = thumbnailQuery;
        }

        public ThumbnailStreamOpener(ThumbnailQuery thumbnailQuery) {
            this(DEFAULT_SERVICE, thumbnailQuery);
        }

        private Uri parseThumbUri(Cursor cursor) {
            Object var2_2 = null;
            Object object = cursor.getString(0);
            cursor = var2_2;
            if (!TextUtils.isEmpty((CharSequence)object)) {
                object = this.service.get((String)object);
                cursor = var2_2;
                if (this.service.exists((File)object)) {
                    cursor = var2_2;
                    if (this.service.length((File)object) > 0) {
                        cursor = Uri.fromFile((File)object);
                    }
                }
            }
            return cursor;
        }

        /*
         * Loose catch block
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public int getOrientation(Context object, Uri uri) {
            int n2;
            int n3 = -1;
            Object object2 = null;
            Object object3 = null;
            object3 = object = object.getContentResolver().openInputStream(uri);
            object2 = object;
            n3 = n2 = new ImageHeaderParser((InputStream)object).getOrientation();
            if (object == null) return n3;
            try {
                object.close();
                return n2;
            }
            catch (IOException var1_5) {
                return n2;
            }
            catch (IOException iOException) {
                block13 : {
                    object2 = object3;
                    if (!Log.isLoggable((String)"MediaStoreThumbFetcher", (int)3)) break block13;
                    object2 = object3;
                    Log.d((String)"MediaStoreThumbFetcher", (String)("Failed to open uri: " + (Object)uri), (Throwable)iOException);
                }
                if (object3 == null) return n3;
                try {
                    object3.close();
                    return -1;
                }
                catch (IOException var1_3) {
                    return -1;
                }
                catch (Throwable throwable) {
                    if (object2 == null) throw throwable;
                    try {
                        object2.close();
                    }
                    catch (IOException var2_7) {
                        throw throwable;
                    }
                    do {
                        throw throwable;
                        break;
                    } while (true);
                }
            }
        }

        public InputStream open(Context context, Uri uri) throws FileNotFoundException {
            Cursor cursor;
            InputStream inputStream;
            block6 : {
                Object var4_4 = null;
                inputStream = null;
                cursor = this.query.queryPath(context, uri);
                uri = var4_4;
                if (cursor != null) {
                    uri = var4_4;
                    if (!cursor.moveToFirst()) break block6;
                    uri = this.parseThumbUri(cursor);
                }
            }
            if (uri != null) {
                inputStream = context.getContentResolver().openInputStream(uri);
            }
            return inputStream;
            finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    static class ThumbnailStreamOpenerFactory {
        ThumbnailStreamOpenerFactory() {
        }

        public ThumbnailStreamOpener build(Uri uri, int n2, int n3) {
            if (!MediaStoreThumbFetcher.isMediaStoreUri(uri) || n2 > 512 || n3 > 384) {
                return null;
            }
            if (MediaStoreThumbFetcher.isMediaStoreVideo(uri)) {
                return new ThumbnailStreamOpener(new VideoThumbnailQuery());
            }
            return new ThumbnailStreamOpener(new ImageThumbnailQuery());
        }
    }

    static class VideoThumbnailQuery
    implements ThumbnailQuery {
        private static final String[] PATH_PROJECTION = new String[]{"_data"};
        private static final String PATH_SELECTION = "kind = 1 AND video_id = ?";

        VideoThumbnailQuery() {
        }

        @Override
        public Cursor queryPath(Context context, Uri object) {
            object = object.getLastPathSegment();
            return context.getContentResolver().query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION, "kind = 1 AND video_id = ?", new String[]{object}, null);
        }
    }

}

