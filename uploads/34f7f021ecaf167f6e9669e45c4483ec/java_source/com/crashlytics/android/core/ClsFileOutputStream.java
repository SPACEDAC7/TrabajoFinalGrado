/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

class ClsFileOutputStream
extends FileOutputStream {
    public static final String IN_PROGRESS_SESSION_FILE_EXTENSION = ".cls_temp";
    public static final String SESSION_FILE_EXTENSION = ".cls";
    public static final FilenameFilter TEMP_FILENAME_FILTER = new FilenameFilter(){

        @Override
        public boolean accept(File file, String string2) {
            return string2.endsWith(".cls_temp");
        }
    };
    private boolean closed = false;
    private File complete;
    private File inProgress;
    private final String root;

    public ClsFileOutputStream(File file, String string2) throws FileNotFoundException {
        super(new File(file, string2 + ".cls_temp"));
        this.root = file + File.separator + string2;
        this.inProgress = new File(this.root + ".cls_temp");
    }

    public ClsFileOutputStream(String string2, String string3) throws FileNotFoundException {
        this(new File(string2), string3);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void close() throws IOException {
        // MONITORENTER : this
        boolean bl = this.closed;
        if (bl) {
            // MONITOREXIT : this
            return;
        }
        this.closed = true;
        super.flush();
        super.close();
        File file = new File(this.root + ".cls");
        if (this.inProgress.renameTo(file)) {
            this.inProgress = null;
            this.complete = file;
            return;
        }
        String string2 = "";
        if (file.exists()) {
            string2 = " (target already exists)";
            throw new IOException("Could not rename temp file: " + this.inProgress + " -> " + file + string2);
        }
        if (this.inProgress.exists()) throw new IOException("Could not rename temp file: " + this.inProgress + " -> " + file + string2);
        string2 = " (source does not exist)";
        throw new IOException("Could not rename temp file: " + this.inProgress + " -> " + file + string2);
    }

    public void closeInProgressStream() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        super.flush();
        super.close();
    }

    public File getCompleteFile() {
        return this.complete;
    }

    public File getInProgressFile() {
        return this.inProgress;
    }

}

