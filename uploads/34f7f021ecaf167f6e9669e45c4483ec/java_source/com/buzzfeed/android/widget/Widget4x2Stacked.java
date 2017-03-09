/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.AlarmManager
 *  android.app.PendingIntent
 *  android.appwidget.AppWidgetManager
 *  android.appwidget.AppWidgetProvider
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.os.Bundle
 */
package com.buzzfeed.android.widget;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.SplashActivity;
import com.buzzfeed.android.widget.WidgetConfigure;
import com.buzzfeed.android.widget.WidgetService;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import java.util.Arrays;

public class Widget4x2Stacked
extends AppWidgetProvider {
    private static final int MINUTE = 60000;
    private static final String PREFERENCES_PREFIX = "appWidgetId";
    private static final String PREFERENCES_SEPARATOR = "_";
    private static final String TAG = Widget4x2Stacked.class.getSimpleName();
    protected static final String WIDGET_NEXT_ACTION = "com.buzzfeed.android.widget.WIDGET_NEXT";
    protected static final String WIDGET_PREV_ACTION = "com.buzzfeed.android.widget.WIDGET_PREV";
    protected static final String WIDGET_REFRESH_ACTION = "com.buzzfeed.android.widget.WIDGET_REFRESH";
    protected static final String WIDGET_SELECT_ACTION = "com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT";
    private static PendingIntent alarmPendingIntent;

    private static void cancelWidgetAlarm(Context context) {
        if (alarmPendingIntent != null) {
            ((AlarmManager)context.getSystemService("alarm")).cancel(alarmPendingIntent);
        }
    }

    private void disableConnectivityReceiver(Context context) {
        LogUtil.d(TAG + ".disableConnectivityReceiver", "Connectivity Receiver disabled");
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class)ConnectivityReceiver.class), 2, 1);
    }

    private void enableConnectivityReceiver(Context context) {
        LogUtil.d(TAG + ".enableConnectivityReceiver", "Connectivity Receiver enabled");
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class)ConnectivityReceiver.class), 1, 1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected static String getAppWidgetIdPreferenceKey(int n2, String string2) {
        StringBuilder stringBuilder = new StringBuilder().append("appWidgetId_").append(String.valueOf(n2));
        if (string2 == null) {
            string2 = "";
            do {
                return stringBuilder.append(string2).toString();
                break;
            } while (true);
        }
        string2 = "_" + string2;
        return stringBuilder.append(string2).toString();
    }

    private static PendingIntent getWidgetAlarmPendingIntent4x2Stacked(Context context) {
        Intent intent = null;
        int[] arrn = AppWidgetManager.getInstance((Context)context).getAppWidgetIds(new ComponentName(context, (Class)Widget4x2Stacked.class));
        if (arrn.length > 0) {
            intent = new Intent(context, (Class)Widget4x2Stacked.class);
            intent.putExtra("appWidgetIds", arrn);
            intent.setAction("com.buzzfeed.android.widget.WIDGET_REFRESH");
            intent = PendingIntent.getBroadcast((Context)context, (int)0, (Intent)intent, (int)134217728);
        }
        return intent;
    }

    protected static void setWidgetAlarm(Context context) {
        Widget4x2Stacked.setWidgetAlarm(context, -1);
    }

    public static void setWidgetAlarm(Context context, long l2) {
        long l3 = Integer.parseInt(context.getString(2131296985)) * 60000;
        long l4 = l2;
        if (l2 == -1) {
            l4 = l3;
        }
        AlarmManager alarmManager = (AlarmManager)context.getSystemService("alarm");
        alarmPendingIntent = Widget4x2Stacked.getWidgetAlarmPendingIntent4x2Stacked(context);
        if (alarmPendingIntent != null) {
            alarmManager.setInexactRepeating(1, System.currentTimeMillis() + l4, l3, alarmPendingIntent);
        }
    }

    private void startClickIntent(Context context, String string2, String string3, String string4) {
        LogUtil.d(TAG + ".getOnClickIntent", "feedName=" + string2 + ", buzzUri=" + string3);
        Intent intent = new Intent(context, (Class)SplashActivity.class);
        intent.putExtra("KEY_WIDGET_LANG", string4);
        intent.putExtra("KEY_WIDGET_BUZZ_URL", string3);
        intent.putExtra("KEY_WIDGET_FEED_NAME", string2);
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    public static void update(Context context) {
        int[] arrn = AppWidgetManager.getInstance((Context)context).getAppWidgetIds(new ComponentName(context, (Class)Widget4x2Stacked.class));
        if (arrn.length > 0) {
            Intent intent = new Intent(context, (Class)Widget4x2Stacked.class);
            intent.putExtra("appWidgetIds", arrn);
            intent.setAction("com.buzzfeed.android.widget.WIDGET_REFRESH");
            context.sendBroadcast(intent);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onDeleted(Context context, int[] arrn) {
        String string2 = TAG + ".onDeleted";
        LogUtil.d(string2, "appWidgetIds=" + Arrays.toString(arrn));
        int n2 = arrn.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                super.onDeleted(context, arrn);
                return;
            }
            int n4 = arrn[n3];
            WidgetService.WidgetServiceFeed widgetServiceFeed = WidgetService.getWidgetServiceFeed(context, n4);
            WidgetConfigure.deletePreferences(context, n4);
            WidgetService.delWidgetServiceFeed(context, n4);
            if (widgetServiceFeed != null) {
                BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296774), context.getString(2131296743), widgetServiceFeed.feedName, 0);
            } else {
                LogUtil.w(string2, "Can't track the GA Tracker event because the widgetServiceFeed object is null");
            }
            ++n3;
        } while (true);
    }

    public void onDisabled(Context context) {
        LogUtil.d(TAG + ".onDisabled", "Called");
        Widget4x2Stacked.cancelWidgetAlarm(context);
        this.disableConnectivityReceiver(context);
        super.onDisabled(context);
    }

    public void onEnabled(Context context) {
        super.onEnabled(context);
        LogUtil.d(TAG + ".onEnabled", "Called");
        Widget4x2Stacked.setWidgetAlarm(context);
        this.enableConnectivityReceiver(context);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onReceive(Context context, Intent intent) {
        String string2 = TAG + ".onReceive";
        LogUtil.d(string2, "Intent action: " + intent.getAction());
        if (intent.getAction().equals("com.buzzfeed.intent.RESTART") && intent.hasExtra("phoenix_extra_package") && intent.getStringExtra("phoenix_extra_package").equals(context.getPackageName())) {
            Widget4x2Stacked.update(context);
        } else if (intent.getAction().equals("com.buzzfeed.android.widget.WIDGET_REFRESH")) {
            int[] arrn = intent.getExtras();
            if (arrn != null) {
                int n2 = arrn.getInt("appWidgetId");
                arrn = arrn.getIntArray("appWidgetIds");
                Intent intent2 = new Intent(context, (Class)WidgetService.class);
                if (arrn != null) {
                    LogUtil.d(string2, "appWidgetIds=" + Arrays.toString(arrn));
                    intent2.putExtra("appWidgetIds", arrn);
                    context.startService(intent2);
                } else if (n2 != 0) {
                    LogUtil.d(string2, "appWidgetId=" + n2);
                    intent2.putExtra("appWidgetId", n2);
                    context.startService(intent2);
                }
            }
            Widget4x2Stacked.setWidgetAlarm(context);
        } else if (intent.getAction().equals("com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT")) {
            string2 = intent.getExtras();
            if (string2 != null) {
                this.startClickIntent(context, string2.getString("viewFeedName"), string2.getString("viewBuzzUri"), string2.getString(context.getString(2131296982)));
            }
            Widget4x2Stacked.setWidgetAlarm(context);
        } else if (intent.getAction().equals("com.buzzfeed.android.widget.WIDGET_NEXT")) {
            string2 = intent.getExtras();
            if (string2 != null) {
                WidgetService.viewNextBuzz(context, string2.getInt("appWidgetId"), string2.getString("viewBuzzId"));
            }
            Widget4x2Stacked.setWidgetAlarm(context);
        } else if (intent.getAction().equals("com.buzzfeed.android.widget.WIDGET_PREV")) {
            string2 = intent.getExtras();
            if (string2 != null) {
                WidgetService.viewPrevBuzz(context, string2.getInt("appWidgetId"), string2.getString("viewBuzzId"));
            }
            Widget4x2Stacked.setWidgetAlarm(context);
        }
        super.onReceive(context, intent);
    }

    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] arrn) {
        super.onUpdate(context, appWidgetManager, arrn);
        LogUtil.d(TAG + ".onUpdate", "appWidgetIds=" + Arrays.toString(arrn));
        context.startService(new Intent(context, (Class)WidgetService.class).putExtra("appWidgetIds", arrn));
        Widget4x2Stacked.setWidgetAlarm(context);
    }

    @TargetApi(value=11)
    public static class ConnectivityReceiver
    extends BroadcastReceiver {
        public void onReceive(Context context, Intent object) {
            if ((object = object.getAction()) != null && object.equals("android.net.conn.CONNECTIVITY_CHANGE") && NetworkUtil.isConnectedToNetwork(context)) {
                LogUtil.d(TAG, "Connected to network. Refreshing stack widgets");
                Widget4x2Stacked.update(context);
            }
        }
    }

}

