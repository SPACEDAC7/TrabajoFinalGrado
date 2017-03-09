/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  android.util.Log
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.appevents;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import bolts.AppLinks;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.FacebookTimeSpentData;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppEventsLogger {
    public static final String ACTION_APP_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_FLUSHED";
    public static final String APP_EVENTS_EXTRA_FLUSH_RESULT = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
    public static final String APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
    public static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 86400;
    private static final int FLUSH_APP_SESSION_INFO_IN_SECONDS = 30;
    private static final int FLUSH_PERIOD_IN_SECONDS = 15;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private static final String TAG = AppEventsLogger.class.getCanonicalName();
    private static String anonymousAppDeviceGUID;
    private static Context applicationContext;
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    private static FlushBehavior flushBehavior;
    private static boolean isOpenedByApplink;
    private static boolean requestInFlight;
    private static String sourceApplication;
    private static Map<AccessTokenAppIdPair, SessionEventsState> stateMap;
    private static Object staticLock;
    private final AccessTokenAppIdPair accessTokenAppId;
    private final Context context;

    static {
        stateMap = new ConcurrentHashMap<AccessTokenAppIdPair, SessionEventsState>();
        flushBehavior = FlushBehavior.AUTO;
        staticLock = new Object();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private AppEventsLogger(Context context, String object, AccessToken object2) {
        Validate.notNull((Object)context, "context");
        this.context = context;
        AccessToken accessToken = object2;
        if (object2 == null) {
            accessToken = AccessToken.getCurrentAccessToken();
        }
        if (accessToken != null && (object == null || object.equals(accessToken.getApplicationId()))) {
            this.accessTokenAppId = new AccessTokenAppIdPair(accessToken);
        } else {
            object2 = object;
            if (object == null) {
                object2 = Utility.getMetadataApplicationId(context);
            }
            this.accessTokenAppId = new AccessTokenAppIdPair(null, (String)object2);
        }
        object = staticLock;
        synchronized (object) {
            if (applicationContext == null) {
                applicationContext = context.getApplicationContext();
            }
        }
        AppEventsLogger.initializeTimersIfNeeded();
    }

    static /* synthetic */ String access$1300() {
        return TAG;
    }

    private static int accumulatePersistedEvents() {
        PersistedEvents persistedEvents = PersistedEvents.readAndClearStore(applicationContext);
        int n2 = 0;
        Iterator<AccessTokenAppIdPair> iterator = persistedEvents.keySet().iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            SessionEventsState sessionEventsState = AppEventsLogger.getSessionEventsState(applicationContext, (AccessTokenAppIdPair)object);
            object = persistedEvents.getEvents((AccessTokenAppIdPair)object);
            sessionEventsState.accumulatePersistedEvents((List<AppEvent>)object);
            n2 += object.size();
        }
        return n2;
    }

    public static void activateApp(Context context) {
        FacebookSdk.sdkInitialize(context);
        AppEventsLogger.activateApp(context, Utility.getMetadataApplicationId(context));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void activateApp(Context object, String string2) {
        if (object == null || string2 == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        if (object instanceof Activity) {
            AppEventsLogger.setSourceApplication((Activity)object);
        } else {
            AppEventsLogger.resetSourceApplication();
            Log.d((String)AppEventsLogger.class.getName(), (String)"To set source application the context of activateApp must be an instance of Activity");
        }
        FacebookSdk.publishInstallAsync((Context)object, string2);
        object = new AppEventsLogger((Context)object, string2, null);
        long l2 = System.currentTimeMillis();
        string2 = AppEventsLogger.getSourceApplication();
        backgroundExecutor.execute(new Runnable((AppEventsLogger)object, l2, string2){
            final /* synthetic */ long val$eventTime;
            final /* synthetic */ AppEventsLogger val$logger;
            final /* synthetic */ String val$sourceApplicationInfo;

            @Override
            public void run() {
                this.val$logger.logAppSessionResumeEvent(this.val$eventTime, this.val$sourceApplicationInfo);
            }
        });
    }

    private static FlushStatistics buildAndExecuteRequests(FlushReason object, Set<AccessTokenAppIdPair> iterator) {
        FlushStatistics flushStatistics = new FlushStatistics();
        boolean bl = FacebookSdk.getLimitEventAndDataUsage(applicationContext);
        ArrayList<Object> arrayList = new ArrayList<Object>();
        iterator = iterator.iterator();
        while (iterator.hasNext()) {
            Object object2 = (AccessTokenAppIdPair)iterator.next();
            SessionEventsState sessionEventsState = AppEventsLogger.getSessionEventsState((AccessTokenAppIdPair)object2);
            if (sessionEventsState == null || (object2 = AppEventsLogger.buildRequestForSession((AccessTokenAppIdPair)object2, sessionEventsState, bl, flushStatistics)) == null) continue;
            arrayList.add(object2);
        }
        if (arrayList.size() > 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flushing %d events due to %s.", flushStatistics.numEvents, object.toString());
            iterator = arrayList.iterator();
            do {
                object = flushStatistics;
                if (iterator.hasNext()) {
                    ((GraphRequest)iterator.next()).executeAndWait();
                    continue;
                }
                break;
                break;
            } while (true);
        } else {
            object = null;
        }
        return object;
    }

    private static GraphRequest buildRequestForSession(final AccessTokenAppIdPair accessTokenAppIdPair, final SessionEventsState sessionEventsState, boolean bl, final FlushStatistics flushStatistics) {
        Bundle bundle;
        String string2 = accessTokenAppIdPair.getApplicationId();
        Utility.FetchedAppSettings fetchedAppSettings = Utility.queryAppSettings(string2, false);
        final GraphRequest graphRequest = GraphRequest.newPostRequest(null, String.format("%s/activities", string2), null, null);
        string2 = bundle = graphRequest.getParameters();
        if (bundle == null) {
            string2 = new Bundle();
        }
        string2.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
        graphRequest.setParameters((Bundle)string2);
        if (fetchedAppSettings == null) {
            return null;
        }
        int n2 = sessionEventsState.populateRequest(graphRequest, fetchedAppSettings.supportsImplicitLogging(), bl);
        if (n2 == 0) {
            return null;
        }
        flushStatistics.numEvents += n2;
        graphRequest.setCallback(new GraphRequest.Callback(){

            @Override
            public void onCompleted(GraphResponse graphResponse) {
                AppEventsLogger.handleResponse(accessTokenAppIdPair, graphRequest, graphResponse, sessionEventsState, flushStatistics);
            }
        });
        return graphRequest;
    }

    public static void deactivateApp(Context context) {
        AppEventsLogger.deactivateApp(context, Utility.getMetadataApplicationId(context));
    }

    public static void deactivateApp(Context object, String string2) {
        if (object == null || string2 == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        AppEventsLogger.resetSourceApplication();
        object = new AppEventsLogger((Context)object, string2, null);
        long l2 = System.currentTimeMillis();
        backgroundExecutor.execute(new Runnable((AppEventsLogger)object, l2){
            final /* synthetic */ long val$eventTime;
            final /* synthetic */ AppEventsLogger val$logger;

            @Override
            public void run() {
                this.val$logger.logAppSessionSuspendEvent(this.val$eventTime);
            }
        });
    }

    static void eagerFlush() {
        if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY) {
            AppEventsLogger.flush(FlushReason.EAGER_FLUSHING_EVENT);
        }
    }

    private static void flush(final FlushReason flushReason) {
        FacebookSdk.getExecutor().execute(new Runnable(){

            @Override
            public void run() {
                AppEventsLogger.flushAndWait(flushReason);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static void flushAndWait(FlushReason object) {
        Object object2 = staticLock;
        // MONITORENTER : object2
        if (requestInFlight) {
            // MONITOREXIT : object2
            return;
        }
        requestInFlight = true;
        HashSet<AccessTokenAppIdPair> hashSet = new HashSet<AccessTokenAppIdPair>(stateMap.keySet());
        // MONITOREXIT : object2
        AppEventsLogger.accumulatePersistedEvents();
        object2 = null;
        try {
            object = AppEventsLogger.buildAndExecuteRequests((FlushReason)((Object)object), hashSet);
        }
        catch (Exception var0_1) {
            Utility.logd(TAG, "Caught unexpected exception while flushing: ", var0_1);
            object = object2;
        }
        object2 = staticLock;
        // MONITORENTER : object2
        requestInFlight = false;
        // MONITOREXIT : object2
        if (object == null) return;
        object2 = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
        object2.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", object.numEvents);
        object2.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", (Serializable)((Object)object.result));
        LocalBroadcastManager.getInstance(applicationContext).sendBroadcast((Intent)object2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void flushIfNecessary() {
        Object object = staticLock;
        synchronized (object) {
            if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY && AppEventsLogger.getAccumulatedEventCount() > 100) {
                AppEventsLogger.flush(FlushReason.EVENT_THRESHOLD);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static int getAccumulatedEventCount() {
        Object object = staticLock;
        synchronized (object) {
            int n2 = 0;
            Iterator<SessionEventsState> iterator = stateMap.values().iterator();
            while (iterator.hasNext()) {
                n2 += iterator.next().getAccumulatedEventCount();
            }
            return n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String getAnonymousAppDeviceGUID(Context context) {
        if (anonymousAppDeviceGUID == null) {
            Object object = staticLock;
            synchronized (object) {
                if (anonymousAppDeviceGUID == null && (AppEventsLogger.anonymousAppDeviceGUID = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null)) == null) {
                    anonymousAppDeviceGUID = "XZ" + UUID.randomUUID().toString();
                    context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", anonymousAppDeviceGUID).apply();
                }
            }
        }
        return anonymousAppDeviceGUID;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static FlushBehavior getFlushBehavior() {
        Object object = staticLock;
        synchronized (object) {
            return flushBehavior;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static SessionEventsState getSessionEventsState(Context context, AccessTokenAppIdPair accessTokenAppIdPair) {
        SessionEventsState sessionEventsState = stateMap.get(accessTokenAppIdPair);
        AttributionIdentifiers attributionIdentifiers = null;
        if (sessionEventsState == null) {
            attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
        }
        Object object = staticLock;
        // MONITORENTER : object
        try {
            SessionEventsState sessionEventsState2;
            sessionEventsState = sessionEventsState2 = stateMap.get(accessTokenAppIdPair);
            if (sessionEventsState2 != null) return sessionEventsState;
            sessionEventsState = new SessionEventsState(attributionIdentifiers, context.getPackageName(), AppEventsLogger.getAnonymousAppDeviceGUID(context));
        }
        catch (Throwable var0_2) {
            throw context;
        }
        try {
            stateMap.put(accessTokenAppIdPair, sessionEventsState);
            // MONITOREXIT : object
            return sessionEventsState;
        }
        catch (Throwable var0_1) {
            throw context;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static SessionEventsState getSessionEventsState(AccessTokenAppIdPair object) {
        Object object2 = staticLock;
        synchronized (object2) {
            return stateMap.get(object);
        }
    }

    static String getSourceApplication() {
        String string2 = "Unclassified";
        if (isOpenedByApplink) {
            string2 = "Applink";
        }
        String string3 = string2;
        if (sourceApplication != null) {
            string3 = string2 + "(" + sourceApplication + ")";
        }
        return string3;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void handleResponse(AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, GraphResponse object, SessionEventsState sessionEventsState, FlushStatistics flushStatistics) {
        FacebookRequestError facebookRequestError = object.getError();
        String string2 = "Success";
        FlushResult flushResult = FlushResult.SUCCESS;
        if (facebookRequestError != null) {
            if (facebookRequestError.getErrorCode() == -1) {
                string2 = "Failed: No Connectivity";
                flushResult = FlushResult.NO_CONNECTIVITY;
            } else {
                string2 = String.format("Failed:\n  Response: %s\n  Error %s", object.toString(), facebookRequestError.toString());
                flushResult = FlushResult.SERVER_ERROR;
            }
        }
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS)) {
            object = (String)graphRequest.getTag();
            try {
                object = new JSONArray((String)object).toString(2);
            }
            catch (JSONException var2_3) {
                object = "<Can't encode events for debug logging>";
            }
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.getGraphObject().toString(), string2, object);
        }
        boolean bl = facebookRequestError != null;
        sessionEventsState.clearInFlightAndStats(bl);
        if (flushResult == FlushResult.NO_CONNECTIVITY) {
            PersistedEvents.persistEvents(applicationContext, accessTokenAppIdPair, sessionEventsState);
        }
        if (flushResult != FlushResult.SUCCESS && flushStatistics.result != FlushResult.NO_CONNECTIVITY) {
            flushStatistics.result = flushResult;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void initializeTimersIfNeeded() {
        Object object = staticLock;
        synchronized (object) {
            if (backgroundExecutor != null) {
                return;
            }
            backgroundExecutor = new ScheduledThreadPoolExecutor(1);
        }
        object = new Runnable(){

            @Override
            public void run() {
                if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY) {
                    AppEventsLogger.flushAndWait(FlushReason.TIMER);
                }
            }
        };
        backgroundExecutor.scheduleAtFixedRate((Runnable)object, 0, 15, TimeUnit.SECONDS);
        object = new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void run() {
                HashSet<String> hashSet = new HashSet<String>();
                Iterator iterator = staticLock;
                synchronized (iterator) {
                    Iterator iterator2 = stateMap.keySet().iterator();
                    while (iterator2.hasNext()) {
                        hashSet.add(((AccessTokenAppIdPair)iterator2.next()).getApplicationId());
                    }
                }
                iterator = hashSet.iterator();
                while (iterator.hasNext()) {
                    Utility.queryAppSettings((String)iterator.next(), true);
                }
                return;
            }
        };
        backgroundExecutor.scheduleAtFixedRate((Runnable)object, 0, 86400, TimeUnit.SECONDS);
    }

    private void logAppSessionResumeEvent(long l2, String string2) {
        PersistedAppSessionInfo.onResume(applicationContext, this.accessTokenAppId, this, l2, string2);
    }

    private void logAppSessionSuspendEvent(long l2) {
        PersistedAppSessionInfo.onSuspend(applicationContext, this.accessTokenAppId, this, l2);
    }

    private static void logEvent(final Context context, final AppEvent appEvent, final AccessTokenAppIdPair accessTokenAppIdPair) {
        FacebookSdk.getExecutor().execute(new Runnable(){

            @Override
            public void run() {
                AppEventsLogger.getSessionEventsState(context, accessTokenAppIdPair).addEvent(appEvent);
                AppEventsLogger.flushIfNecessary();
            }
        });
    }

    private void logEvent(String object, Double d2, Bundle bundle, boolean bl) {
        object = new AppEvent(this.context, (String)object, d2, bundle, bl);
        AppEventsLogger.logEvent(this.context, (AppEvent)object, this.accessTokenAppId);
    }

    public static AppEventsLogger newLogger(Context context) {
        return new AppEventsLogger(context, null, null);
    }

    public static AppEventsLogger newLogger(Context context, AccessToken accessToken) {
        return new AppEventsLogger(context, null, accessToken);
    }

    public static AppEventsLogger newLogger(Context context, String string2) {
        return new AppEventsLogger(context, string2, null);
    }

    public static AppEventsLogger newLogger(Context context, String string2, AccessToken accessToken) {
        return new AppEventsLogger(context, string2, accessToken);
    }

    private static void notifyDeveloperError(String string2) {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", string2);
    }

    public static void onContextStop() {
        PersistedEvents.persistEvents(applicationContext, stateMap);
    }

    static void resetSourceApplication() {
        sourceApplication = null;
        isOpenedByApplink = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void setFlushBehavior(FlushBehavior flushBehavior) {
        Object object = staticLock;
        synchronized (object) {
            AppEventsLogger.flushBehavior = flushBehavior;
            return;
        }
    }

    private static void setSourceApplication(Activity activity) {
        Object object = activity.getCallingActivity();
        if (object != null) {
            if ((object = object.getPackageName()).equals(activity.getPackageName())) {
                AppEventsLogger.resetSourceApplication();
                return;
            }
            sourceApplication = object;
        }
        if ((activity = activity.getIntent()) == null || activity.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
            AppEventsLogger.resetSourceApplication();
            return;
        }
        object = AppLinks.getAppLinkData((Intent)activity);
        if (object == null) {
            AppEventsLogger.resetSourceApplication();
            return;
        }
        isOpenedByApplink = true;
        if ((object = object.getBundle("referer_app_link")) == null) {
            sourceApplication = null;
            return;
        }
        sourceApplication = object.getString("package");
        activity.putExtra("_fbSourceApplicationHasBeenSet", true);
    }

    static void setSourceApplication(String string2, boolean bl) {
        sourceApplication = string2;
        isOpenedByApplink = bl;
    }

    public void flush() {
        AppEventsLogger.flush(FlushReason.EXPLICIT);
    }

    public String getApplicationId() {
        return this.accessTokenAppId.getApplicationId();
    }

    public boolean isValidForAccessToken(AccessToken object) {
        object = new AccessTokenAppIdPair((AccessToken)object);
        return this.accessTokenAppId.equals(object);
    }

    public void logEvent(String string2) {
        this.logEvent(string2, null);
    }

    public void logEvent(String string2, double d2) {
        this.logEvent(string2, d2, null);
    }

    public void logEvent(String string2, double d2, Bundle bundle) {
        this.logEvent(string2, d2, bundle, false);
    }

    public void logEvent(String string2, Bundle bundle) {
        this.logEvent(string2, null, bundle, false);
    }

    public void logPurchase(BigDecimal bigDecimal, Currency currency) {
        this.logPurchase(bigDecimal, currency, null);
    }

    public void logPurchase(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (bigDecimal == null) {
            AppEventsLogger.notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null) {
            AppEventsLogger.notifyDeveloperError("currency cannot be null");
            return;
        }
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putString("fb_currency", currency.getCurrencyCode());
        this.logEvent("fb_mobile_purchase", bigDecimal.doubleValue(), bundle2);
        AppEventsLogger.eagerFlush();
    }

    public void logSdkEvent(String string2, Double d2, Bundle bundle) {
        this.logEvent(string2, d2, bundle, true);
    }

    private static class AccessTokenAppIdPair
    implements Serializable {
        private static final long serialVersionUID = 1;
        private final String accessTokenString;
        private final String applicationId;

        AccessTokenAppIdPair(AccessToken accessToken) {
            this(accessToken.getToken(), FacebookSdk.getApplicationId());
        }

        AccessTokenAppIdPair(String string2, String string3) {
            String string4 = string2;
            if (Utility.isNullOrEmpty(string2)) {
                string4 = null;
            }
            this.accessTokenString = string4;
            this.applicationId = string3;
        }

        private Object writeReplace() {
            return new SerializationProxyV1(this.accessTokenString, this.applicationId);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (!(object instanceof AccessTokenAppIdPair)) {
                return false;
            }
            object = (AccessTokenAppIdPair)object;
            if (!Utility.areObjectsEqual(object.accessTokenString, this.accessTokenString)) return false;
            if (!Utility.areObjectsEqual(object.applicationId, this.applicationId)) return false;
            return true;
        }

        String getAccessTokenString() {
            return this.accessTokenString;
        }

        String getApplicationId() {
            return this.applicationId;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n2 = 0;
            int n3 = this.accessTokenString == null ? 0 : this.accessTokenString.hashCode();
            if (this.applicationId == null) {
                return n3 ^ n2;
            }
            n2 = this.applicationId.hashCode();
            return n3 ^ n2;
        }

        private static class SerializationProxyV1
        implements Serializable {
            private static final long serialVersionUID = -2488473066578201069L;
            private final String accessTokenString;
            private final String appId;

            private SerializationProxyV1(String string2, String string3) {
                this.accessTokenString = string2;
                this.appId = string3;
            }

            private Object readResolve() {
                return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
            }
        }

    }

    static class AppEvent
    implements Serializable {
        private static final long serialVersionUID = 1;
        private static final HashSet<String> validatedIdentifiers = new HashSet();
        private boolean isImplicit;
        private JSONObject jsonObject;
        private String name;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public AppEvent(Context object, String string22, Double object2, Bundle bundle, boolean bl) {
            try {
                this.validateIdentifier(string22);
                this.name = string22;
                this.isImplicit = bl;
                this.jsonObject = new JSONObject();
                this.jsonObject.put("_eventName", (Object)string22);
                this.jsonObject.put("_logTime", System.currentTimeMillis() / 1000);
                this.jsonObject.put("_ui", (Object)Utility.getActivityName((Context)object));
                if (object2 != null) {
                    this.jsonObject.put("_valueToSum", object2.doubleValue());
                }
                if (this.isImplicit) {
                    this.jsonObject.put("_implicitlyLogged", (Object)"1");
                }
                if (bundle != null) {
                    for (String string22 : bundle.keySet()) {
                        this.validateIdentifier(string22);
                        object2 = bundle.get(string22);
                        if (!(object2 instanceof String) && !(object2 instanceof Number)) {
                            throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", object2, string22));
                        }
                        this.jsonObject.put(string22, (Object)object2.toString());
                    }
                }
                if (this.isImplicit) return;
                {
                    Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", this.jsonObject.toString());
                    return;
                }
            }
            catch (JSONException var1_2) {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", var1_2.toString());
                this.jsonObject = null;
                return;
            }
            catch (FacebookException var1_3) {
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", var1_3.toString());
                this.jsonObject = null;
                return;
            }
        }

        private AppEvent(String string2, boolean bl) throws JSONException {
            this.jsonObject = new JSONObject(string2);
            this.isImplicit = bl;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        private void validateIdentifier(String string2) throws FacebookException {
            if (string2 == null || string2.length() == 0 || string2.length() > 40) {
                String string3 = string2;
                if (string2 != null) throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", string3, 40));
                string3 = "<None Provided>";
                throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", string3, 40));
            }
            HashSet<String> hashSet = validatedIdentifiers;
            // MONITORENTER : hashSet
            boolean bl = validatedIdentifiers.contains(string2);
            // MONITOREXIT : hashSet
            if (bl) return;
            if (!string2.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", string2));
            hashSet = validatedIdentifiers;
            // MONITORENTER : hashSet
            validatedIdentifiers.add(string2);
            // MONITOREXIT : hashSet
        }

        private Object writeReplace() {
            return new SerializationProxyV1(this.jsonObject.toString(), this.isImplicit);
        }

        public boolean getIsImplicit() {
            return this.isImplicit;
        }

        public JSONObject getJSONObject() {
            return this.jsonObject;
        }

        public String getName() {
            return this.name;
        }

        public String toString() {
            return String.format("\"%s\", implicit: %b, json: %s", this.jsonObject.optString("_eventName"), this.isImplicit, this.jsonObject.toString());
        }

        private static class SerializationProxyV1
        implements Serializable {
            private static final long serialVersionUID = -2488473066578201069L;
            private final boolean isImplicit;
            private final String jsonString;

            private SerializationProxyV1(String string2, boolean bl) {
                this.jsonString = string2;
                this.isImplicit = bl;
            }

            private Object readResolve() throws JSONException {
                return new AppEvent(this.jsonString, this.isImplicit);
            }
        }

    }

    public static enum FlushBehavior {
        AUTO,
        EXPLICIT_ONLY;
        

        private FlushBehavior() {
        }
    }

    private static enum FlushReason {
        EXPLICIT,
        TIMER,
        SESSION_CHANGE,
        PERSISTED_EVENTS,
        EVENT_THRESHOLD,
        EAGER_FLUSHING_EVENT;
        

        private FlushReason() {
        }
    }

    private static enum FlushResult {
        SUCCESS,
        SERVER_ERROR,
        NO_CONNECTIVITY,
        UNKNOWN_ERROR;
        

        private FlushResult() {
        }
    }

    private static class FlushStatistics {
        public int numEvents = 0;
        public FlushResult result = FlushResult.SUCCESS;

        private FlushStatistics() {
        }
    }

    static class PersistedAppSessionInfo {
        private static final String PERSISTED_SESSION_INFO_FILENAME = "AppEventsLogger.persistedsessioninfo";
        private static final Runnable appSessionInfoFlushRunnable;
        private static Map<AccessTokenAppIdPair, FacebookTimeSpentData> appSessionInfoMap;
        private static boolean hasChanges;
        private static boolean isLoaded;
        private static final Object staticLock;

        static {
            staticLock = new Object();
            hasChanges = false;
            isLoaded = false;
            appSessionInfoFlushRunnable = new Runnable(){

                @Override
                public void run() {
                    PersistedAppSessionInfo.saveAppSessionInformation(applicationContext);
                }
            };
        }

        PersistedAppSessionInfo() {
        }

        private static FacebookTimeSpentData getTimeSpentData(Context object, AccessTokenAppIdPair accessTokenAppIdPair) {
            FacebookTimeSpentData facebookTimeSpentData;
            PersistedAppSessionInfo.restoreAppSessionInformation((Context)object);
            object = facebookTimeSpentData = appSessionInfoMap.get(accessTokenAppIdPair);
            if (facebookTimeSpentData == null) {
                object = new FacebookTimeSpentData();
                appSessionInfoMap.put(accessTokenAppIdPair, (FacebookTimeSpentData)object);
            }
            return object;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        static void onResume(Context context, AccessTokenAppIdPair accessTokenAppIdPair, AppEventsLogger appEventsLogger, long l2, String string2) {
            Object object = staticLock;
            synchronized (object) {
                PersistedAppSessionInfo.getTimeSpentData(context, accessTokenAppIdPair).onResume(appEventsLogger, l2, string2);
                PersistedAppSessionInfo.onTimeSpentDataUpdate();
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        static void onSuspend(Context context, AccessTokenAppIdPair accessTokenAppIdPair, AppEventsLogger appEventsLogger, long l2) {
            Object object = staticLock;
            synchronized (object) {
                PersistedAppSessionInfo.getTimeSpentData(context, accessTokenAppIdPair).onSuspend(appEventsLogger, l2);
                PersistedAppSessionInfo.onTimeSpentDataUpdate();
                return;
            }
        }

        private static void onTimeSpentDataUpdate() {
            if (!hasChanges) {
                hasChanges = true;
                backgroundExecutor.schedule(appSessionInfoFlushRunnable, 30, TimeUnit.SECONDS);
            }
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        private static void restoreAppSessionInformation(Context var0) {
            block20 : {
                var5_4 = null;
                var3_5 = null;
                var4_7 = null;
                var6_12 = PersistedAppSessionInfo.staticLock;
                // MONITORENTER : var6_12
                var1_13 = PersistedAppSessionInfo.isLoaded;
                if (var1_13) ** GOTO lbl23
                {
                    catch (Throwable var0_3) {
                        throw var0_1;
                    }
                }
                var2_14 = new ObjectInputStream(var0.openFileInput("AppEventsLogger.persistedsessioninfo"));
                PersistedAppSessionInfo.appSessionInfoMap = (HashMap)var2_14.readObject();
                Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info loaded");
                Utility.closeQuietly((Closeable)var2_14);
                var0.deleteFile("AppEventsLogger.persistedsessioninfo");
                if (PersistedAppSessionInfo.appSessionInfoMap == null) {
                    PersistedAppSessionInfo.appSessionInfoMap = new HashMap<AccessTokenAppIdPair, FacebookTimeSpentData>();
                }
                PersistedAppSessionInfo.isLoaded = true;
                PersistedAppSessionInfo.hasChanges = false;
lbl23: // 2 sources:
                // MONITOREXIT : var6_12
                return;
                {
                    catch (Throwable var0_2) {
                        throw var0_1;
                    }
                }
                catch (Exception var4_8) {
                    block21 : {
                        var2_14 = var5_4;
                        ** GOTO lbl35
                        catch (Throwable var4_10) {
                            var3_5 = var2_14;
                            var2_14 = var4_10;
                            break block20;
                        }
                        catch (Exception var4_11) {}
lbl35: // 2 sources:
                        var3_5 = var2_14;
                        Log.d((String)AppEventsLogger.access$1300(), (String)("Got unexpected exception: " + var4_9.toString()));
                        Utility.closeQuietly((Closeable)var2_14);
                        var0.deleteFile("AppEventsLogger.persistedsessioninfo");
                        if (PersistedAppSessionInfo.appSessionInfoMap == null) {
                            PersistedAppSessionInfo.appSessionInfoMap = new HashMap<AccessTokenAppIdPair, FacebookTimeSpentData>();
                        }
                        PersistedAppSessionInfo.isLoaded = true;
                        PersistedAppSessionInfo.hasChanges = false;
                        return;
                        catch (FileNotFoundException var3_6) {
                            break block21;
                        }
                        catch (FileNotFoundException var2_15) {
                            var2_14 = var4_7;
                        }
                    }
                    Utility.closeQuietly((Closeable)var2_14);
                    var0.deleteFile("AppEventsLogger.persistedsessioninfo");
                    if (PersistedAppSessionInfo.appSessionInfoMap == null) {
                        PersistedAppSessionInfo.appSessionInfoMap = new HashMap<AccessTokenAppIdPair, FacebookTimeSpentData>();
                    }
                    PersistedAppSessionInfo.isLoaded = true;
                    PersistedAppSessionInfo.hasChanges = false;
                    return;
                    catch (Throwable var2_16) {}
                }
            }
            Utility.closeQuietly(var3_5);
            var0.deleteFile("AppEventsLogger.persistedsessioninfo");
            if (PersistedAppSessionInfo.appSessionInfoMap == null) {
                PersistedAppSessionInfo.appSessionInfoMap = new HashMap<AccessTokenAppIdPair, FacebookTimeSpentData>();
            }
            PersistedAppSessionInfo.isLoaded = true;
            PersistedAppSessionInfo.hasChanges = false;
            throw var2_14;
        }

        /*
         * Exception decompiling
         */
        static void saveAppSessionInformation(Context var0) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:371)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:449)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
            // org.benf.cfr.reader.Main.doJar(Main.java:129)
            // org.benf.cfr.reader.Main.main(Main.java:181)
            throw new IllegalStateException("Decompilation failed");
        }

    }

    static class PersistedEvents {
        static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
        private static Object staticLock = new Object();
        private Context context;
        private HashMap<AccessTokenAppIdPair, List<AppEvent>> persistedEvents = new HashMap();

        private PersistedEvents(Context context) {
            this.context = context;
        }

        public static void persistEvents(Context context, AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
            HashMap<AccessTokenAppIdPair, SessionEventsState> hashMap = new HashMap<AccessTokenAppIdPair, SessionEventsState>();
            hashMap.put(accessTokenAppIdPair, sessionEventsState);
            PersistedEvents.persistEvents(context, hashMap);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public static void persistEvents(Context object, Map<AccessTokenAppIdPair, SessionEventsState> object2) {
            Object object3 = staticLock;
            synchronized (object3) {
                object = PersistedEvents.readAndClearStore((Context)object);
                object2 = object2.entrySet().iterator();
                do {
                    if (!object2.hasNext()) {
                        object.write();
                        return;
                    }
                    Map.Entry entry = (Map.Entry)object2.next();
                    List<AppEvent> list = ((SessionEventsState)entry.getValue()).getEventsToPersist();
                    if (list.size() == 0) continue;
                    object.addEvents((AccessTokenAppIdPair)entry.getKey(), list);
                } while (true);
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public static PersistedEvents readAndClearStore(Context object) {
            Object object2 = staticLock;
            synchronized (object2) {
                object = new PersistedEvents((Context)object);
                object.readAndClearStore();
                return object;
            }
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        private void readAndClearStore() {
            var4_1 = null;
            var2_2 = null;
            var3_4 = null;
            var1_9 = new ObjectInputStream(new BufferedInputStream(this.context.openFileInput("AppEventsLogger.persistedevents")));
            var2_2 = (HashMap)var1_9.readObject();
            this.context.getFileStreamPath("AppEventsLogger.persistedevents").delete();
            this.persistedEvents = var2_2;
            Utility.closeQuietly((Closeable)var1_9);
            return;
            catch (FileNotFoundException var1_10) {
                var1_9 = var3_4;
                ** GOTO lbl32
                catch (Exception var3_5) {
                    var1_9 = var4_1;
                    ** GOTO lbl23
                    catch (Throwable var3_7) {
                        var2_2 = var1_9;
                        var1_9 = var3_7;
                        ** GOTO lbl-1000
                    }
                    catch (Exception var3_8) {}
lbl23: // 2 sources:
                    var2_2 = var1_9;
                    try {
                        Log.d((String)AppEventsLogger.access$1300(), (String)("Got unexpected exception: " + var3_6.toString()));
                    }
                    catch (Throwable var1_11) lbl-1000: // 2 sources:
                    {
                        Utility.closeQuietly((Closeable)var2_2);
                        throw var1_9;
                    }
                    Utility.closeQuietly((Closeable)var1_9);
                    return;
                }
                catch (FileNotFoundException var2_3) {}
lbl32: // 2 sources:
                Utility.closeQuietly((Closeable)var1_9);
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
        private void write() {
            var1_1 = null;
            var3_3 = null;
            var2_6 = new ObjectOutputStream(new BufferedOutputStream(this.context.openFileOutput("AppEventsLogger.persistedevents", 0)));
            var2_6.writeObject(this.persistedEvents);
            Utility.closeQuietly((Closeable)var2_6);
            return;
            catch (Exception var1_2) {
                var2_6 = var3_3;
                var3_3 = var1_2;
                ** GOTO lbl18
                catch (Throwable var3_4) {
                    var1_1 = var2_6;
                    var2_6 = var3_4;
                    ** GOTO lbl-1000
                }
                catch (Exception var3_5) {}
lbl18: // 2 sources:
                var1_1 = var2_6;
                try {
                    Log.d((String)AppEventsLogger.access$1300(), (String)("Got unexpected exception: " + var3_3.toString()));
                }
                catch (Throwable var2_7) lbl-1000: // 2 sources:
                {
                    Utility.closeQuietly((Closeable)var1_1);
                    throw var2_6;
                }
                Utility.closeQuietly((Closeable)var2_6);
                return;
            }
        }

        public void addEvents(AccessTokenAppIdPair accessTokenAppIdPair, List<AppEvent> list) {
            if (!this.persistedEvents.containsKey(accessTokenAppIdPair)) {
                this.persistedEvents.put(accessTokenAppIdPair, new ArrayList());
            }
            this.persistedEvents.get(accessTokenAppIdPair).addAll(list);
        }

        public List<AppEvent> getEvents(AccessTokenAppIdPair accessTokenAppIdPair) {
            return this.persistedEvents.get(accessTokenAppIdPair);
        }

        public Set<AccessTokenAppIdPair> keySet() {
            return this.persistedEvents.keySet();
        }
    }

    static class SessionEventsState {
        public static final String ENCODED_EVENTS_KEY = "encoded_events";
        public static final String EVENT_COUNT_KEY = "event_count";
        public static final String NUM_SKIPPED_KEY = "num_skipped";
        private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;
        private List<AppEvent> accumulatedEvents = new ArrayList<AppEvent>();
        private String anonymousAppDeviceGUID;
        private AttributionIdentifiers attributionIdentifiers;
        private List<AppEvent> inFlightEvents = new ArrayList<AppEvent>();
        private int numSkippedEventsDueToFullBuffer;
        private String packageName;

        public SessionEventsState(AttributionIdentifiers attributionIdentifiers, String string2, String string3) {
            this.attributionIdentifiers = attributionIdentifiers;
            this.packageName = string2;
            this.anonymousAppDeviceGUID = string3;
        }

        private byte[] getStringAsByteArray(String arrby) {
            try {
                arrby = arrby.getBytes("UTF-8");
                return arrby;
            }
            catch (UnsupportedEncodingException var1_2) {
                Utility.logd("Encoding exception: ", var1_2);
                return null;
            }
        }

        /*
         * Loose catch block
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        private void populateRequest(GraphRequest graphRequest, int n2, JSONArray object, boolean bl) {
            JSONObject jSONObject;
            Bundle bundle;
            block8 : {
                block7 : {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put("event", (Object)"CUSTOM_APP_EVENTS");
                        if (this.numSkippedEventsDueToFullBuffer > 0) {
                            jSONObject.put("num_skipped_events", n2);
                        }
                        Utility.setAppEventAttributionParameters(jSONObject, this.attributionIdentifiers, this.anonymousAppDeviceGUID, bl);
                        Utility.setAppEventExtendedDeviceInfoParameters(jSONObject, applicationContext);
                        break block7;
                    }
                    catch (JSONException var6_8) {
                        break block8;
                    }
                    catch (Exception exception) {}
                }
                jSONObject.put("application_package_name", (Object)this.packageName);
            }
            graphRequest.setGraphObject(jSONObject);
            jSONObject = bundle = graphRequest.getParameters();
            if (bundle == null) {
                jSONObject = new Bundle();
            }
            if ((object = object.toString()) != null) {
                jSONObject.putByteArray("custom_events_file", this.getStringAsByteArray((String)object));
                graphRequest.setTag(object);
            }
            graphRequest.setParameters((Bundle)jSONObject);
        }

        public void accumulatePersistedEvents(List<AppEvent> list) {
            synchronized (this) {
                this.accumulatedEvents.addAll(list);
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void addEvent(AppEvent appEvent) {
            synchronized (this) {
                if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= 1000) {
                    ++this.numSkippedEventsDueToFullBuffer;
                } else {
                    this.accumulatedEvents.add(appEvent);
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void clearInFlightAndStats(boolean bl) {
            synchronized (this) {
                if (bl) {
                    this.accumulatedEvents.addAll(this.inFlightEvents);
                }
                this.inFlightEvents.clear();
                this.numSkippedEventsDueToFullBuffer = 0;
                return;
            }
        }

        public int getAccumulatedEventCount() {
            synchronized (this) {
                int n2 = this.accumulatedEvents.size();
                return n2;
            }
        }

        public List<AppEvent> getEventsToPersist() {
            synchronized (this) {
                List<AppEvent> list = this.accumulatedEvents;
                this.accumulatedEvents = new ArrayList<AppEvent>();
                return list;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public int populateRequest(GraphRequest graphRequest, boolean bl, boolean bl2) {
            int n2;
            JSONArray jSONArray;
            synchronized (this) {
                n2 = this.numSkippedEventsDueToFullBuffer;
                this.inFlightEvents.addAll(this.accumulatedEvents);
                this.accumulatedEvents.clear();
                jSONArray = new JSONArray();
                for (AppEvent appEvent : this.inFlightEvents) {
                    if (!bl && appEvent.getIsImplicit()) continue;
                    jSONArray.put((Object)appEvent.getJSONObject());
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
            }
            this.populateRequest(graphRequest, n2, jSONArray, bl2);
            return jSONArray.length();
        }
    }

}

