/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.Resources
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.widget.ScrollView
 *  android.widget.TextView
 *  io.fabric.sdk.android.Logger
 *  io.fabric.sdk.android.services.common.Crash
 *  io.fabric.sdk.android.services.common.Crash$FatalException
 *  io.fabric.sdk.android.services.common.Crash$LoggedException
 *  io.fabric.sdk.android.services.common.ExecutorUtils
 *  io.fabric.sdk.android.services.concurrency.Priority
 *  io.fabric.sdk.android.services.concurrency.PriorityCallable
 *  io.fabric.sdk.android.services.concurrency.Task
 *  io.fabric.sdk.android.services.concurrency.UnmetDependencyException
 *  io.fabric.sdk.android.services.network.DefaultHttpRequestFactory
 *  io.fabric.sdk.android.services.network.HttpMethod
 *  io.fabric.sdk.android.services.network.HttpRequest
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 *  io.fabric.sdk.android.services.network.PinningInfoProvider
 *  io.fabric.sdk.android.services.persistence.FileStore
 *  io.fabric.sdk.android.services.persistence.FileStoreImpl
 *  io.fabric.sdk.android.services.settings.AppSettingsData
 *  io.fabric.sdk.android.services.settings.FeaturesSettingsData
 *  io.fabric.sdk.android.services.settings.PromptSettingsData
 *  io.fabric.sdk.android.services.settings.SessionSettingsData
 *  io.fabric.sdk.android.services.settings.Settings
 *  io.fabric.sdk.android.services.settings.Settings$SettingsAccess
 *  io.fabric.sdk.android.services.settings.SettingsData
 */
package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.core.BuildIdValidator;
import com.crashlytics.android.core.CrashTest;
import com.crashlytics.android.core.CrashlyticsExecutorServiceWrapper;
import com.crashlytics.android.core.CrashlyticsFileMarker;
import com.crashlytics.android.core.CrashlyticsListener;
import com.crashlytics.android.core.CrashlyticsMissingDependencyException;
import com.crashlytics.android.core.CrashlyticsPinningInfoProvider;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.CreateReportSpiCall;
import com.crashlytics.android.core.DefaultCreateReportSpiCall;
import com.crashlytics.android.core.DialogStringResolver;
import com.crashlytics.android.core.ManifestUnityVersionProvider;
import com.crashlytics.android.core.PinningInfoProvider;
import com.crashlytics.android.core.ReportUploader;
import com.crashlytics.android.core.UnityVersionProvider;
import com.crashlytics.android.core.internal.CrashEventDataProvider;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.Crash;
import io.fabric.sdk.android.services.common.ExecutorUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.PriorityCallable;
import io.fabric.sdk.android.services.concurrency.Task;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import io.fabric.sdk.android.services.settings.FeaturesSettingsData;
import io.fabric.sdk.android.services.settings.PromptSettingsData;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;

