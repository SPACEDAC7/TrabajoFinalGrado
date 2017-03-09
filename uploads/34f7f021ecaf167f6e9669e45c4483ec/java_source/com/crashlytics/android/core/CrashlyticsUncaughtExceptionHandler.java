/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActivityManager
 *  android.app.ActivityManager$RunningAppProcessInfo
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Environment
 *  android.os.StatFs
 *  io.fabric.sdk.android.services.common.DeliveryMechanism
 *  io.fabric.sdk.android.services.common.IdManager$DeviceIdentifierType
 *  io.fabric.sdk.android.services.persistence.FileStore
 *  io.fabric.sdk.android.services.settings.SessionSettingsData
 *  io.fabric.sdk.android.services.settings.Settings
 *  io.fabric.sdk.android.services.settings.SettingsData
 */
package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.crashlytics.android.core.CLSUUID;
import com.crashlytics.android.core.ClsFileOutputStream;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsExecutorServiceWrapper;
import com.crashlytics.android.core.CreateReportSpiCall;
import com.crashlytics.android.core.DevicePowerStateListener;
import com.crashlytics.android.core.ExceptionUtils;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.MetaDataStore;
import com.crashlytics.android.core.NativeCrashWriter;
import com.crashlytics.android.core.Report;
import com.crashlytics.android.core.ReportUploader;
import com.crashlytics.android.core.SessionProtobufHelper;
import com.crashlytics.android.core.SessionReport;
import com.crashlytics.android.core.UnityVersionProvider;
import com.crashlytics.android.core.UserMetaData;
import com.crashlytics.android.core.Utils;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class CrashlyticsUncaughtExceptionHandler
implements Thread.UncaughtExceptionHandler {
    private static final int ANALYZER_VERSION = 1;
    static final FilenameFilter ANY_SESSION_FILENAME_FILTER;
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    private static final String[] INITIAL_SESSION_PART_TAGS;
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    static final Comparator<File> LARGEST_FILE_NAME_FIRST;
    private static final int MAX_COMPLETE_SESSIONS_COUNT = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER;
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    static final FilenameFilter SESSION_FILE_FILTER;
    private static final Pattern SESSION_FILE_PATTERN;
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_USER_TAG = "SessionUser";
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST;
    private final CrashlyticsCore crashlyticsCore;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final DevicePowerStateListener devicePowerStateListener;
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private final FileStore fileStore;
    private final io.fabric.sdk.android.services.common.IdManager idManager;
    private final AtomicBoolean isHandlingException;
    private final LogFileManager logFileManager;
    private final String unityVersion;

    static {
        SESSION_FILE_FILTER = new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                if (string2.length() == ".cls".length() + 35 && string2.endsWith(".cls")) {
                    return true;
                }
                return false;
            }
        };
        LARGEST_FILE_NAME_FIRST = new Comparator<File>(){

            @Override
            public int compare(File file, File file2) {
                return file2.getName().compareTo(file.getName());
            }
        };
        SMALLEST_FILE_NAME_FIRST = new Comparator<File>(){

            @Override
            public int compare(File file, File file2) {
                return file.getName().compareTo(file2.getName());
            }
        };
        ANY_SESSION_FILENAME_FILTER = new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                return SESSION_FILE_PATTERN.matcher(string2).matches();
            }
        };
        SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
        SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
        INITIAL_SESSION_PART_TAGS = new String[]{"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};
    }

    CrashlyticsUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, CrashlyticsExecutorServiceWrapper crashlyticsExecutorServiceWrapper, io.fabric.sdk.android.services.common.IdManager idManager, UnityVersionProvider unityVersionProvider, FileStore fileStore, CrashlyticsCore crashlyticsCore) {
        this.defaultHandler = uncaughtExceptionHandler;
        this.executorServiceWrapper = crashlyticsExecutorServiceWrapper;
        this.idManager = idManager;
        this.crashlyticsCore = crashlyticsCore;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.fileStore = fileStore;
        this.isHandlingException = new AtomicBoolean(false);
        uncaughtExceptionHandler = crashlyticsCore.getContext();
        this.logFileManager = new LogFileManager((Context)uncaughtExceptionHandler, fileStore);
        this.devicePowerStateListener = new DevicePowerStateListener((Context)uncaughtExceptionHandler);
    }

    private void closeOpenSessions(File[] arrfile, int n2, int n3) {
        Fabric.getLogger().d("CrashlyticsCore", "Closing open sessions.");
        while (n2 < arrfile.length) {
            File file = arrfile[n2];
            String string2 = this.getSessionIdFromSessionFile(file);
            Fabric.getLogger().d("CrashlyticsCore", "Closing session: " + string2);
            this.writeSessionPartsToSessionFile(file, string2, n3);
            ++n2;
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream == null) {
            return;
        }
        try {
            clsFileOutputStream.closeInProgressStream();
            return;
        }
        catch (IOException var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Error closing session file stream in the presence of an exception", (Throwable)var1_2);
            return;
        }
    }

    private static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int n2) throws IOException {
        int n3;
        byte[] arrby = new byte[n2];
        for (n2 = 0; n2 < arrby.length && (n3 = inputStream.read(arrby, n2, arrby.length - n2)) >= 0; n2 += n3) {
        }
        codedOutputStream.writeRawBytes(arrby);
    }

    private void deleteLegacyInvalidCacheDir() {
        File file = new File(this.crashlyticsCore.getSdkDirectory(), "invalidClsFiles");
        if (!file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] arrfile = file.listFiles();
            int n2 = arrfile.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                arrfile[i2].delete();
            }
        }
        file.delete();
    }

    private void deleteSessionPartFilesFor(String arrfile) {
        arrfile = this.listSessionPartFilesFor((String)arrfile);
        int n2 = arrfile.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            arrfile[i2].delete();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doCloseSessions(boolean bl) throws Exception {
        int n2 = bl ? 1 : 0;
        this.trimOpenSessions(n2 + 8);
        File[] arrfile = this.listSortedSessionBeginFiles();
        if (arrfile.length <= n2) {
            Fabric.getLogger().d("CrashlyticsCore", "No open sessions to be closed.");
            return;
        }
        this.writeSessionUser(this.getSessionIdFromSessionFile(arrfile[n2]));
        CrashlyticsCore crashlyticsCore = this.crashlyticsCore;
        crashlyticsCore = CrashlyticsCore.getSessionSettingsData();
        if (crashlyticsCore == null) {
            Fabric.getLogger().d("CrashlyticsCore", "Unable to close session. Settings are not loaded.");
            return;
        }
        this.closeOpenSessions(arrfile, n2, crashlyticsCore.maxCustomExceptionEvents);
    }

    private void doOpenSession() throws Exception {
        Date date = new Date();
        String string2 = new CLSUUID(this.idManager).toString();
        Fabric.getLogger().d("CrashlyticsCore", "Opening an new session with ID " + string2);
        this.writeBeginSession(string2, date);
        this.writeSessionApp(string2);
        this.writeSessionOS(string2);
        this.writeSessionDevice(string2);
        this.logFileManager.setCurrentSession(string2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void doWriteNonFatal(Date var1_1, Thread var2_6, Throwable var3_7) {
        var12_11 = this.getCurrentSessionId();
        if (var12_11 == null) {
            Fabric.getLogger().e("CrashlyticsCore", "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        CrashlyticsCore.recordLoggedExceptionEvent(var12_11);
        var6_12 = null;
        var8_13 = null;
        var11_14 = null;
        var10_15 = null;
        var9_16 = null;
        var7_17 = null;
        var4_18 = var11_14;
        var5_19 = var6_12;
        Fabric.getLogger().d("CrashlyticsCore", "Crashlytics is logging non-fatal exception \"" + var3_7 + "\" from thread " + var2_6.getName());
        var4_18 = var11_14;
        var5_19 = var6_12;
        var13_20 = CommonUtils.padWithZerosToMaxIntWidth(this.eventCounter.getAndIncrement());
        var4_18 = var11_14;
        var5_19 = var6_12;
        var13_20 = var12_11 + "SessionEvent" + var13_20;
        var4_18 = var11_14;
        var5_19 = var6_12;
        var6_12 = new ClsFileOutputStream(this.getFilesDir(), var13_20);
        var4_18 = var10_15;
        var5_19 = var9_16;
        var4_18 = var7_17 = CodedOutputStream.newInstance((OutputStream)var6_12);
        var5_19 = var7_17;
        this.writeSessionEvent(var7_17, (Date)var1_1, (Thread)var2_6, var3_7, "error", false);
        CommonUtils.flushOrLog(var7_17, "Failed to flush to non-fatal file.");
        CommonUtils.closeOrLog((Closeable)var6_12, "Failed to close non-fatal file output stream.");
        ** GOTO lbl57
        catch (Exception var3_8) {
            var2_6 = var8_13;
            var1_1 = var7_17;
            ** GOTO lbl44
            catch (Throwable var1_5) {
                var5_19 = var6_12;
                ** GOTO lbl-1000
            }
            catch (Exception var3_10) {
                var2_6 = var6_12;
                var1_1 = var5_19;
            }
lbl44: // 2 sources:
            var4_18 = var1_1;
            var5_19 = var2_6;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", (Throwable)var3_9);
                var4_18 = var1_1;
                var5_19 = var2_6;
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var3_9, (OutputStream)var2_6);
            }
            catch (Throwable var1_3) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var4_18, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog((Closeable)var5_19, "Failed to close non-fatal file output stream.");
                throw var1_4;
            }
            CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush to non-fatal file.");
            CommonUtils.closeOrLog((Closeable)var2_6, "Failed to close non-fatal file output stream.");
lbl57: // 2 sources:
            try {
                this.trimSessionEventFiles(var12_11, 64);
                return;
            }
            catch (Exception var1_2) {
                Fabric.getLogger().e("CrashlyticsCore", "An error occurred when trimming non-fatal files.", (Throwable)var1_2);
                return;
            }
        }
    }

    private File[] ensureFileArrayNotNull(File[] arrfile) {
        File[] arrfile2 = arrfile;
        if (arrfile == null) {
            arrfile2 = new File[]{};
        }
        return arrfile2;
    }

    private String getCurrentSessionId() {
        File[] arrfile = this.listSortedSessionBeginFiles();
        if (arrfile.length > 0) {
            return this.getSessionIdFromSessionFile(arrfile[0]);
        }
        return null;
    }

    private File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    private String getPreviousSessionId() {
        File[] arrfile = this.listSortedSessionBeginFiles();
        if (arrfile.length > 1) {
            return this.getSessionIdFromSessionFile(arrfile[1]);
        }
        return null;
    }

    private String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    private File[] getTrimmedNonFatalFiles(String string2, File[] arrfile, int n2) {
        File[] arrfile2 = arrfile;
        if (arrfile.length > n2) {
            Fabric.getLogger().d("CrashlyticsCore", String.format(Locale.US, "Trimming down to %d logged exceptions.", n2));
            this.trimSessionEventFiles(string2, n2);
            arrfile2 = this.listFilesMatching(new FileNameContainsFilter(string2 + "SessionEvent"));
        }
        return arrfile2;
    }

    private UserMetaData getUserMetaData(String string2) {
        if (this.isHandlingException()) {
            return new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail());
        }
        return new MetaDataStore(this.getFilesDir()).readUserData(string2);
    }

    private void handleUncaughtException(Date date, Thread thread, Throwable throwable) throws Exception {
        this.crashlyticsCore.createCrashMarker();
        this.writeFatal(date, thread, throwable);
        this.doCloseSessions();
        this.doOpenSession();
        this.trimSessionFiles();
        if (!this.crashlyticsCore.shouldPromptUserBeforeSendingCrashReports()) {
            this.sendSessionReports();
        }
    }

    private File[] listCompleteSessionFiles() {
        return this.listFilesMatching(SESSION_FILE_FILTER);
    }

    private File[] listFilesMatching(FilenameFilter filenameFilter) {
        return this.ensureFileArrayNotNull(this.getFilesDir().listFiles(filenameFilter));
    }

    private File[] listSessionPartFilesFor(String string2) {
        return this.listFilesMatching(new SessionPartFileFilter(string2));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] arrfile = this.listSessionBeginFiles();
        Arrays.sort(arrfile, LARGEST_FILE_NAME_FIRST);
        return arrfile;
    }

    private void sendSessionReports() {
        for (File file : this.listCompleteSessionFiles()) {
            this.executorServiceWrapper.executeAsync(new SendSessionRunnable(this.crashlyticsCore, file));
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void synthesizeSessionFile(File var1_1, String var2_5, File[] var3_6, File var4_7) {
        var5_11 = var4_7 != null;
        var7_12 = null;
        var10_13 = null;
        var6_14 = null;
        var12_15 = null;
        var11_16 = null;
        var9_17 = null;
        var8_18 = new ClsFileOutputStream(this.getFilesDir(), var2_5);
        var6_14 = var12_15;
        var7_12 = var11_16;
        var6_14 = var9_17 = CodedOutputStream.newInstance(var8_18);
        var7_12 = var9_17;
        Fabric.getLogger().d("CrashlyticsCore", "Collecting SessionStart data for session ID " + var2_5);
        var6_14 = var9_17;
        var7_12 = var9_17;
        CrashlyticsUncaughtExceptionHandler.writeToCosFromFile(var9_17, (File)var1_1);
        var6_14 = var9_17;
        var7_12 = var9_17;
        var9_17.writeUInt64(4, new Date().getTime() / 1000);
        var6_14 = var9_17;
        var7_12 = var9_17;
        var9_17.writeBool(5, var5_11);
        var6_14 = var9_17;
        var7_12 = var9_17;
        this.writeInitialPartsTo(var9_17, var2_5);
        var6_14 = var9_17;
        var7_12 = var9_17;
        CrashlyticsUncaughtExceptionHandler.writeNonFatalEventsTo(var9_17, (File[])var3_6, var2_5);
        if (var5_11) {
            var6_14 = var9_17;
            var7_12 = var9_17;
            CrashlyticsUncaughtExceptionHandler.writeToCosFromFile(var9_17, var4_7);
        }
        var6_14 = var9_17;
        var7_12 = var9_17;
        var9_17.writeUInt32(11, 1);
        var6_14 = var9_17;
        var7_12 = var9_17;
        var9_17.writeEnum(12, 3);
        CommonUtils.flushOrLog(var9_17, "Error flushing session file stream");
        if (false) {
            this.closeWithoutRenamingOrLog(var8_18);
            return;
        }
        CommonUtils.closeOrLog(var8_18, "Failed to close CLS file");
        return;
        catch (Exception var4_8) {
            var3_6 = var10_13;
            var1_1 = var9_17;
            ** GOTO lbl57
            catch (Throwable var1_4) {
                var7_12 = var8_18;
                ** GOTO lbl-1000
            }
            catch (Exception var4_10) {
                var3_6 = var8_18;
                var1_1 = var7_12;
            }
lbl57: // 2 sources:
            var6_14 = var1_1;
            var7_12 = var3_6;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Failed to write session file for session ID: " + var2_5, (Throwable)var4_9);
                var6_14 = var1_1;
                var7_12 = var3_6;
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var4_9, (OutputStream)var3_6);
            }
            catch (Throwable var1_2) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var6_14, "Error flushing session file stream");
                if (false) {
                    this.closeWithoutRenamingOrLog((ClsFileOutputStream)var7_12);
                    throw var1_3;
                }
                CommonUtils.closeOrLog((Closeable)var7_12, "Failed to close CLS file");
                throw var1_3;
            }
            CommonUtils.flushOrLog((Flushable)var1_1, "Error flushing session file stream");
            if (true) {
                this.closeWithoutRenamingOrLog((ClsFileOutputStream)var3_6);
                return;
            }
            CommonUtils.closeOrLog((Closeable)var3_6, "Failed to close CLS file");
            return;
        }
    }

    private void trimOpenSessions(int n2) {
        HashSet<String> hashSet = new HashSet<String>();
        File[] arrfile = this.listSortedSessionBeginFiles();
        int n3 = Math.min(n2, arrfile.length);
        for (n2 = 0; n2 < n3; ++n2) {
            hashSet.add(this.getSessionIdFromSessionFile(arrfile[n2]));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        for (File file : this.listFilesMatching(new AnySessionPartFileFilter())) {
            String string2 = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(string2);
            matcher.matches();
            if (hashSet.contains(matcher.group(1))) continue;
            Fabric.getLogger().d("CrashlyticsCore", "Trimming open session file: " + string2);
            file.delete();
        }
    }

    private void trimSessionEventFiles(String string2, int n2) {
        Utils.capFileCount(this.getFilesDir(), new FileNameContainsFilter(string2 + "SessionEvent"), n2, SMALLEST_FILE_NAME_FIRST);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeBeginSession(String var1_1, Date var2_5) throws Exception {
        var4_6 = null;
        var7_7 = null;
        var3_8 = null;
        var9_10 = null;
        var8_11 = null;
        var6_12 = null;
        var5_13 = new ClsFileOutputStream(this.getFilesDir(), (String)var1_1 + "BeginSession");
        var3_8 = var9_10;
        var4_6 = var8_11;
        var3_8 = var6_12 = CodedOutputStream.newInstance((OutputStream)var5_13);
        var4_6 = var6_12;
        SessionProtobufHelper.writeBeginSession(var6_12, (String)var1_1, String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[]{this.crashlyticsCore.getVersion()}), var2_5.getTime() / 1000);
        CommonUtils.flushOrLog(var6_12, "Failed to flush to session begin file.");
        CommonUtils.closeOrLog((Closeable)var5_13, "Failed to close begin session file.");
        return;
        catch (Exception var5_14) {
            var2_5 = var7_7;
            var1_1 = var6_12;
            ** GOTO lbl29
            catch (Throwable var1_4) {
                var4_6 = var5_13;
                ** GOTO lbl-1000
            }
            catch (Exception var3_9) {
                var2_5 = var5_13;
                var1_1 = var4_6;
                var5_13 = var3_9;
            }
lbl29: // 2 sources:
            var3_8 = var1_1;
            var4_6 = var2_5;
            try {
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var5_13, (OutputStream)var2_5);
                var3_8 = var1_1;
                var4_6 = var2_5;
                throw var5_13;
            }
            catch (Throwable var1_2) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var3_8, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog((Closeable)var4_6, "Failed to close begin session file.");
                throw var1_3;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeExternalCrashEvent(SessionEventData var1_1) throws IOException {
        block8 : {
            var4_6 = null;
            var5_7 = null;
            var9_9 = null;
            var8_10 = null;
            var7_11 = null;
            var6_12 = null;
            var2_13 = var9_9;
            var3_14 = var4_6;
            var10_15 = this.getPreviousSessionId();
            if (var10_15 != null) break block8;
            var2_13 = var9_9;
            var3_14 = var4_6;
            Fabric.getLogger().e("CrashlyticsCore", "Tried to write a native crash while no session was open.", null);
            CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
            return;
        }
        var2_13 = var9_9;
        var3_14 = var4_6;
        CrashlyticsCore.recordFatalExceptionEvent(var10_15);
        var2_13 = var9_9;
        var3_14 = var4_6;
        var4_6 = new ClsFileOutputStream(this.getFilesDir(), var10_15 + "SessionCrash");
        var2_13 = var8_10;
        var3_14 = var7_11;
        var2_13 = var5_7 = CodedOutputStream.newInstance((OutputStream)var4_6);
        var3_14 = var5_7;
        var6_12 = new MetaDataStore(this.getFilesDir()).readKeyData(var10_15);
        var2_13 = var5_7;
        var3_14 = var5_7;
        NativeCrashWriter.writeNativeCrash((SessionEventData)var1_1, new LogFileManager(this.crashlyticsCore.getContext(), this.fileStore, var10_15), var6_12, (CodedOutputStream)var5_7);
        CommonUtils.flushOrLog((Flushable)var5_7, "Failed to flush to session begin file.");
        CommonUtils.closeOrLog((Closeable)var4_6, "Failed to close fatal exception file output stream.");
        return;
        catch (Exception var1_2) {
            var4_6 = var5_7;
            var5_7 = var1_2;
            var1_1 = var6_12;
            ** GOTO lbl48
            catch (Throwable var1_5) {
                var3_14 = var4_6;
                ** GOTO lbl-1000
            }
            catch (Exception var5_8) {
                var1_1 = var3_14;
            }
lbl48: // 2 sources:
            var2_13 = var1_1;
            var3_14 = var4_6;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "An error occurred in the native crash logger", (Throwable)var5_7);
                var2_13 = var1_1;
                var3_14 = var4_6;
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var5_7, (OutputStream)var4_6);
            }
            catch (Throwable var1_3) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var2_13, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog((Closeable)var3_14, "Failed to close fatal exception file output stream.");
                throw var1_4;
            }
            CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog((Closeable)var4_6, "Failed to close fatal exception file output stream.");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeFatal(Date var1_1, Thread var2_5, Throwable var3_6) {
        block8 : {
            var6_10 = null;
            var8_11 = null;
            var11_12 = null;
            var10_13 = null;
            var9_14 = null;
            var7_15 = null;
            var4_16 = var11_12;
            var5_17 = var6_10;
            var12_18 = this.getCurrentSessionId();
            if (var12_18 != null) break block8;
            var4_16 = var11_12;
            var5_17 = var6_10;
            Fabric.getLogger().e("CrashlyticsCore", "Tried to write a fatal exception while no session was open.", null);
            CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
            return;
        }
        var4_16 = var11_12;
        var5_17 = var6_10;
        CrashlyticsCore.recordFatalExceptionEvent(var12_18);
        var4_16 = var11_12;
        var5_17 = var6_10;
        var6_10 = new ClsFileOutputStream(this.getFilesDir(), var12_18 + "SessionCrash");
        var4_16 = var10_13;
        var5_17 = var9_14;
        var4_16 = var7_15 = CodedOutputStream.newInstance((OutputStream)var6_10);
        var5_17 = var7_15;
        this.writeSessionEvent(var7_15, (Date)var1_1, (Thread)var2_5, var3_6, "crash", true);
        CommonUtils.flushOrLog(var7_15, "Failed to flush to session begin file.");
        CommonUtils.closeOrLog((Closeable)var6_10, "Failed to close fatal exception file output stream.");
        return;
        catch (Exception var3_7) {
            var2_5 = var8_11;
            var1_1 = var7_15;
            ** GOTO lbl45
            catch (Throwable var1_4) {
                var5_17 = var6_10;
                ** GOTO lbl-1000
            }
            catch (Exception var3_9) {
                var2_5 = var6_10;
                var1_1 = var5_17;
            }
lbl45: // 2 sources:
            var4_16 = var1_1;
            var5_17 = var2_5;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "An error occurred in the fatal exception logger", (Throwable)var3_8);
                var4_16 = var1_1;
                var5_17 = var2_5;
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var3_8, (OutputStream)var2_5);
            }
            catch (Throwable var1_2) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var4_16, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog((Closeable)var5_17, "Failed to close fatal exception file output stream.");
                throw var1_3;
            }
            CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog((Closeable)var2_5, "Failed to close fatal exception file output stream.");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String string2) throws IOException {
        String[] arrstring = INITIAL_SESSION_PART_TAGS;
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String string3 = arrstring[n3];
            File[] arrfile = this.listFilesMatching(new FileNameContainsFilter(string2 + string3));
            if (arrfile.length == 0) {
                Fabric.getLogger().e("CrashlyticsCore", "Can't find " + string3 + " data for session ID " + string2, null);
            } else {
                Fabric.getLogger().d("CrashlyticsCore", "Collecting " + string3 + " data for session ID " + string2);
                CrashlyticsUncaughtExceptionHandler.writeToCosFromFile(codedOutputStream, arrfile[0]);
            }
            ++n3;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] arrfile, String string2) {
        Arrays.sort(arrfile, CommonUtils.FILE_MODIFIED_COMPARATOR);
        int n2 = arrfile.length;
        int n3 = 0;
        while (n3 < n2) {
            File file = arrfile[n3];
            try {
                Fabric.getLogger().d("CrashlyticsCore", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", string2, file.getName()));
                CrashlyticsUncaughtExceptionHandler.writeToCosFromFile(codedOutputStream, file);
            }
            catch (Exception var5_6) {
                Fabric.getLogger().e("CrashlyticsCore", "Error writting non-fatal to session.", (Throwable)var5_6);
            }
            ++n3;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeSessionApp(String var1_1) throws Exception {
        var3_4 = null;
        var5_6 = null;
        var2_8 = null;
        var8_9 = null;
        var7_10 = null;
        var6_11 = null;
        var4_12 = new ClsFileOutputStream(this.getFilesDir(), (String)var1_1 + "SessionApp");
        var1_1 = var8_9;
        var2_8 = var7_10;
        var1_1 = var3_4 = CodedOutputStream.newInstance((OutputStream)var4_12);
        var2_8 = var3_4;
        SessionProtobufHelper.writeSessionApp((CodedOutputStream)var3_4, this.idManager.getAppIdentifier(), this.crashlyticsCore.getApiKey(), this.crashlyticsCore.getVersionCode(), this.crashlyticsCore.getVersionName(), this.idManager.getAppInstallIdentifier(), DeliveryMechanism.determineFrom((String)this.crashlyticsCore.getInstallerPackageName()).getId(), this.unityVersion);
        CommonUtils.flushOrLog((Flushable)var3_4, "Failed to flush to session app file.");
        CommonUtils.closeOrLog((Closeable)var4_12, "Failed to close session app file.");
        return;
        catch (Exception var1_2) {
            var4_12 = var5_6;
            var5_6 = var1_2;
            var1_1 = var6_11;
            ** GOTO lbl27
            catch (Throwable var3_5) {
                ** GOTO lbl38
            }
            catch (Exception var5_7) {
                var1_1 = var2_8;
            }
lbl27: // 2 sources:
            var2_8 = var1_1;
            var3_4 = var4_12;
            try {
                ExceptionUtils.writeStackTraceIfNotNull(var5_6, (OutputStream)var4_12);
                var2_8 = var1_1;
                var3_4 = var4_12;
                throw var5_6;
            }
            catch (Throwable var1_3) {
                var4_12 = var3_4;
                var3_4 = var1_3;
                var1_1 = var2_8;
lbl38: // 2 sources:
                CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush to session app file.");
                CommonUtils.closeOrLog((Closeable)var4_12, "Failed to close session app file.");
                throw var3_4;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeSessionDevice(String var1_1) throws Exception {
        var13_4 = null;
        var15_6 = null;
        var12_8 = null;
        var18_9 = null;
        var17_10 = null;
        var16_11 = null;
        var14_12 = new ClsFileOutputStream(this.getFilesDir(), (String)var1_1 + "SessionDevice");
        var1_1 = var18_9;
        var12_8 = var17_10;
        var1_1 = var13_4 = CodedOutputStream.newInstance((OutputStream)var14_12);
        var12_8 = var13_4;
        var15_6 = this.crashlyticsCore.getContext();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var17_10 = new StatFs(Environment.getDataDirectory().getPath());
        var1_1 = var13_4;
        var12_8 = var13_4;
        var16_11 = this.idManager.getDeviceUUID();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var2_13 = CommonUtils.getCpuArchitectureInt();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var3_14 = Runtime.getRuntime().availableProcessors();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var5_15 = CommonUtils.getTotalRamInBytes();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var7_16 = var17_10.getBlockCount();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var9_17 = var17_10.getBlockSize();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var11_18 = CommonUtils.isEmulator((Context)var15_6);
        var1_1 = var13_4;
        var12_8 = var13_4;
        var17_10 = this.idManager.getDeviceIdentifiers();
        var1_1 = var13_4;
        var12_8 = var13_4;
        var4_19 = CommonUtils.getDeviceState((Context)var15_6);
        var1_1 = var13_4;
        var12_8 = var13_4;
        SessionProtobufHelper.writeSessionDevice((CodedOutputStream)var13_4, var16_11, var2_13, Build.MODEL, var3_14, var5_15, var7_16 * var9_17, var11_18, var17_10, var4_19, Build.MANUFACTURER, Build.PRODUCT);
        CommonUtils.flushOrLog((Flushable)var13_4, "Failed to flush session device info.");
        CommonUtils.closeOrLog((Closeable)var14_12, "Failed to close session device file.");
        return;
        catch (Exception var1_2) {
            var14_12 = var15_6;
            var15_6 = var1_2;
            var1_1 = var16_11;
            ** GOTO lbl60
            catch (Throwable var13_5) {
                ** GOTO lbl71
            }
            catch (Exception var15_7) {
                var1_1 = var12_8;
            }
lbl60: // 2 sources:
            var12_8 = var1_1;
            var13_4 = var14_12;
            try {
                ExceptionUtils.writeStackTraceIfNotNull(var15_6, (OutputStream)var14_12);
                var12_8 = var1_1;
                var13_4 = var14_12;
                throw var15_6;
            }
            catch (Throwable var1_3) {
                var14_12 = var13_4;
                var13_4 = var1_3;
                var1_1 = var12_8;
lbl71: // 2 sources:
                CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush session device info.");
                CommonUtils.closeOrLog((Closeable)var14_12, "Failed to close session device file.");
                throw var13_4;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void writeSessionEvent(CodedOutputStream codedOutputStream, Date object, Thread thread, Throwable throwable, String string2, boolean bl) throws Exception {
        Map.Entry entry;
        Object object2 = this.crashlyticsCore.getContext();
        long l2 = object.getTime() / 1000;
        float f2 = CommonUtils.getBatteryLevel((Context)object2);
        int n2 = CommonUtils.getBatteryVelocity((Context)object2, this.devicePowerStateListener.isPowerConnected());
        boolean bl2 = CommonUtils.getProximitySensorEnabled((Context)object2);
        int n3 = object2.getResources().getConfiguration().orientation;
        long l3 = CommonUtils.getTotalRamInBytes();
        long l4 = CommonUtils.calculateFreeRamInBytes((Context)object2);
        long l5 = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = CommonUtils.getAppProcessInfo(object2.getPackageName(), (Context)object2);
        LinkedList<StackTraceElement[]> linkedList = new LinkedList<StackTraceElement[]>();
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        String string3 = this.crashlyticsCore.getBuildId();
        String string4 = this.idManager.getAppIdentifier();
        if (bl) {
            entry = Thread.getAllStackTraces();
            object = new Thread[entry.size()];
            int n4 = 0;
            Iterator iterator = entry.entrySet().iterator();
            do {
                entry = object;
                if (iterator.hasNext()) {
                    entry = iterator.next();
                    object[n4] = (Thread)entry.getKey();
                    linkedList.add((StackTraceElement[])entry.getValue());
                    ++n4;
                    continue;
                }
                break;
                break;
            } while (true);
        } else {
            entry = new Thread[]{};
        }
        if (!CommonUtils.getBooleanResourceValue((Context)object2, "com.crashlytics.CollectCustomKeys", true)) {
            object = new TreeMap();
        } else {
            object = object2 = this.crashlyticsCore.getAttributes();
            if (object2 != null) {
                object = object2;
                if (object2.size() > 1) {
                    object = new TreeMap<String, String>((Map<String, String>)object2);
                }
            }
        }
        SessionProtobufHelper.writeSessionEvent(codedOutputStream, l2, string2, throwable, thread, arrstackTraceElement, entry, linkedList, object, this.logFileManager, runningAppProcessInfo, n3, string4, string3, f2, n2, bl2, l3 - l4, l5);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeSessionOS(String var1_1) throws Exception {
        var3_3 = null;
        var5_4 = null;
        var2_6 = null;
        var8_8 = null;
        var7_9 = null;
        var6_10 = null;
        var4_11 = new ClsFileOutputStream(this.getFilesDir(), (String)var1_1 + "SessionOS");
        var1_1 = var8_8;
        var2_6 = var7_9;
        var1_1 = var3_3 = CodedOutputStream.newInstance((OutputStream)var4_11);
        var2_6 = var3_3;
        SessionProtobufHelper.writeSessionOS((CodedOutputStream)var3_3, CommonUtils.isRooted(this.crashlyticsCore.getContext()));
        CommonUtils.flushOrLog((Flushable)var3_3, "Failed to flush to session OS file.");
        CommonUtils.closeOrLog((Closeable)var4_11, "Failed to close session OS file.");
        return;
        catch (Exception var1_2) {
            var4_11 = var5_4;
            var5_4 = var1_2;
            var1_1 = var6_10;
            ** GOTO lbl29
            catch (Throwable var2_7) {
                var3_3 = var4_11;
                var4_11 = var2_7;
                ** GOTO lbl38
            }
            catch (Exception var5_5) {
                var1_1 = var2_6;
            }
lbl29: // 2 sources:
            var2_6 = var1_1;
            var3_3 = var4_11;
            try {
                ExceptionUtils.writeStackTraceIfNotNull(var5_4, (OutputStream)var4_11);
                var2_6 = var1_1;
                var3_3 = var4_11;
                throw var5_4;
            }
            catch (Throwable var4_12) {
                var1_1 = var2_6;
lbl38: // 2 sources:
                CommonUtils.flushOrLog((Flushable)var1_1, "Failed to flush to session OS file.");
                CommonUtils.closeOrLog((Closeable)var3_3, "Failed to close session OS file.");
                throw var4_11;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void writeSessionPartsToSessionFile(File file, String string2, int n2) {
        Fabric.getLogger().d("CrashlyticsCore", "Collecting session parts for ID " + string2);
        Object object = this.listFilesMatching(new FileNameContainsFilter(string2 + "SessionCrash"));
        boolean bl = object != null && object.length > 0;
        Fabric.getLogger().d("CrashlyticsCore", String.format(Locale.US, "Session %s has fatal exception: %s", string2, bl));
        File[] arrfile = this.listFilesMatching(new FileNameContainsFilter(string2 + "SessionEvent"));
        boolean bl2 = arrfile != null && arrfile.length > 0;
        Fabric.getLogger().d("CrashlyticsCore", String.format(Locale.US, "Session %s has non-fatal exceptions: %s", string2, bl2));
        if (bl || bl2) {
            arrfile = this.getTrimmedNonFatalFiles(string2, arrfile, n2);
            object = bl ? object[0] : null;
            this.synthesizeSessionFile(file, string2, arrfile, (File)object);
        } else {
            Fabric.getLogger().d("CrashlyticsCore", "No events present for session ID " + string2);
        }
        Fabric.getLogger().d("CrashlyticsCore", "Removing session part files for ID " + string2);
        this.deleteSessionPartFilesFor(string2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void writeSessionUser(String var1_1) throws Exception {
        block8 : {
            var4_6 = null;
            var6_7 = null;
            var3_9 = null;
            var9_10 = null;
            var8_11 = null;
            var7_12 = null;
            var5_13 = new ClsFileOutputStream(this.getFilesDir(), (String)var1_1 + "SessionUser");
            var3_9 = var9_10;
            var4_6 = var8_11;
            var3_9 = var6_7 = CodedOutputStream.newInstance((OutputStream)var5_13);
            var4_6 = var6_7;
            var1_1 = this.getUserMetaData((String)var1_1);
            var3_9 = var6_7;
            var4_6 = var6_7;
            var2_14 = var1_1.isEmpty();
            if (!var2_14) break block8;
            CommonUtils.flushOrLog((Flushable)var6_7, "Failed to flush session user file.");
            CommonUtils.closeOrLog((Closeable)var5_13, "Failed to close session user file.");
            return;
        }
        var3_9 = var6_7;
        var4_6 = var6_7;
        SessionProtobufHelper.writeSessionUser((CodedOutputStream)var6_7, var1_1.id, var1_1.name, var1_1.email);
        CommonUtils.flushOrLog((Flushable)var6_7, "Failed to flush session user file.");
        CommonUtils.closeOrLog((Closeable)var5_13, "Failed to close session user file.");
        return;
        catch (Exception var1_2) {
            var5_13 = var6_7;
            var6_7 = var1_2;
            var1_1 = var7_12;
            ** GOTO lbl40
            catch (Throwable var1_5) {
                var4_6 = var5_13;
                ** GOTO lbl-1000
            }
            catch (Exception var6_8) {
                var1_1 = var4_6;
            }
lbl40: // 2 sources:
            var3_9 = var1_1;
            var4_6 = var5_13;
            try {
                ExceptionUtils.writeStackTraceIfNotNull((Throwable)var6_7, (OutputStream)var5_13);
                var3_9 = var1_1;
                var4_6 = var5_13;
                throw var6_7;
            }
            catch (Throwable var1_3) lbl-1000: // 2 sources:
            {
                CommonUtils.flushOrLog((Flushable)var3_9, "Failed to flush session user file.");
                CommonUtils.closeOrLog((Closeable)var4_6, "Failed to close session user file.");
                throw var1_4;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void writeToCosFromFile(CodedOutputStream var0, File var1_1) throws IOException {
        if (!var1_1.exists()) {
            Fabric.getLogger().e("CrashlyticsCore", "Tried to include a file that doesn't exist: " + var1_1.getName(), null);
            return;
        }
        var2_5 = null;
        var3_6 = new FileInputStream(var1_1);
        CrashlyticsUncaughtExceptionHandler.copyToCodedOutputStream(var3_6, (CodedOutputStream)var0, (int)var1_1.length());
        CommonUtils.closeOrLog(var3_6, "Failed to close file input stream.");
        return;
        catch (Throwable var1_2) {
            var0 = var2_5;
            ** GOTO lbl16
            catch (Throwable var1_4) {
                var0 = var3_6;
            }
lbl16: // 2 sources:
            CommonUtils.closeOrLog((Closeable)var0, "Failed to close file input stream.");
            throw var1_3;
        }
    }

    void cacheKeyData(final Map<String, String> map) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                String string2 = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeKeyData(string2, map);
                return null;
            }
        });
    }

    void cacheUserData(final String string2, final String string3, final String string4) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                String string22 = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeUserData(string22, new UserMetaData(string2, string3, string4));
                return null;
            }
        });
    }

    void cleanInvalidTempFiles() {
        this.executorServiceWrapper.executeAsync(new Runnable(){

            @Override
            public void run() {
                CrashlyticsUncaughtExceptionHandler.this.doCleanInvalidTempFiles(CrashlyticsUncaughtExceptionHandler.this.listFilesMatching(ClsFileOutputStream.TEMP_FILENAME_FILTER));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] arrfile) {
        this.deleteLegacyInvalidCacheDir();
        for (File file : arrfile) {
            Fabric.getLogger().d("CrashlyticsCore", "Found invalid session part file: " + file);
            final String string2 = this.getSessionIdFromSessionFile(file);
            Object object2 = new FilenameFilter(){

                @Override
                public boolean accept(File file, String string22) {
                    return string22.startsWith(string2);
                }
            };
            Fabric.getLogger().d("CrashlyticsCore", "Deleting all part files for invalid session: " + string2);
            for (Object object2 : this.listFilesMatching((FilenameFilter)object2)) {
                Fabric.getLogger().d("CrashlyticsCore", "Deleting session file: " + object2);
                object2.delete();
            }
        }
    }

    void doCloseSessions() throws Exception {
        this.doCloseSessions(false);
    }

    boolean finalizeSessions() {
        return (Boolean)this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>(){

            @Override
            public Boolean call() throws Exception {
                if (CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    Fabric.getLogger().d("CrashlyticsCore", "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                Fabric.getLogger().d("CrashlyticsCore", "Finalizing previously open sessions.");
                SessionEventData sessionEventData = CrashlyticsUncaughtExceptionHandler.this.crashlyticsCore.getExternalCrashEventData();
                if (sessionEventData != null) {
                    CrashlyticsUncaughtExceptionHandler.this.writeExternalCrashEvent(sessionEventData);
                }
                CrashlyticsUncaughtExceptionHandler.this.doCloseSessions(true);
                Fabric.getLogger().d("CrashlyticsCore", "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        });
    }

    boolean hasOpenSession() {
        if (this.listSessionBeginFiles().length > 0) {
            return true;
        }
        return false;
    }

    boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    File[] listSessionBeginFiles() {
        return this.listFilesMatching(new FileNameContainsFilter("BeginSession"));
    }

    void openSession() {
        this.executorServiceWrapper.executeAsync(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                CrashlyticsUncaughtExceptionHandler.this.doOpenSession();
                return null;
            }
        });
    }

    void trimSessionFiles() {
        Utils.capFileCount(this.getFilesDir(), SESSION_FILE_FILTER, 4, SMALLEST_FILE_NAME_FIRST);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void uncaughtException(final Thread thread, final Throwable throwable) {
        synchronized (this) {
            this.isHandlingException.set(true);
            try {
                Fabric.getLogger().d("CrashlyticsCore", "Crashlytics is handling uncaught exception \"" + throwable + "\" from thread " + thread.getName());
                this.devicePowerStateListener.dispose();
                final Date date = new Date();
                this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>(){

                    @Override
                    public Void call() throws Exception {
                        CrashlyticsUncaughtExceptionHandler.this.handleUncaughtException(date, thread, throwable);
                        return null;
                    }
                });
            }
            catch (Exception var3_4) {
                Fabric.getLogger().e("CrashlyticsCore", "An error occurred in the uncaught exception handler", (Throwable)var3_4);
            }
            finally {
                Fabric.getLogger().d("CrashlyticsCore", "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, throwable);
                this.isHandlingException.set(false);
            }
            return;
        }
    }

    void writeNonFatalException(final Thread thread, final Throwable throwable) {
        final Date date = new Date();
        this.executorServiceWrapper.executeAsync(new Runnable(){

            @Override
            public void run() {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.doWriteNonFatal(date, thread, throwable);
                }
            }
        });
    }

    void writeToLog(final long l2, final String string2) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.logFileManager.writeToLog(l2, string2);
                }
                return null;
            }
        });
    }

    private static class AnySessionPartFileFilter
    implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override
        public boolean accept(File file, String string2) {
            if (!CrashlyticsUncaughtExceptionHandler.SESSION_FILE_FILTER.accept(file, string2) && SESSION_FILE_PATTERN.matcher(string2).matches()) {
                return true;
            }
            return false;
        }
    }

    static class FileNameContainsFilter
    implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String string2) {
            this.string = string2;
        }

        @Override
        public boolean accept(File file, String string2) {
            if (string2.contains(this.string) && !string2.endsWith(".cls_temp")) {
                return true;
            }
            return false;
        }
    }

    private static final class SendSessionRunnable
    implements Runnable {
        private final CrashlyticsCore crashlyticsCore;
        private final File fileToSend;

        public SendSessionRunnable(CrashlyticsCore crashlyticsCore, File file) {
            this.crashlyticsCore = crashlyticsCore;
            this.fileToSend = file;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (!CommonUtils.canTryConnection(this.crashlyticsCore.getContext())) {
                return;
            }
            Fabric.getLogger().d("CrashlyticsCore", "Attempting to send crash report at time of crash...");
            Object object = Settings.getInstance().awaitSettingsData();
            if ((object = this.crashlyticsCore.getCreateReportSpiCall((SettingsData)object)) == null) return;
            new ReportUploader((CreateReportSpiCall)object).forceUpload(new SessionReport(this.fileToSend, SEND_AT_CRASHTIME_HEADER));
        }
    }

    static class SessionPartFileFilter
    implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String string2) {
            this.sessionId = string2;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean accept(File file, String string2) {
            if (string2.equals(this.sessionId + ".cls") || !string2.contains(this.sessionId) || string2.endsWith(".cls_temp")) {
                return false;
            }
            return true;
        }
    }

}

