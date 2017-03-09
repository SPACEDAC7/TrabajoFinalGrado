/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Environment
 */
package com.buzzfeed.toolkit.doorbell;

import android.os.Environment;
import com.buzzfeed.toolkit.doorbell.PoundStorage;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;

class FileStorage
implements PoundStorage {
    private static final String FILE_DIR = "buzzfeed_pound";
    private String mFileName;

    public FileStorage(String string2) {
        this.mFileName = string2 + ".txt";
    }

    private static String convertStreamToString(InputStream closeable) throws Exception {
        String string2;
        closeable = new BufferedReader(new InputStreamReader((InputStream)closeable));
        StringBuilder stringBuilder = new StringBuilder();
        while ((string2 = closeable.readLine()) != null) {
            stringBuilder.append(string2);
        }
        closeable.close();
        return stringBuilder.toString();
    }

    private File getStorageFile() {
        File file = new File(Environment.getExternalStorageDirectory(), "buzzfeed_pound");
        if (!file.exists() && !file.mkdir()) {
            return null;
        }
        return new File(Environment.getExternalStorageDirectory(), "buzzfeed_pound" + File.separator + this.mFileName);
    }

    private static String getStringFromFile(File object) throws Exception {
        object = new FileInputStream((File)object);
        String string2 = FileStorage.convertStreamToString((InputStream)object);
        object.close();
        return string2;
    }

    private static boolean isExternalStorageWritable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    @Override
    public String getText() {
        block4 : {
            Object object;
            block5 : {
                object = this.getStorageFile();
                if (object == null) break block4;
                if (!object.exists()) break block4;
                if (object.canWrite()) break block5;
                return null;
            }
            try {
                object = FileStorage.getStringFromFile((File)object);
                return object;
            }
            catch (Exception var1_2) {
                // empty catch block
            }
        }
        return null;
    }

    @Override
    public boolean isAvailable() {
        return FileStorage.isExternalStorageWritable();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void saveText(String string2) {
        Object object;
        try {
            object = this.getStorageFile();
            if (object == null) return;
        }
        catch (Exception var1_2) {
            return;
        }
        object = new OutputStreamWriter(new FileOutputStream((File)object));
        object.write(string2);
        object.flush();
        object.close();
    }
}

