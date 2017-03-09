/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.BitmapFactory
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.Looper
 */
package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.ImageResponseCache;
import com.facebook.internal.UrlRedirectCache;
import com.facebook.internal.Utility;
import com.facebook.internal.WorkQueue;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class ImageDownloader {
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue;
    private static WorkQueue downloadQueue;
    private static Handler handler;
    private static final Map<RequestKey, DownloaderContext> pendingRequests;

    static {
        downloadQueue = new WorkQueue(8);
        cacheReadQueue = new WorkQueue(2);
        pendingRequests = new HashMap<RequestKey, DownloaderContext>();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean cancelRequest(ImageRequest object) {
        boolean bl = false;
        RequestKey requestKey = new RequestKey(object.getImageUri(), object.getCallerTag());
        object = pendingRequests;
        synchronized (object) {
            DownloaderContext downloaderContext = pendingRequests.get(requestKey);
            if (downloaderContext != null) {
                bl = true;
                if (downloaderContext.workItem.cancel()) {
                    pendingRequests.remove(requestKey);
                } else {
                    downloaderContext.isCancelled = true;
                }
            }
            return bl;
        }
    }

    public static void clearCache(Context context) {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache();
    }

    /*
     * Exception decompiling
     */
    private static void download(RequestKey var0, Context var1_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:366)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void downloadAsync(ImageRequest imageRequest) {
        if (imageRequest == null) {
            return;
        }
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = pendingRequests.get(requestKey);
            if (downloaderContext != null) {
                downloaderContext.request = imageRequest;
                downloaderContext.isCancelled = false;
                downloaderContext.workItem.moveToFront();
            } else {
                ImageDownloader.enqueueCacheRead(imageRequest, requestKey, imageRequest.isCachedRedirectAllowed());
            }
            return;
        }
    }

    private static void enqueueCacheRead(ImageRequest imageRequest, RequestKey requestKey, boolean bl) {
        ImageDownloader.enqueueRequest(imageRequest, requestKey, cacheReadQueue, new CacheReadWorkItem(imageRequest.getContext(), requestKey, bl));
    }

    private static void enqueueDownload(ImageRequest imageRequest, RequestKey requestKey) {
        ImageDownloader.enqueueRequest(imageRequest, requestKey, downloadQueue, new DownloadImageWorkItem(imageRequest.getContext(), requestKey));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void enqueueRequest(ImageRequest imageRequest, RequestKey requestKey, WorkQueue workQueue, Runnable runnable) {
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = new DownloaderContext();
            downloaderContext.request = imageRequest;
            pendingRequests.put(requestKey, downloaderContext);
            downloaderContext.workItem = workQueue.addActiveWorkItem(runnable);
            return;
        }
    }

    private static Handler getHandler() {
        synchronized (ImageDownloader.class) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            Handler handler = ImageDownloader.handler;
            return handler;
        }
    }

    private static void issueResponse(RequestKey object, Exception exception, Bitmap bitmap, boolean bl) {
        ImageRequest.Callback callback;
        if ((object = ImageDownloader.removePendingRequest((RequestKey)object)) != null && !object.isCancelled && (callback = (object = object.request).getCallback()) != null) {
            ImageDownloader.getHandler().post(new Runnable((ImageRequest)object, exception, bl, bitmap, callback){
                final /* synthetic */ Bitmap val$bitmap;
                final /* synthetic */ ImageRequest.Callback val$callback;
                final /* synthetic */ Exception val$error;
                final /* synthetic */ boolean val$isCachedRedirect;
                final /* synthetic */ ImageRequest val$request;

                @Override
                public void run() {
                    ImageResponse imageResponse = new ImageResponse(this.val$request, this.val$error, this.val$isCachedRedirect, this.val$bitmap);
                    this.val$callback.onCompleted(imageResponse);
                }
            });
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void prioritizeRequest(ImageRequest object) {
        Object object2 = new RequestKey(object.getImageUri(), object.getCallerTag());
        object = pendingRequests;
        synchronized (object) {
            object2 = pendingRequests.get(object2);
            if (object2 != null) {
                object2.workItem.moveToFront();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void readFromCache(RequestKey requestKey, Context object, boolean bl) {
        boolean bl2;
        InputStream inputStream;
        block6 : {
            InputStream inputStream2 = null;
            boolean bl3 = false;
            inputStream = inputStream2;
            bl2 = bl3;
            if (bl) {
                Uri uri = UrlRedirectCache.getRedirectedUri(requestKey.uri);
                inputStream = inputStream2;
                bl2 = bl3;
                if (uri != null) {
                    inputStream = ImageResponseCache.getCachedImageStream(uri, (Context)object);
                    bl2 = inputStream != null;
                }
                if (bl2) break block6;
            }
            inputStream = ImageResponseCache.getCachedImageStream(requestKey.uri, (Context)object);
        }
        if (inputStream != null) {
            object = BitmapFactory.decodeStream((InputStream)inputStream);
            Utility.closeQuietly(inputStream);
            ImageDownloader.issueResponse(requestKey, null, (Bitmap)object, bl2);
            return;
        } else {
            object = ImageDownloader.removePendingRequest(requestKey);
            if (object == null || object.isCancelled) return;
            {
                ImageDownloader.enqueueDownload(object.request, requestKey);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static DownloaderContext removePendingRequest(RequestKey object) {
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            return pendingRequests.remove(object);
        }
    }

    private static class CacheReadWorkItem
    implements Runnable {
        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;

        CacheReadWorkItem(Context context, RequestKey requestKey, boolean bl) {
            this.context = context;
            this.key = requestKey;
            this.allowCachedRedirects = bl;
        }

        @Override
        public void run() {
            ImageDownloader.readFromCache(this.key, this.context, this.allowCachedRedirects);
        }
    }

    private static class DownloadImageWorkItem
    implements Runnable {
        private Context context;
        private RequestKey key;

        DownloadImageWorkItem(Context context, RequestKey requestKey) {
            this.context = context;
            this.key = requestKey;
        }

        @Override
        public void run() {
            ImageDownloader.download(this.key, this.context);
        }
    }

    private static class DownloaderContext {
        boolean isCancelled;
        ImageRequest request;
        WorkQueue.WorkItem workItem;

        private DownloaderContext() {
        }
    }

    private static class RequestKey {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        Uri uri;

        RequestKey(Uri uri, Object object) {
            this.uri = uri;
            this.tag = object;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (object == null) return bl2;
            bl2 = bl;
            if (!(object instanceof RequestKey)) return bl2;
            object = (RequestKey)object;
            if (object.uri != this.uri) return false;
            if (object.tag != this.tag) return false;
            return true;
        }

        public int hashCode() {
            return (this.uri.hashCode() + 1073) * 37 + this.tag.hashCode();
        }
    }

}

