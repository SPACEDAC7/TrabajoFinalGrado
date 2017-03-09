/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.util.Log
 *  android.webkit.MimeTypeMap
 */
package android.support.v4.provider;

import android.net.Uri;
import android.support.v4.provider.DocumentFile;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

class RawDocumentFile
extends DocumentFile {
    private File mFile;

    RawDocumentFile(DocumentFile documentFile, File file) {
        super(documentFile);
        this.mFile = file;
    }

    private static boolean deleteContents(File arrfile) {
        arrfile = arrfile.listFiles();
        boolean bl = true;
        boolean bl2 = true;
        if (arrfile != null) {
            int n2 = arrfile.length;
            int n3 = 0;
            do {
                bl = bl2;
                if (n3 >= n2) break;
                File file = arrfile[n3];
                bl = bl2;
                if (file.isDirectory()) {
                    bl = bl2 & RawDocumentFile.deleteContents(file);
                }
                bl2 = bl;
                if (!file.delete()) {
                    Log.w((String)"DocumentFile", (String)("Failed to delete " + file));
                    bl2 = false;
                }
                ++n3;
            } while (true);
        }
        return bl;
    }

    private static String getTypeForName(String string2) {
        int n2 = string2.lastIndexOf(46);
        if (n2 >= 0) {
            string2 = string2.substring(n2 + 1).toLowerCase();
            string2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(string2);
            if (string2 != null) {
                return string2;
            }
        }
        return "application/octet-stream";
    }

    @Override
    public boolean canRead() {
        return this.mFile.canRead();
    }

    @Override
    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    @Override
    public DocumentFile createDirectory(String object) {
        if ((object = new File(this.mFile, (String)object)).isDirectory() || object.mkdir()) {
            return new RawDocumentFile(this, (File)object);
        }
        return null;
    }

    @Override
    public DocumentFile createFile(String object, String string2) {
        String string3 = MimeTypeMap.getSingleton().getExtensionFromMimeType((String)object);
        object = string2;
        if (string3 != null) {
            object = string2 + "." + string3;
        }
        object = new File(this.mFile, (String)object);
        try {
            object.createNewFile();
            object = new RawDocumentFile(this, (File)object);
            return object;
        }
        catch (IOException var1_2) {
            Log.w((String)"DocumentFile", (String)("Failed to createFile: " + var1_2));
            return null;
        }
    }

    @Override
    public boolean delete() {
        RawDocumentFile.deleteContents(this.mFile);
        return this.mFile.delete();
    }

    @Override
    public boolean exists() {
        return this.mFile.exists();
    }

    @Override
    public String getName() {
        return this.mFile.getName();
    }

    @Override
    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return RawDocumentFile.getTypeForName(this.mFile.getName());
    }

    @Override
    public Uri getUri() {
        return Uri.fromFile((File)this.mFile);
    }

    @Override
    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    @Override
    public boolean isFile() {
        return this.mFile.isFile();
    }

    @Override
    public long lastModified() {
        return this.mFile.lastModified();
    }

    @Override
    public long length() {
        return this.mFile.length();
    }

    @Override
    public DocumentFile[] listFiles() {
        ArrayList<RawDocumentFile> arrayList = new ArrayList<RawDocumentFile>();
        File[] arrfile = this.mFile.listFiles();
        if (arrfile != null) {
            int n2 = arrfile.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                arrayList.add(new RawDocumentFile(this, arrfile[i2]));
            }
        }
        return arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override
    public boolean renameTo(String object) {
        object = new File(this.mFile.getParentFile(), (String)object);
        if (this.mFile.renameTo((File)object)) {
            this.mFile = object;
            return true;
        }
        return false;
    }
}

