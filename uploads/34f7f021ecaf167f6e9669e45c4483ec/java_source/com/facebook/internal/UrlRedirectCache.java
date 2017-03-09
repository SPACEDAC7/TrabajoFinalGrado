/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;

class UrlRedirectCache {
    private static final String REDIRECT_CONTENT_TAG;
    static final String TAG;
    private static volatile FileLruCache urlRedirectCache;

    static {
        TAG = UrlRedirectCache.class.getSimpleName();
        REDIRECT_CONTENT_TAG = TAG + "_Redirect";
    }

    UrlRedirectCache() {
    }

    static void cacheUriRedirect(Uri object, Uri uri) {
        if (object == null || uri == null) {
            return;
        }
        Object object2 = null;
        Object object3 = null;
        object3 = object = UrlRedirectCache.getCache().openPutStream(object.toString(), REDIRECT_CONTENT_TAG);
        object2 = object;
        try {
            object.write(uri.toString().getBytes());
        }
        catch (IOException var0_1) {
            Utility.closeQuietly((Closeable)object3);
            return;
        }
        catch (Throwable var0_2) {
            Utility.closeQuietly((Closeable)object2);
            throw var0_2;
        }
        Utility.closeQuietly((Closeable)object);
        return;
    }

    static void clearCache() {
        try {
            UrlRedirectCache.getCache().clearCache();
            return;
        }
        catch (IOException var0) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + var0.getMessage());
            return;
        }
    }

    static FileLruCache getCache() throws IOException {
        synchronized (UrlRedirectCache.class) {
            if (urlRedirectCache == null) {
                urlRedirectCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            FileLruCache fileLruCache = urlRedirectCache;
            return fileLruCache;
        }
    }

    /*
     * Exception decompiling
     */
    static Uri getRedirectedUri(Uri var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 13[SIMPLE_IF_TAKEN]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
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
}

