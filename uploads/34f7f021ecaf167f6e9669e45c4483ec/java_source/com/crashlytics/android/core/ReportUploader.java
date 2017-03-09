/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  io.fabric.sdk.android.Logger
 *  io.fabric.sdk.android.services.common.BackgroundPriorityRunnable
 */
package com.crashlytics.android.core;

import android.content.Context;
import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.CreateReportRequest;
import com.crashlytics.android.core.CreateReportSpiCall;
import com.crashlytics.android.core.Report;
import com.crashlytics.android.core.SessionReport;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.BackgroundPriorityRunnable;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

class ReportUploader {
    private static final String CLS_FILE_EXT = ".cls";
    static final Map<String, String> HEADER_INVALID_CLS_FILE;
    private static final short[] RETRY_INTERVALS;
    private static final FilenameFilter crashFileFilter;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private Thread uploadThread;

    static {
        crashFileFilter = new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                if (string2.endsWith(".cls") && !string2.contains("Session")) {
                    return true;
                }
                return false;
            }
        };
        HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
        RETRY_INTERVALS = new short[]{10, 20, 30, 60, 120, 300};
    }

    public ReportUploader(CreateReportSpiCall createReportSpiCall) {
        if (createReportSpiCall == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.createReportCall = createReportSpiCall;
    }

    static /* synthetic */ short[] access$100() {
        return RETRY_INTERVALS;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    List<Report> findReports() {
        File[] arrfile;
        Fabric.getLogger().d("CrashlyticsCore", "Checking for crash reports...");
        LinkedList<Report> linkedList = this.fileAccessLock;
        synchronized (linkedList) {
            arrfile = CrashlyticsCore.getInstance().getSdkDirectory().listFiles(crashFileFilter);
        }
        linkedList = new LinkedList<Report>();
        for (File file : arrfile) {
            Fabric.getLogger().d("CrashlyticsCore", "Found crash report " + file.getPath());
            linkedList.add(new SessionReport(file));
        }
        if (linkedList.isEmpty()) {
            Fabric.getLogger().d("CrashlyticsCore", "No reports found.");
        }
        return linkedList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean forceUpload(Report report) {
        boolean bl = false;
        Object object = this.fileAccessLock;
        synchronized (object) {
            try {
                Object object2 = CrashlyticsCore.getInstance().getContext();
                object2 = new CreateReportRequest(new ApiKey().getValue((Context)object2), report);
                boolean bl2 = this.createReportCall.invoke((CreateReportRequest)object2);
                Logger logger = Fabric.getLogger();
                StringBuilder stringBuilder = new StringBuilder().append("Crashlytics report upload ");
                object2 = bl2 ? "complete: " : "FAILED: ";
                logger.i("CrashlyticsCore", stringBuilder.append((String)object2).append(report.getFileName()).toString());
                boolean bl3 = bl;
                if (!bl2) return bl3;
                report.remove();
                return true;
            }
            catch (Exception var5_5) {
                Fabric.getLogger().e("CrashlyticsCore", "Error occurred sending report " + report, (Throwable)var5_5);
                return bl;
            }
        }
    }

    boolean isUploading() {
        if (this.uploadThread != null) {
            return true;
        }
        return false;
    }

    public void uploadReports() {
        this.uploadReports(0.0f);
    }

    public void uploadReports(float f2) {
        synchronized (this) {
            if (this.uploadThread == null) {
                this.uploadThread = new Thread((Runnable)((Object)new Worker(f2)), "Crashlytics Report Uploader");
                this.uploadThread.start();
            }
            return;
        }
    }

    private class Worker
    extends BackgroundPriorityRunnable {
        private final float delay;

        Worker(float f2) {
            this.delay = f2;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        private void attemptUploadWithRetry() {
            Fabric.getLogger().d("CrashlyticsCore", "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                Thread.sleep((long)(this.delay * 1000.0f));
            }
            var5_1 = CrashlyticsCore.getInstance();
            var6_6 = var5_1.getHandler();
            var4_7 = ReportUploader.this.findReports();
            if (var6_6.isHandlingException()) {
                return;
            }
            ** GOTO lbl14
            catch (InterruptedException var4_8) {
                Thread.currentThread().interrupt();
                return;
            }
lbl14: // 1 sources:
            if (!var4_7.isEmpty() && !var5_1.canSendWithUserApproval()) {
                Fabric.getLogger().d("CrashlyticsCore", "User declined to send. Removing " + var4_7.size() + " Report(s).");
                var4_7 = var4_7.iterator();
                while (var4_7.hasNext() != false) {
                    ((Report)var4_7.next()).remove();
                }
                return;
            }
            var1_10 = 0;
            while (var4_7.isEmpty() == false) {
                if (CrashlyticsCore.getInstance().getHandler().isHandlingException() != false) return;
                Fabric.getLogger().d("CrashlyticsCore", "Attempting to send " + var4_7.size() + " report(s)");
                for (Report var5_4 : var4_7) {
                    ReportUploader.this.forceUpload(var5_4);
                }
                var4_7 = var5_5 = ReportUploader.this.findReports();
                if (var5_5.isEmpty()) continue;
                var2_11 = ReportUploader.access$100()[Math.min(var1_10, ReportUploader.access$100().length - 1)];
                Fabric.getLogger().d("CrashlyticsCore", "Report submisson: scheduling delayed retry in " + var2_11 + " seconds");
                try {
                    Thread.sleep(1000 * var2_11);
                    ++var1_10;
                    var4_7 = var5_5;
                    continue;
                }
                catch (InterruptedException var4_9) {
                    ** break block10
                }
            }
            return;
lbl-1000: // 1 sources:
            {
                
                Thread.currentThread().interrupt();
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void onRun() {
            try {
                this.attemptUploadWithRetry();
            }
            catch (Exception var1_1) {
                Fabric.getLogger().e("CrashlyticsCore", "An unexpected error occurred while attempting to upload crash reports.", (Throwable)var1_1);
            }
            ReportUploader.this.uploadThread = null;
        }
    }

}

