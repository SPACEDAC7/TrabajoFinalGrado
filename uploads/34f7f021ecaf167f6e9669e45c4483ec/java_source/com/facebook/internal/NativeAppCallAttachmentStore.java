/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$CompressFormat
 *  android.net.Uri
 *  android.util.Log
 *  com.facebook.internal.NativeAppCallAttachmentStore$1
 *  com.facebook.internal.NativeAppCallAttachmentStore$Attachment
 */
package com.facebook.internal;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;

/*
 * Exception performing whole class analysis ignored.
 */
public final class NativeAppCallAttachmentStore {
    static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    private static final String TAG = NativeAppCallAttachmentStore.class.getName();
    private static File attachmentsDirectory;

    static {
    }

    private NativeAppCallAttachmentStore() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void addAttachments(Collection<Attachment> object) {
        Object object2;
        if (object == null || object.size() == 0) return;
        if (attachmentsDirectory == null) {
            NativeAppCallAttachmentStore.cleanupAllAttachments();
        }
        NativeAppCallAttachmentStore.ensureAttachmentsDirectoryExists();
        Object object3 = new ArrayList();
        try {
            object = object.iterator();
            while (object.hasNext()) {
                object2 = (Attachment)object.next();
                if (!Attachment.access$100((Attachment)object2)) continue;
                File file = NativeAppCallAttachmentStore.getAttachmentFile(Attachment.access$200((Attachment)object2), Attachment.access$300((Attachment)object2), true);
                object3.add(file);
                if (Attachment.access$400((Attachment)object2) != null) {
                    NativeAppCallAttachmentStore.processAttachmentBitmap(Attachment.access$400((Attachment)object2), file);
                    continue;
                }
                if (Attachment.access$500((Attachment)object2) == null) continue;
                NativeAppCallAttachmentStore.processAttachmentFile(Attachment.access$500((Attachment)object2), Attachment.access$600((Attachment)object2), file);
            }
            return;
        }
        catch (IOException var0_1) {
            Log.e((String)TAG, (String)("Got unexpected exception:" + var0_1));
            object3 = object3.iterator();
            while (object3.hasNext()) {
                object2 = (File)object3.next();
                try {
                    object2.delete();
                }
                catch (Exception var2_4) {}
            }
        }
        throw new FacebookException(var0_1);
    }

    public static void cleanupAllAttachments() {
        Utility.deleteDirectory(NativeAppCallAttachmentStore.getAttachmentsDirectory());
    }

    public static void cleanupAttachmentsForCall(UUID comparable) {
        if ((comparable = NativeAppCallAttachmentStore.getAttachmentsDirectoryForCall(comparable, false)) != null) {
            Utility.deleteDirectory((File)comparable);
        }
    }

    public static Attachment createAttachment(UUID uUID, Bitmap bitmap) {
        Validate.notNull(uUID, "callId");
        Validate.notNull((Object)bitmap, "attachmentBitmap");
        return new Attachment(uUID, bitmap, null, null);
    }

    public static Attachment createAttachment(UUID uUID, Uri uri) {
        Validate.notNull(uUID, "callId");
        Validate.notNull((Object)uri, "attachmentUri");
        return new Attachment(uUID, null, uri, null);
    }

    static File ensureAttachmentsDirectoryExists() {
        File file = NativeAppCallAttachmentStore.getAttachmentsDirectory();
        file.mkdirs();
        return file;
    }

    static File getAttachmentFile(UUID comparable, String string2, boolean bl) throws IOException {
        if ((comparable = NativeAppCallAttachmentStore.getAttachmentsDirectoryForCall(comparable, bl)) == null) {
            return null;
        }
        try {
            comparable = new File((File)comparable, URLEncoder.encode(string2, "UTF-8"));
            return comparable;
        }
        catch (UnsupportedEncodingException var0_1) {
            return null;
        }
    }

    static File getAttachmentsDirectory() {
        synchronized (NativeAppCallAttachmentStore.class) {
            if (attachmentsDirectory == null) {
                attachmentsDirectory = new File(FacebookSdk.getApplicationContext().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
            }
            File file = attachmentsDirectory;
            return file;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static File getAttachmentsDirectoryForCall(UUID uUID, boolean bl) {
        File file;
        void var0_2;
        void var1_5;
        if (attachmentsDirectory == null) {
            return var0_2;
        }
        File file2 = file = new File(attachmentsDirectory, uUID.toString());
        if (var1_5 == false) return var0_2;
        File file3 = file;
        if (file.exists()) return var0_2;
        file.mkdirs();
        return file;
    }

    public static File openAttachment(UUID comparable, String string2) throws FileNotFoundException {
        if (Utility.isNullOrEmpty(string2) || comparable == null) {
            throw new FileNotFoundException();
        }
        try {
            comparable = NativeAppCallAttachmentStore.getAttachmentFile(comparable, string2, false);
            return comparable;
        }
        catch (IOException var0_1) {
            throw new FileNotFoundException();
        }
    }

    private static void processAttachmentBitmap(Bitmap bitmap, File object) throws IOException {
        object = new FileOutputStream((File)object);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, (OutputStream)object);
            return;
        }
        finally {
            Utility.closeQuietly((Closeable)object);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void processAttachmentFile(Uri var0, boolean var1_2, File var2_3) throws IOException {
        var2_3 = new FileOutputStream((File)var2_3);
        if (var1_2) ** GOTO lbl6
        try {
            var0 = new FileInputStream(var0.getPath());
            ** GOTO lbl7
lbl6: // 1 sources:
            var0 = FacebookSdk.getApplicationContext().getContentResolver().openInputStream((Uri)var0);
lbl7: // 2 sources:
            Utility.copyAndCloseInputStream((InputStream)var0, (OutputStream)var2_3);
            return;
        }
        finally {
            Utility.closeQuietly((Closeable)var2_3);
        }
    }
}

