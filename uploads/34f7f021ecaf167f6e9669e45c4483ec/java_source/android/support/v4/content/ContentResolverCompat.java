/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.ContentResolverCompatJellybean;
import android.support.v4.os.CancellationSignal;
import android.support.v4.os.OperationCanceledException;

public final class ContentResolverCompat {
    private static final ContentResolverCompatImpl IMPL = Build.VERSION.SDK_INT >= 16 ? new ContentResolverCompatImplJB() : new ContentResolverCompatImplBase();

    private ContentResolverCompat() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] arrstring, String string2, String[] arrstring2, String string3, CancellationSignal cancellationSignal) {
        return IMPL.query(contentResolver, uri, arrstring, string2, arrstring2, string3, cancellationSignal);
    }

    static interface ContentResolverCompatImpl {
        public Cursor query(ContentResolver var1, Uri var2, String[] var3, String var4, String[] var5, String var6, CancellationSignal var7);
    }

    static class ContentResolverCompatImplBase
    implements ContentResolverCompatImpl {
        ContentResolverCompatImplBase() {
        }

        @Override
        public Cursor query(ContentResolver contentResolver, Uri uri, String[] arrstring, String string2, String[] arrstring2, String string3, CancellationSignal cancellationSignal) {
            if (cancellationSignal != null) {
                cancellationSignal.throwIfCanceled();
            }
            return contentResolver.query(uri, arrstring, string2, arrstring2, string3);
        }
    }

    static class ContentResolverCompatImplJB
    extends ContentResolverCompatImplBase {
        ContentResolverCompatImplJB() {
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        @Override
        public Cursor query(ContentResolver contentResolver, Uri uri, String[] arrstring, String string2, String[] arrstring2, String string3, CancellationSignal object) {
            if (object == null) ** GOTO lbl5
            try {
                object = object.getCancellationSignalObject();
                return ContentResolverCompatJellybean.query(contentResolver, uri, arrstring, string2, arrstring2, string3, object);
lbl5: // 1 sources:
                object = null;
                return ContentResolverCompatJellybean.query(contentResolver, uri, arrstring, string2, arrstring2, string3, object);
            }
            catch (Exception exception) {
                if (ContentResolverCompatJellybean.isFrameworkOperationCanceledException(exception) == false) throw exception;
                throw new OperationCanceledException();
            }
        }
    }

}