@DependsOn(value={CrashEventDataProvider.class})
public class CrashlyticsCore
extends Kit<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    static final String COLLECT_CUSTOM_LOGS = "com.crashlytics.CollectCustomLogs";
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    public static final String TAG = "CrashlyticsCore";
    private String apiKey;
    private final ConcurrentHashMap<String, String> attributes;
    private String buildId;
    private CrashlyticsFileMarker crashMarker;
    private float delay;
    private boolean disabled;
    private CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private CrashEventDataProvider externalCrashEventDataProvider;
    private FileStore fileStore;
    private CrashlyticsUncaughtExceptionHandler handler;
    private HttpRequestFactory httpRequestFactory;
    private CrashlyticsFileMarker initializationMarker;
    private String installerPackageName;
    private CrashlyticsListener listener;
    private String packageName;
    private final PinningInfoProvider pinningInfo;
    private File sdkDir;
    private final long startTime;
    private String userEmail = null;
    private String userId = null;
    private String userName = null;
    private String versionCode;
    private String versionName;

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean bl) {
        this(f2, crashlyticsListener, pinningInfoProvider, bl, ExecutorUtils.buildSingleThreadExecutorService((String)"Crashlytics Exception Handler"));
    }

    /*
     * Enabled aggressive block sorting
     */
    CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean bl, ExecutorService executorService) {
        this.delay = f2;
        if (crashlyticsListener == null) {
            crashlyticsListener = new NoOpListener();
        }
        this.listener = crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = bl;
        this.executorServiceWrapper = new CrashlyticsExecutorServiceWrapper(executorService);
        this.attributes = new ConcurrentHashMap();
        this.startTime = System.currentTimeMillis();
    }

    private void checkForPreviousCrash() {
        Boolean bl = (Boolean)this.executorServiceWrapper.executeSyncLoggingException(new CrashMarkerCheck(this.crashMarker));
        if (!Boolean.TRUE.equals(bl)) {
            return;
        }
        try {
            this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
            return;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Exception thrown by CrashlyticsListener while notifying of previous crash.", (Throwable)var1_2);
            return;
        }
    }

    private static int dipsToPixels(float f2, int n2) {
        return (int)((float)n2 * f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doLog(int n2, String string2, String string3) {
        if (this.disabled || !CrashlyticsCore.ensureFabricWithCalled("prior to logging messages.")) {
            return;
        }
        long l2 = System.currentTimeMillis();
        long l3 = this.startTime;
        this.handler.writeToLog(l2 - l3, CrashlyticsCore.formatLogMessage(n2, string2, string3));
    }

    private static boolean ensureFabricWithCalled(String string2) {
        CrashlyticsCore crashlyticsCore = CrashlyticsCore.getInstance();
        if (crashlyticsCore == null || crashlyticsCore.handler == null) {
            Fabric.getLogger().e("CrashlyticsCore", "Crashlytics must be initialized by calling Fabric.with(Context) " + string2, null);
            return false;
        }
        return true;
    }

    private void finishInitSynchronously() {
        Object object = new PriorityCallable<Void>(){

            public Void call() throws Exception {
                return CrashlyticsCore.this.doInBackground();
            }

            public Priority getPriority() {
                return Priority.IMMEDIATE;
            }
        };
        Iterator<Task> iterator = this.getDependencies().iterator();
        while (iterator.hasNext()) {
            object.addDependency(iterator.next());
        }
        object = this.getFabric().getExecutorService().submit(object);
        Fabric.getLogger().d("CrashlyticsCore", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            object.get(4, TimeUnit.SECONDS);
            return;
        }
        catch (InterruptedException var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Crashlytics was interrupted during initialization.", (Throwable)var1_2);
            return;
        }
        catch (ExecutionException var1_3) {
            Fabric.getLogger().e("CrashlyticsCore", "Problem encountered during Crashlytics initialization.", (Throwable)var1_3);
            return;
        }
        catch (TimeoutException var1_4) {
            Fabric.getLogger().e("CrashlyticsCore", "Crashlytics timed out during initialization.", (Throwable)var1_4);
            return;
        }
    }

    private static String formatLogMessage(int n2, String string2, String string3) {
        return CommonUtils.logPriorityToString(n2) + "/" + string2 + " " + string3;
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore)Fabric.getKit(CrashlyticsCore.class);
    }

    private boolean getSendDecisionFromUser(final Activity activity, final PromptSettingsData promptSettingsData) {
        final DialogStringResolver dialogStringResolver = new DialogStringResolver((Context)activity, promptSettingsData);
        final OptInLatch optInLatch = new OptInLatch();
        activity.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder((Context)activity);
                Object object = new DialogInterface.OnClickListener(){

                    public void onClick(DialogInterface dialogInterface, int n2) {
                        optInLatch.setOptIn(true);
                        dialogInterface.dismiss();
                    }
                };
                float f2 = activity.getResources().getDisplayMetrics().density;
                int n2 = CrashlyticsCore.dipsToPixels(f2, 5);
                TextView textView = new TextView((Context)activity);
                textView.setAutoLinkMask(15);
                textView.setText((CharSequence)dialogStringResolver.getMessage());
                textView.setTextAppearance((Context)activity, 16973892);
                textView.setPadding(n2, n2, n2, n2);
                textView.setFocusable(false);
                ScrollView scrollView = new ScrollView((Context)activity);
                scrollView.setPadding(CrashlyticsCore.dipsToPixels(f2, 14), CrashlyticsCore.dipsToPixels(f2, 2), CrashlyticsCore.dipsToPixels(f2, 10), CrashlyticsCore.dipsToPixels(f2, 12));
                scrollView.addView((View)textView);
                builder.setView((View)scrollView).setTitle((CharSequence)dialogStringResolver.getTitle()).setCancelable(false).setNeutralButton((CharSequence)dialogStringResolver.getSendButtonTitle(), object);
                if (promptSettingsData.showCancelButton) {
                    object = new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            optInLatch.setOptIn(false);
                            dialogInterface.dismiss();
                        }
                    };
                    builder.setNegativeButton((CharSequence)dialogStringResolver.getCancelButtonTitle(), object);
                }
                if (promptSettingsData.showAlwaysSendButton) {
                    object = new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            CrashlyticsCore.this.setShouldSendUserReportsWithoutPrompting(true);
                            optInLatch.setOptIn(true);
                            dialogInterface.dismiss();
                        }
                    };
                    builder.setPositiveButton((CharSequence)dialogStringResolver.getAlwaysSendButtonTitle(), object);
                }
                builder.show();
            }

        });
        Fabric.getLogger().d("CrashlyticsCore", "Waiting for user opt-in.");
        optInLatch.await();
        return optInLatch.getOptIn();
    }

    static SessionSettingsData getSessionSettingsData() {
        SettingsData settingsData = Settings.getInstance().awaitSettingsData();
        if (settingsData == null) {
            return null;
        }
        return settingsData.sessionData;
    }

    private void installExceptionHandler(UnityVersionProvider unityVersionProvider) {
        try {
            Fabric.getLogger().d("CrashlyticsCore", "Installing exception handler...");
            this.handler = new CrashlyticsUncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler(), this.executorServiceWrapper, this.getIdManager(), unityVersionProvider, this.fileStore, this);
            this.handler.openSession();
            Thread.setDefaultUncaughtExceptionHandler(this.handler);
            Fabric.getLogger().d("CrashlyticsCore", "Successfully installed exception handler.");
            return;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "There was a problem installing the exception handler.", (Throwable)var1_2);
            return;
        }
    }

    private static boolean isRequiringBuildId(Context context) {
        return CommonUtils.getBooleanResourceValue(context, "com.crashlytics.RequireBuildId", true);
    }

    static void recordFatalExceptionEvent(String string2) {
        Answers answers = (Answers)Fabric.getKit(Answers.class);
        if (answers != null) {
            answers.onException(new Crash.FatalException(string2));
        }
    }

    static void recordLoggedExceptionEvent(String string2) {
        Answers answers = (Answers)Fabric.getKit(Answers.class);
        if (answers != null) {
            answers.onException(new Crash.LoggedException(string2));
        }
    }

    private static String sanitizeAttribute(String string2) {
        String string3 = string2;
        if (string2 != null) {
            string3 = string2 = string2.trim();
            if (string2.length() > 1024) {
                string3 = string2.substring(0, 1024);
            }
        }
        return string3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setAndValidateKitProperties(Context context, String string2) throws PackageManager.NameNotFoundException {
        Object object = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
        this.httpRequestFactory = new DefaultHttpRequestFactory(Fabric.getLogger());
        this.httpRequestFactory.setPinningInfoProvider((io.fabric.sdk.android.services.network.PinningInfoProvider)object);
        this.packageName = context.getPackageName();
        this.installerPackageName = this.getIdManager().getInstallerPackageName();
        Fabric.getLogger().d("CrashlyticsCore", "Installer package name is: " + this.installerPackageName);
        object = context.getPackageManager().getPackageInfo(this.packageName, 0);
        this.versionCode = Integer.toString(object.versionCode);
        object = object.versionName == null ? "0.0" : object.versionName;
        this.versionName = object;
        this.buildId = CommonUtils.resolveBuildId(context);
        this.getBuildIdValidator(this.buildId, CrashlyticsCore.isRequiringBuildId(context)).validate(string2, this.packageName);
    }

    boolean canSendWithUserApproval() {
        return (Boolean)Settings.getInstance().withSettings((Settings.SettingsAccess)new Settings.SettingsAccess<Boolean>(){

            public Boolean usingSettings(SettingsData settingsData) {
                boolean bl = true;
                Activity activity = CrashlyticsCore.this.getFabric().getCurrentActivity();
                boolean bl2 = bl;
                if (activity != null) {
                    bl2 = bl;
                    if (!activity.isFinishing()) {
                        bl2 = bl;
                        if (CrashlyticsCore.this.shouldPromptUserBeforeSendingCrashReports()) {
                            bl2 = CrashlyticsCore.this.getSendDecisionFromUser(activity, settingsData.promptData);
                        }
                    }
                }
                return bl2;
            }
        }, (Object)true);
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    void createCrashMarker() {
        this.crashMarker.create();
    }

    boolean didPreviousInitializationFail() {
        return (Boolean)this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>(){

            @Override
            public Boolean call() throws Exception {
                return CrashlyticsCore.this.initializationMarker.isPresent();
            }
        });
    }

    @Override
    protected Void doInBackground() {
        this.markInitializationStarted();
        this.handler.cleanInvalidTempFiles();
        try {
            Object object = Settings.getInstance().awaitSettingsData();
            if (object == null) {
                Fabric.getLogger().w("CrashlyticsCore", "Received null settings, skipping initialization!");
                return null;
            }
            if (!object.featuresData.collectReports) {
                Fabric.getLogger().d("CrashlyticsCore", "Collection of crash reports disabled in Crashlytics settings.");
                return null;
            }
            this.handler.finalizeSessions();
            object = this.getCreateReportSpiCall((SettingsData)object);
            if (object == null) {
                Fabric.getLogger().w("CrashlyticsCore", "Unable to create a call to upload reports.");
                return null;
            }
            new ReportUploader((CreateReportSpiCall)object).uploadReports(this.delay);
            return null;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Crashlytics encountered a problem during asynchronous initialization.", (Throwable)var1_2);
            return null;
        }
        finally {
            this.markInitializationComplete();
        }
    }

    String getApiKey() {
        return this.apiKey;
    }

    Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    String getBuildId() {
        return this.buildId;
    }

    BuildIdValidator getBuildIdValidator(String string2, boolean bl) {
        return new BuildIdValidator(string2, bl);
    }

    CreateReportSpiCall getCreateReportSpiCall(SettingsData settingsData) {
        if (settingsData != null) {
            return new DefaultCreateReportSpiCall(this, this.getOverridenSpiEndpoint(), settingsData.appData.reportsUrl, this.httpRequestFactory);
        }
        return null;
    }

    SessionEventData getExternalCrashEventData() {
        SessionEventData sessionEventData = null;
        if (this.externalCrashEventDataProvider != null) {
            sessionEventData = this.externalCrashEventDataProvider.getCrashEventData();
        }
        return sessionEventData;
    }

    CrashlyticsUncaughtExceptionHandler getHandler() {
        return this.handler;
    }

    @Override
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    String getInstallerPackageName() {
        return this.installerPackageName;
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(this.getContext(), "com.crashlytics.ApiEndpoint");
    }

    String getPackageName() {
        return this.packageName;
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (!this.disabled) {
            return this.pinningInfo;
        }
        return null;
    }

    File getSdkDirectory() {
        if (this.sdkDir == null) {
            this.sdkDir = new FileStoreImpl((Kit)this).getFilesDir();
        }
        return this.sdkDir;
    }

    String getUserEmail() {
        if (this.getIdManager().canCollectUserIds()) {
            return this.userEmail;
        }
        return null;
    }

    String getUserIdentifier() {
        if (this.getIdManager().canCollectUserIds()) {
            return this.userId;
        }
        return null;
    }

    String getUserName() {
        if (this.getIdManager().canCollectUserIds()) {
            return this.userName;
        }
        return null;
    }

    @Override
    public String getVersion() {
        return "2.3.8.97";
    }

    String getVersionCode() {
        return this.versionCode;
    }

    String getVersionName() {
        return this.versionName;
    }

    boolean internalVerifyPinning(URL uRL) {
        boolean bl = false;
        if (this.getPinningInfoProvider() != null) {
            uRL = this.httpRequestFactory.buildHttpRequest(HttpMethod.GET, uRL.toString());
            ((HttpsURLConnection)uRL.getConnection()).setInstanceFollowRedirects(false);
            uRL.code();
            bl = true;
        }
        return bl;
    }

    public void log(int n2, String string2, String string3) {
        this.doLog(n2, string2, string3);
        Fabric.getLogger().log(n2, "" + string2, "" + string3, true);
    }

    public void log(String string2) {
        this.doLog(3, "CrashlyticsCore", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void logException(Throwable throwable) {
        if (this.disabled || !CrashlyticsCore.ensureFabricWithCalled("prior to logging exceptions.")) {
            return;
        }
        if (throwable == null) {
            Fabric.getLogger().log(5, "CrashlyticsCore", "Crashlytics is ignoring a request to log a null exception.");
            return;
        }
        this.handler.writeNonFatalException(Thread.currentThread(), throwable);
    }

    void markInitializationComplete() {
        this.executorServiceWrapper.executeAsync(new Callable<Boolean>(){

            @Override
            public Boolean call() throws Exception {
                boolean bl;
                try {
                    bl = CrashlyticsCore.this.initializationMarker.remove();
                    Fabric.getLogger().d("CrashlyticsCore", "Initialization marker file removed: " + bl);
                }
                catch (Exception var1_2) {
                    Fabric.getLogger().e("CrashlyticsCore", "Problem encountered deleting Crashlytics initialization marker.", (Throwable)var1_2);
                    return false;
                }
                return bl;
            }
        });
    }

    void markInitializationStarted() {
        this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                CrashlyticsCore.this.initializationMarker.create();
                Fabric.getLogger().d("CrashlyticsCore", "Initialization marker file created.");
                return null;
            }
        });
    }

    @Override
    protected boolean onPreExecute() {
        return this.onPreExecute(super.getContext());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean onPreExecute(Context context) {
        if (this.disabled) return false;
        this.apiKey = new ApiKey().getValue(context);
        if (this.apiKey == null) {
            return false;
        }
        Fabric.getLogger().i("CrashlyticsCore", "Initializing Crashlytics " + this.getVersion());
        this.fileStore = new FileStoreImpl((Kit)this);
        this.crashMarker = new CrashlyticsFileMarker("crash_marker", this.fileStore);
        this.initializationMarker = new CrashlyticsFileMarker("initialization_marker", this.fileStore);
        try {
            this.setAndValidateKitProperties(context, this.apiKey);
            ManifestUnityVersionProvider manifestUnityVersionProvider = new ManifestUnityVersionProvider(context, this.getPackageName());
            boolean bl = this.didPreviousInitializationFail();
            this.checkForPreviousCrash();
            this.installExceptionHandler(manifestUnityVersionProvider);
            if (!bl || !CommonUtils.canTryConnection(context)) return true;
            {
                this.finishInitSynchronously();
                return false;
            }
        }
        catch (CrashlyticsMissingDependencyException var1_2) {
            throw new UnmetDependencyException((Throwable)var1_2);
        }
        catch (Exception var1_3) {
            Fabric.getLogger().e("CrashlyticsCore", "Crashlytics was not started due to an exception during initialization", (Throwable)var1_3);
            return false;
        }
    }

    public void setBool(String string2, boolean bl) {
        this.setString(string2, Boolean.toString(bl));
    }

    public void setDouble(String string2, double d2) {
        this.setString(string2, Double.toString(d2));
    }

    void setExternalCrashEventDataProvider(CrashEventDataProvider crashEventDataProvider) {
        this.externalCrashEventDataProvider = crashEventDataProvider;
    }

    public void setFloat(String string2, float f2) {
        this.setString(string2, Float.toString(f2));
    }

    public void setInt(String string2, int n2) {
        this.setString(string2, Integer.toString(n2));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Deprecated
    public void setListener(CrashlyticsListener crashlyticsListener) {
        synchronized (this) {
            Fabric.getLogger().w("CrashlyticsCore", "Use of setListener is deprecated.");
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            this.listener = crashlyticsListener;
            return;
        }
    }

    public void setLong(String string2, long l2) {
        this.setString(string2, Long.toString(l2));
    }

    @SuppressLint(value={"CommitPrefEdits"})
    void setShouldSendUserReportsWithoutPrompting(boolean bl) {
        PreferenceStoreImpl preferenceStoreImpl = new PreferenceStoreImpl(this);
        preferenceStoreImpl.save(preferenceStoreImpl.edit().putBoolean("always_send_reports_opt_in", bl));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setString(String string2, String string3) {
        if (this.disabled) {
            return;
        }
        if (string2 == null) {
            string2 = this.getContext();
            if (string2 != null && CommonUtils.isAppDebuggable((Context)string2)) {
                throw new IllegalArgumentException("Custom attribute key must not be null.");
            }
            Fabric.getLogger().e("CrashlyticsCore", "Attempting to set custom attribute with null key, ignoring.", null);
            return;
        }
        String string4 = CrashlyticsCore.sanitizeAttribute(string2);
        if (this.attributes.size() >= 64 && !this.attributes.containsKey(string4)) {
            Fabric.getLogger().d("CrashlyticsCore", "Exceeded maximum number of custom attributes (64)");
            return;
        }
        string2 = string3 == null ? "" : CrashlyticsCore.sanitizeAttribute(string3);
        this.attributes.put(string4, string2);
        this.handler.cacheKeyData(this.attributes);
    }

    public void setUserEmail(String string2) {
        if (this.disabled) {
            return;
        }
        this.userEmail = CrashlyticsCore.sanitizeAttribute(string2);
        this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
    }

    public void setUserIdentifier(String string2) {
        if (this.disabled) {
            return;
        }
        this.userId = CrashlyticsCore.sanitizeAttribute(string2);
        this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
    }

    public void setUserName(String string2) {
        if (this.disabled) {
            return;
        }
        this.userName = CrashlyticsCore.sanitizeAttribute(string2);
        this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
    }

    boolean shouldPromptUserBeforeSendingCrashReports() {
        return (Boolean)Settings.getInstance().withSettings((Settings.SettingsAccess)new Settings.SettingsAccess<Boolean>(){

            public Boolean usingSettings(SettingsData settingsData) {
                boolean bl = false;
                if (settingsData.featuresData.promptEnabled) {
                    if (!CrashlyticsCore.this.shouldSendReportsWithoutPrompting()) {
                        bl = true;
                    }
                    return bl;
                }
                return false;
            }
        }, (Object)false);
    }

    boolean shouldSendReportsWithoutPrompting() {
        return new PreferenceStoreImpl(this).get().getBoolean("always_send_reports_opt_in", false);
    }

    public boolean verifyPinning(URL uRL) {
        try {
            boolean bl = this.internalVerifyPinning(uRL);
            return bl;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Could not verify SSL pinning", (Throwable)var1_2);
            return false;
        }
    }

    public static class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public CrashlyticsCore build() {
            if (this.delay < 0.0f) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }

        public Builder delay(float f2) {
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            }
            if (this.delay > 0.0f) {
                throw new IllegalStateException("delay already set.");
            }
            this.delay = f2;
            return this;
        }

        public Builder disabled(boolean bl) {
            this.disabled = bl;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            if (this.listener != null) {
                throw new IllegalStateException("listener already set.");
            }
            this.listener = crashlyticsListener;
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            }
            if (this.pinningInfoProvider != null) {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
            this.pinningInfoProvider = pinningInfoProvider;
            return this;
        }
    }

    private static final class CrashMarkerCheck
    implements Callable<Boolean> {
        private final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashlyticsFileMarker) {
            this.crashMarker = crashlyticsFileMarker;
        }

        @Override
        public Boolean call() throws Exception {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            Fabric.getLogger().d("CrashlyticsCore", "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    private static final class NoOpListener
    implements CrashlyticsListener {
        private NoOpListener() {
        }

        @Override
        public void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }

    private static class OptInLatch {
        private final CountDownLatch latch = new CountDownLatch(1);
        private boolean send = false;

        private OptInLatch() {
        }

        void await() {
            try {
                this.latch.await();
                return;
            }
            catch (InterruptedException var1_1) {
                return;
            }
        }

        boolean getOptIn() {
            return this.send;
        }

        void setOptIn(boolean bl) {
            this.send = bl;
            this.latch.countDown();
        }
    }

}

