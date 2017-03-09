/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.database.Cursor
 *  android.net.Uri
 *  android.provider.DocumentsContract
 *  android.util.Log
 */
package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

class DocumentsContractApi21 {
    private static final String TAG = "DocumentFile";

    DocumentsContractApi21() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void closeQuietly(AutoCloseable autoCloseable) {
        if (autoCloseable == null) return;
        try {
            autoCloseable.close();
            return;
        }
        catch (RuntimeException var0_1) {
            throw var0_1;
        }
        catch (Exception var0_2) {
            return;
        }
    }

    public static Uri createDirectory(Context context, Uri uri, String string2) {
        return DocumentsContractApi21.createFile(context, uri, "vnd.android.document/directory", string2);
    }

    public static Uri createFile(Context context, Uri uri, String string2, String string3) {
        return DocumentsContract.createDocument((ContentResolver)context.getContentResolver(), (Uri)uri, (String)string2, (String)string3);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Uri[] listFiles(Context context, Uri uri) {
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri2 = DocumentsContract.buildChildDocumentsUriUsingTree((Uri)uri, (String)DocumentsContract.getDocumentId((Uri)uri));
        ArrayList<Uri> arrayList = new ArrayList<Uri>();
        Context context2 = null;
        context = null;
        try {
            try {
                contentResolver = contentResolver.query(uri2, new String[]{"document_id"}, null, null, null);
                do {
                    context = contentResolver;
                    context2 = contentResolver;
                    if (contentResolver.moveToNext()) {
                        context = contentResolver;
                        context2 = contentResolver;
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree((Uri)uri, (String)contentResolver.getString(0)));
                        continue;
                    }
                    break;
                } while (true);
            }
            catch (Exception var1_3) {
                context2 = context;
                Log.w((String)"DocumentFile", (String)("Failed query: " + var1_3));
                DocumentsContractApi21.closeQuietly((AutoCloseable)context);
                return arrayList.toArray((T[])new Uri[arrayList.size()]);
            }
        }
        catch (Throwable var0_1) {
            DocumentsContractApi21.closeQuietly((AutoCloseable)context2);
            throw var0_1;
        }
        DocumentsContractApi21.closeQuietly((AutoCloseable)contentResolver);
        return arrayList.toArray((T[])new Uri[arrayList.size()]);
    }

    public static Uri prepareTreeUri(Uri uri) {
        return DocumentsContract.buildDocumentUriUsingTree((Uri)uri, (String)DocumentsContract.getTreeDocumentId((Uri)uri));
    }

    public static Uri renameTo(Context context, Uri uri, String string2) {
        return DocumentsContract.renameDocument((ContentResolver)context.getContentResolver(), (Uri)uri, (String)string2);
    }
}

