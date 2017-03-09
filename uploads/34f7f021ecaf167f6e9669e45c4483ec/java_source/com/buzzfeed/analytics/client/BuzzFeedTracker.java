/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.AsyncTask
 *  android.text.TextUtils
 *  com.lotame.android.CrowdControl
 *  com.lotame.android.CrowdControl$Protocol
 *  com.quantcast.measurement.service.QuantcastClient
 */
package com.buzzfeed.analytics.client;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.analytics.R;
import com.buzzfeed.analytics.adjust.AdjustConfiguration;
import com.buzzfeed.analytics.model.GAEvent;
import com.buzzfeed.toolkit.util.LogUtil;
import com.comscore.analytics.comScore;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.lotame.android.CrowdControl;
import com.quantcast.measurement.service.QuantcastClient;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class BuzzFeedTracker {
    private static final String ADJUST_TYPE = "Adjust IO";
    private static final String GA_TYPE = "Google Analytics";
    public static final Integer GOOGLE_ANALYTICS_DISPATCH_INTERVAL;
    private static final String LOTAME_TYPE = "Lotame";
    private static final String QUANTCAST_TYPE = "Quantcast";
    private static final String TAG;
    private static AdjustConfiguration sAdjustConfiguration;
    private static CrowdControl sCrowdControl;
    private static boolean sDebug;
    private static BuzzFeedTracker sInstance;
    private static boolean sQuantcastError;
    private static String sQuantcastKey;
    private static ArrayList<String> sTrackLog;
    private static Tracker sTracker;
    private static int sTrackingLogMaxLines;

    static {
        TAG = LogUtil.makeLogTag(BuzzFeedTracker.class);
        GOOGLE_ANALYTICS_DISPATCH_INTERVAL = 120;
        sTrackingLogMaxLines = 0;
        sQuantcastError = false;
        sDebug = false;
        sTrackLog = new ArrayList();
    }

    protected BuzzFeedTracker() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void clearTrackList() {
        ArrayList<String> arrayList = sTrackLog;
        synchronized (arrayList) {
            sTrackLog.clear();
            return;
        }
    }

    public static BuzzFeedTracker getInstance() {
        synchronized (BuzzFeedTracker.class) {
            if (sInstance == null) {
                sInstance = new BuzzFeedTracker();
            }
            BuzzFeedTracker buzzFeedTracker = sInstance;
            return buzzFeedTracker;
        }
    }

    public static ArrayList<String> getTrackingLog() {
        return sTrackLog;
    }

    public static int getTrackingLogMaxLines() {
        return sTrackingLogMaxLines;
    }

    public static boolean isDebug() {
        return sDebug;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void logTrackingData(String string2, String string3) {
        if (sDebug && sTrackingLogMaxLines > 0) {
            ArrayList<String> arrayList = sTrackLog;
            synchronized (arrayList) {
                ArrayList<String> arrayList2 = sTrackLog;
                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                if (sTrackingLogMaxLines > 0 && arrayList2.size() >= sTrackingLogMaxLines) {
                    arrayList2.remove(arrayList2.size() - 1);
                }
                arrayList2.add(0, simpleDateFormat.format(calendar.getTime()) + " " + string2 + " " + string3);
            }
        }
        LogUtil.d(TAG, string2 + ": " + string3);
    }

    public static void onActivityPause() {
        if (sDebug) {
            LogUtil.d(TAG, "onActivityPause");
        }
        sAdjustConfiguration.onPause();
        comScore.onExitForeground();
    }

    public static void onActivityResume() {
        if (sDebug) {
            LogUtil.d(TAG, "onActivityResume");
        }
        sAdjustConfiguration.onResume();
        comScore.onEnterForeground();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void onActivityStart(Activity activity) {
        if (sDebug) {
            LogUtil.d(TAG, "onActivityStart");
        }
        if (!TextUtils.isEmpty((CharSequence)sQuantcastKey) && !sQuantcastError) {
            long l2 = System.currentTimeMillis();
            try {
                QuantcastClient.enableLogging((boolean)sDebug);
                QuantcastClient.activityStart((Context)activity, (String)sQuantcastKey, (String)null, (String[])null);
            }
            catch (Exception var0_1) {
                sQuantcastError = true;
                LogUtil.e(TAG, "Error initializing Quantcast; disabling", var0_1);
            }
            LogUtil.i(TAG, "Finished Quantcast initialization (in " + (double)(System.currentTimeMillis() - l2) / 1000.0 + " secs)");
        } else {
            LogUtil.i(TAG, "Skipping Quantcast initialization");
        }
        if (sCrowdControl != null) {
            sCrowdControl.startSession();
        }
    }

    public static void onActivityStop(Activity activity) {
        if (sDebug) {
            LogUtil.d(TAG, "onActivityStop");
        }
        QuantcastClient.activityStop();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void onApplicationCreate(Context context, String string2, @Nullable String string3, @Nullable String string4, @Nullable String string5, @Nullable String string6, AdjustConfiguration adjustConfiguration) {
        if (sDebug) {
            LogUtil.d(TAG, "onApplicationCreate");
        }
        if (!TextUtils.isEmpty((CharSequence)string4) && !TextUtils.isEmpty((CharSequence)string5)) {
            long l2 = System.currentTimeMillis();
            try {
                comScore.setAppContext(context);
                comScore.setCustomerC2(string4);
                comScore.setPublisherSecret(string5);
            }
            catch (Exception var3_4) {
                LogUtil.e(TAG, "Error initializing Comscore", var3_4);
            }
            LogUtil.i(TAG, "Finished Comscore initialization (in " + (double)(System.currentTimeMillis() - l2) / 1000.0 + " secs)");
        }
        sQuantcastKey = string3;
        if (string6 != null) {
            sCrowdControl = new CrowdControl(context, Integer.valueOf(string6).intValue(), CrowdControl.Protocol.HTTPS);
        }
        sAdjustConfiguration = adjustConfiguration;
        if (adjustConfiguration != null) {
            adjustConfiguration.configure(context);
        }
        BuzzFeedTracker.getInstance().startTracker(context, string2);
    }

    public static void setDebug(boolean bl) {
        sDebug = bl;
    }

    public static void setTrackingLogMaxLines(int n2) {
        sTrackingLogMaxLines = n2;
    }

    private void startTracker(Context object, String string2) {
        object = GoogleAnalytics.getInstance(object.getApplicationContext());
        if (sDebug) {
            object.setLocalDispatchPeriod(GOOGLE_ANALYTICS_DISPATCH_INTERVAL);
        }
        sTracker = object.newTracker(string2);
        sTracker.enableAdvertisingIdCollection(true);
    }

    public Tracker getTracker() {
        return sTracker;
    }

    public void trackAdjustEvent(String string2) {
        BuzzFeedTracker.logTrackingData("Adjust IO", " adjustEventToken=" + string2);
        sAdjustConfiguration.trackAdjustEvent(string2);
    }

    public void trackEvent(GAEvent gAEvent) {
        this.trackEvent(gAEvent.getCategory(), gAEvent.getAction(), gAEvent.getLabel(), gAEvent.getValue());
    }

    public void trackEvent(String string2, String string3, String string4) {
        this.trackEvent(string2, string3, string4, 0);
    }

    public void trackEvent(String string2, String string3, String string4, long l2) {
        BuzzFeedTracker.logTrackingData("Google Analytics", " Category=" + string2 + ", action=" + string3 + ", label=" + string4 + ", value=" + l2);
        sTracker.send(new HitBuilders.EventBuilder().setCategory(string2).setAction(string3).setLabel(string4).setValue(l2).build());
    }

    public void trackEvent(String object, String object2, String object32, @Nullable Map<Integer, String> map) {
        void var4_6;
        BuzzFeedTracker.logTrackingData("Google Analytics", " Category=" + (String)object + ", action=" + (String)((Object)object2) + ", label=" + (String)object32 + ", Custom Dimensions=" + var4_6.toString());
        object = new HitBuilders.EventBuilder().setCategory((String)object).setAction((String)((Object)object2)).setLabel((String)object32);
        if (var4_6 != null) {
            for (Map.Entry entry : var4_6.entrySet()) {
                object.setCustomDimension((Integer)entry.getKey(), (String)entry.getValue());
            }
        }
        sTracker.send(object.build());
    }

    public void trackLotameEvent(String string2, String string3) {
        if (sCrowdControl != null) {
            sCrowdControl.add(string2, string3);
            sCrowdControl.bcpAsync();
            BuzzFeedTracker.logTrackingData("Lotame", " key= " + string3);
            return;
        }
        throw new RuntimeException("Lotame tracking must be initialized with a client id in onApplicationCreate");
    }

    public void trackPageView(String string2, @Nullable Map<Integer, String> map) {
        HitBuilders.ScreenViewBuilder screenViewBuilder = new HitBuilders.ScreenViewBuilder();
        if (map != null) {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                screenViewBuilder.setCustomDimension(entry.getKey(), entry.getValue());
            }
        }
        sTracker.setScreenName(string2);
        sTracker.send(screenViewBuilder.build());
        if (map != null) {
            BuzzFeedTracker.logTrackingData("Google Analytics", "Custom Vars: " + map.toString());
        }
        BuzzFeedTracker.logTrackingData("Google Analytics", "ScreenView= " + string2);
    }

    public void trackQuantcastEvent(String string2, String string3) {
        BuzzFeedTracker.logTrackingData("Quantcast", " name= " + string2 + " labels= " + string3);
        QuantcastClient.logEvent((String)string2, (String[])new String[]{string3});
    }

    public void trackQuantcastEvent(String string2, String[] arrstring) {
        BuzzFeedTracker.logTrackingData("Quantcast", " name= " + string2 + " labels= " + Arrays.toString(arrstring));
        QuantcastClient.logEvent((String)string2, (String[])arrstring);
    }

    public void trackScreenshot(Context context) {
        this.trackEvent(context.getString(R.string.ga_category_screenshot), context.getString(R.string.ga_action_screenshot), null);
    }
}

