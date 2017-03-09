/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.pm.Signature
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.util.Base64
 *  android.util.Log
 */
package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenManager;
import com.facebook.FacebookException;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.Profile;
import com.facebook.ProfileManager;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class FacebookSdk {
    private static final String ANALYTICS_EVENT = "event";
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    public static final String APPLICATION_NAME_PROPERTY = "com.facebook.sdk.ApplicationName";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    static final String CALLBACK_OFFSET_CHANGED_AFTER_INIT = "The callback request code offset can't be updated once the SDK is initialized.";
    static final String CALLBACK_OFFSET_NEGATIVE = "The callback request code offset can't be negative.";
    public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY;
    private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE;
    private static final String FACEBOOK_COM = "facebook.com";
    private static final Object LOCK;
    private static final int MAX_REQUEST_CODE_RANGE = 100;
    private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static final String TAG;
    private static volatile String appClientToken;
    private static Context applicationContext;
    private static volatile String applicationId;
    private static volatile String applicationName;
    private static File cacheDir;
    private static int callbackRequestCodeOffset;
    private static volatile Executor executor;
    private static volatile String facebookDomain;
    private static volatile boolean isDebugEnabled;
    private static boolean isLegacyTokenUpgradeSupported;
    private static final HashSet<LoggingBehavior> loggingBehaviors;
    private static AtomicLong onProgressThreshold;
    private static Boolean sdkInitialized;

    static {
        TAG = FacebookSdk.class.getCanonicalName();
        loggingBehaviors = new HashSet<LoggingBehavior>(Arrays.asList(new LoggingBehavior[]{LoggingBehavior.DEVELOPER_ERRORS}));
        facebookDomain = "facebook.com";
        onProgressThreshold = new AtomicLong(65536);
        isDebugEnabled = false;
        isLegacyTokenUpgradeSupported = false;
        callbackRequestCodeOffset = 64206;
        LOCK = new Object();
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse((String)"content://com.facebook.katana.provider.AttributionIdProvider");
        DEFAULT_WORK_QUEUE = new LinkedBlockingQueue<Runnable>(10);
        DEFAULT_THREAD_FACTORY = new ThreadFactory(){
            private final AtomicInteger counter = new AtomicInteger(0);

            @Override
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "FacebookSdk #" + this.counter.incrementAndGet());
            }
        };
        sdkInitialized = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void addLoggingBehavior(LoggingBehavior loggingBehavior) {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            loggingBehaviors.add(loggingBehavior);
            FacebookSdk.updateGraphDebugBehavior();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void clearLoggingBehaviors() {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            loggingBehaviors.clear();
            return;
        }
    }

    public static Context getApplicationContext() {
        Validate.sdkInitialized();
        return applicationContext;
    }

    public static String getApplicationId() {
        Validate.sdkInitialized();
        return applicationId;
    }

    public static String getApplicationName() {
        Validate.sdkInitialized();
        return applicationName;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String getApplicationSignature(Context object) {
        Validate.sdkInitialized();
        if (object == null) {
            return null;
        }
        Signature[] arrsignature = object.getPackageManager();
        if (arrsignature == null) return null;
        object = object.getPackageName();
        try {
            object = arrsignature.getPackageInfo((String)object, 64);
            arrsignature = object.signatures;
            if (arrsignature == null) return null;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return null;
        }
        if (arrsignature.length == 0) return null;
        try {
            arrsignature = MessageDigest.getInstance("SHA-1");
            arrsignature.update(object.signatures[0].toByteArray());
        }
        catch (NoSuchAlgorithmException var0_2) {
            return null;
        }
        return Base64.encodeToString((byte[])arrsignature.digest(), (int)9);
    }

    private static Executor getAsyncTaskExecutor() {
        Object object;
        try {
            object = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
        }
        catch (NoSuchFieldException var0_1) {
            return null;
        }
        try {
            object = object.get(null);
            if (object == null) {
                return null;
            }
        }
        catch (IllegalAccessException var0_2) {
            return null;
        }
        if (!(object instanceof Executor)) {
            return null;
        }
        return (Executor)object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getAttributionId(ContentResolver contentResolver) {
        Object object;
        Object var4_3;
        Object object2;
        block7 : {
            block6 : {
                var4_3 = null;
                Validate.sdkInitialized();
                object = null;
                object2 = null;
                contentResolver = contentResolver.query(ATTRIBUTION_ID_CONTENT_URI, new String[]{"aid"}, null, null, null);
                if (contentResolver == null) break block6;
                object2 = contentResolver;
                object = contentResolver;
                boolean bl = contentResolver.moveToFirst();
                if (bl) break block7;
            }
            object = var4_3;
            if (contentResolver == null) return object;
            contentResolver.close();
            return var4_3;
        }
        object2 = contentResolver;
        object = contentResolver;
        try {
            String string2;
            object = object2 = (string2 = contentResolver.getString(contentResolver.getColumnIndex("aid")));
            if (contentResolver == null) return object;
        }
        catch (Exception var0_1) {
            object = object2;
            try {
                Log.d((String)TAG, (String)("Caught unexpected exception in getAttributionId(): " + var0_1.toString()));
                object = var4_3;
                if (object2 == null) return object;
            }
            catch (Throwable var0_2) {
                if (object == null) throw var0_2;
                object.close();
                throw var0_2;
            }
            object2.close();
            return null;
        }
        contentResolver.close();
        return object2;
    }

    public static File getCacheDir() {
        Validate.sdkInitialized();
        return cacheDir;
    }

    public static int getCallbackRequestCodeOffset() {
        Validate.sdkInitialized();
        return callbackRequestCodeOffset;
    }

    public static String getClientToken() {
        Validate.sdkInitialized();
        return appClientToken;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Executor getExecutor() {
        Object object = LOCK;
        synchronized (object) {
            if (executor == null) {
                Executor executor;
                Executor executor2 = executor = FacebookSdk.getAsyncTaskExecutor();
                if (executor == null) {
                    executor2 = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
                }
                FacebookSdk.executor = executor2;
            }
            return executor;
        }
    }

    public static String getFacebookDomain() {
        return facebookDomain;
    }

    public static boolean getLimitEventAndDataUsage(Context context) {
        Validate.sdkInitialized();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Set<LoggingBehavior> getLoggingBehaviors() {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            return Collections.unmodifiableSet(new HashSet<LoggingBehavior>(loggingBehaviors));
        }
    }

    public static long getOnProgressThreshold() {
        Validate.sdkInitialized();
        return onProgressThreshold.get();
    }

    public static String getSdkVersion() {
        Validate.sdkInitialized();
        return "4.0.0";
    }

    public static boolean isDebugEnabled() {
        return isDebugEnabled;
    }

    public static boolean isFacebookRequestCode(int n2) {
        if (n2 >= callbackRequestCodeOffset && n2 < callbackRequestCodeOffset + 100) {
            return true;
        }
        return false;
    }

    public static boolean isInitialized() {
        synchronized (FacebookSdk.class) {
            boolean bl = sdkInitialized;
            return bl;
        }
    }

    public static boolean isLegacyTokenUpgradeSupported() {
        return isLegacyTokenUpgradeSupported;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean isLoggingBehaviorEnabled(LoggingBehavior loggingBehavior) {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            if (!FacebookSdk.isDebugEnabled()) return false;
            if (!loggingBehaviors.contains((Object)loggingBehavior)) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static void loadDefaultsFromMetadata(Context context) {
        block4 : {
            if (context == null) {
                return;
            }
            try {
                if ((context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128)) == null) return;
                if (context.metaData == null) return;
                if (applicationId != null) break block4;
            }
            catch (PackageManager.NameNotFoundException var0_1) {
                return;
            }
            applicationId = context.metaData.getString("com.facebook.sdk.ApplicationId");
        }
        if (applicationName == null) {
            applicationName = context.metaData.getString("com.facebook.sdk.ApplicationName");
        }
        if (appClientToken != null) return;
        appClientToken = context.metaData.getString("com.facebook.sdk.ClientToken");
    }

    /*
     * Exception decompiling
     */
    static GraphResponse publishInstallAndWaitForResponse(Context var0, String var1_4) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl8 : TryStatement: try { 1[TRYBLOCK]

        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:44)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:22)
        // org.benf.cfr.reader.util.graph.GraphVisitorDFS.process(GraphVisitorDFS.java:68)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner.removeUnreachableCode(Cleaner.java:54)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.RemoveDeterministicJumps.apply(RemoveDeterministicJumps.java:35)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:519)
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

    public static void publishInstallAsync(final Context context, final String string2) {
        context = context.getApplicationContext();
        FacebookSdk.getExecutor().execute(new Runnable(){

            @Override
            public void run() {
                FacebookSdk.publishInstallAndWaitForResponse(context, string2);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void removeLoggingBehavior(LoggingBehavior loggingBehavior) {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            loggingBehaviors.remove((Object)loggingBehavior);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void sdkInitialize(Context futureTask) {
        synchronized (FacebookSdk.class) {
            block6 : {
                boolean bl = sdkInitialized;
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            Validate.notNull(futureTask, "applicationContext");
            applicationContext = futureTask.getApplicationContext();
            FacebookSdk.loadDefaultsFromMetadata(applicationContext);
            Utility.loadAppSettingsAsync(applicationContext, applicationId);
            BoltsMeasurementEventListener.getInstance(applicationContext);
            cacheDir = applicationContext.getCacheDir();
            futureTask = new FutureTask(new Callable<Void>(){

                @Override
                public Void call() throws Exception {
                    AccessTokenManager.getInstance().loadCurrentAccessToken();
                    ProfileManager.getInstance().loadCurrentProfile();
                    if (AccessToken.getCurrentAccessToken() != null && Profile.getCurrentProfile() == null) {
                        Profile.fetchProfileForCurrentAccessToken();
                    }
                    return null;
                }
            });
            Executors.newSingleThreadExecutor().execute(futureTask);
            sdkInitialized = true;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void sdkInitialize(Context context, int n2) {
        synchronized (FacebookSdk.class) {
            if (sdkInitialized.booleanValue() && n2 != callbackRequestCodeOffset) {
                throw new FacebookException("The callback request code offset can't be updated once the SDK is initialized.");
            }
            if (n2 < 0) {
                throw new FacebookException("The callback request code offset can't be negative.");
            }
            callbackRequestCodeOffset = n2;
            FacebookSdk.sdkInitialize(context);
            return;
        }
    }

    public static void setApplicationId(String string2) {
        applicationId = string2;
    }

    public static void setApplicationName(String string2) {
        applicationName = string2;
    }

    public static void setCacheDir(File file) {
        cacheDir = file;
    }

    public static void setClientToken(String string2) {
        appClientToken = string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void setExecutor(Executor executor) {
        Validate.notNull(executor, "executor");
        Object object = LOCK;
        synchronized (object) {
            FacebookSdk.executor = executor;
            return;
        }
    }

    public static void setFacebookDomain(String string2) {
        Log.w((String)TAG, (String)"WARNING: Calling setFacebookDomain from non-DEBUG code.");
        facebookDomain = string2;
    }

    public static void setIsDebugEnabled(boolean bl) {
        isDebugEnabled = bl;
    }

    public static void setLegacyTokenUpgradeSupported(boolean bl) {
        isLegacyTokenUpgradeSupported = bl;
    }

    public static void setLimitEventAndDataUsage(Context context, boolean bl) {
        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("limitEventUsage", bl).apply();
    }

    public static void setOnProgressThreshold(long l2) {
        onProgressThreshold.set(l2);
    }

    private static void updateGraphDebugBehavior() {
        if (loggingBehaviors.contains((Object)LoggingBehavior.GRAPH_API_DEBUG_INFO) && !loggingBehaviors.contains((Object)LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            loggingBehaviors.add(LoggingBehavior.GRAPH_API_DEBUG_WARNING);
        }
    }

}

