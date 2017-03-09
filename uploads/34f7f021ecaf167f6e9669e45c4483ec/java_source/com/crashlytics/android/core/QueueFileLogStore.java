/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.common.QueueFile
 *  io.fabric.sdk.android.services.common.QueueFile$ElementReader
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.ByteString;
import com.crashlytics.android.core.FileLogStore;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.QueueFile;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

class QueueFileLogStore
implements FileLogStore {
    private QueueFile logFile;
    private final int maxLogSize;
    private final File workingFile;

    public QueueFileLogStore(File file, int n2) {
        this.workingFile = file;
        this.maxLogSize = n2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void doWriteToLog(long l2, String arrby) {
        if (this.logFile == null) return;
        {
            Object object = arrby;
            if (arrby == null) {
                object = "null";
            }
            try {
                int n2 = this.maxLogSize / 4;
                arrby = object;
                if (object.length() > n2) {
                    arrby = "..." + object.substring(object.length() - n2);
                }
                arrby = arrby.replaceAll("\r", " ").replaceAll("\n", " ");
                arrby = String.format(Locale.US, "%d %s%n", l2, arrby).getBytes("UTF-8");
                this.logFile.add(arrby);
                while (!this.logFile.isEmpty() && this.logFile.usedBytes() > this.maxLogSize) {
                    this.logFile.remove();
                }
                return;
            }
            catch (IOException var3_3) {
                Fabric.getLogger().e("CrashlyticsCore", "There was a problem writing to the Crashlytics log.", (Throwable)var3_3);
                return;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void openLogFile() {
        if (this.logFile != null) return;
        try {
            this.logFile = new QueueFile(this.workingFile);
            return;
        }
        catch (IOException var1_1) {
            Fabric.getLogger().e("CrashlyticsCore", "Could not open log file: " + this.workingFile, (Throwable)var1_1);
            return;
        }
    }

    @Override
    public void closeLogFile() {
        CommonUtils.closeOrLog((Closeable)this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    @Override
    public void deleteLogFile() {
        this.closeLogFile();
        this.workingFile.delete();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public ByteString getLogAsByteString() {
        if (!this.workingFile.exists()) {
            return null;
        }
        this.openLogFile();
        if (this.logFile == null) return null;
        final int[] arrn = new int[]{0};
        final byte[] arrby = new byte[this.logFile.usedBytes()];
        try {
            this.logFile.forEach(new QueueFile.ElementReader(){

                public void read(InputStream inputStream, int n2) throws IOException {
                    int[] arrn2;
                    try {
                        inputStream.read(arrby, arrn[0], n2);
                        arrn2 = arrn;
                    }
                    catch (Throwable var3_4) {
                        inputStream.close();
                        throw var3_4;
                    }
                    arrn2[0] = arrn2[0] + n2;
                    inputStream.close();
                }
            });
        }
        catch (IOException var3_3) {
            Fabric.getLogger().e("CrashlyticsCore", "A problem occurred while reading the Crashlytics log file.", (Throwable)var3_3);
            return ByteString.copyFrom(arrby, 0, arrn[0]);
        }
        return ByteString.copyFrom(arrby, 0, arrn[0]);
    }

    @Override
    public void writeToLog(long l2, String string2) {
        this.openLogFile();
        this.doWriteToLog(l2, string2);
    }

}

