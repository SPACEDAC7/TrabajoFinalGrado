/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.graphics.Point
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.Display
 *  android.view.WindowManager
 */
package com.comscore.applications;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.comscore.analytics.ApplicationState;
import com.comscore.analytics.Core;
import com.comscore.applications.AggregateMeasurement;
import com.comscore.applications.AppStartMeasurement;
import com.comscore.applications.EventType;
import com.comscore.measurement.Label;
import com.comscore.measurement.Measurement;
import com.comscore.utils.API13;
import com.comscore.utils.OfflineMeasurementsCache;
import com.comscore.utils.id.IdHelper;
import java.util.HashMap;
import java.util.Locale;

public class ApplicationMeasurement
extends Measurement {
    protected ApplicationMeasurement(Core core, EventType eventType, String string2) {
        this(core, eventType, string2, false, false, true);
    }

    protected ApplicationMeasurement(Core core, EventType eventType, String string2, boolean bl, boolean bl2, boolean bl3) {
        int n2;
        long l2;
        int n3;
        super(core);
        core.update(bl3);
        if (bl3) {
            n3 = core.getForegroundTransitionsCountDelta(bl2);
            l2 = core.getForegroundTotalTime(bl);
            long l3 = core.getForegroundTimeDelta(bl2);
            long l4 = core.getBackgroundTotalTime(bl);
            long l5 = core.getBackgroundTimeDelta(bl2);
            long l6 = core.getInactiveTotalTime(bl);
            long l7 = core.getInactiveTimeDelta(bl2);
            long l8 = core.getApplicationSessionTimeDelta(bl2);
            long l9 = core.getActiveUserSessionTimeDelta(bl2);
            long l10 = core.getUserSessionTimeDelta(bl2);
            long l11 = core.getAutoUpdateInterval();
            n2 = core.getApplicationSessionCountDelta(bl2);
            int n4 = core.getActiveUserSessionCountDelta(bl2);
            int n5 = core.getUserSessionCountDelta(bl2);
            int n6 = core.getUserInteractionCount(bl2);
            this.setLabel(new Label("ns_ap_fg", String.valueOf(n3), false));
            this.setLabel(new Label("ns_ap_ft", String.valueOf(l2), false));
            this.setLabel(new Label("ns_ap_dft", String.valueOf(l3), false));
            this.setLabel(new Label("ns_ap_bt", String.valueOf(l4), false));
            this.setLabel(new Label("ns_ap_dbt", String.valueOf(l5), false));
            this.setLabel(new Label("ns_ap_it", String.valueOf(l6), false));
            this.setLabel(new Label("ns_ap_dit", String.valueOf(l7), false));
            if (l11 >= 60000) {
                this.setLabel(new Label("ns_ap_ut", String.valueOf(l11), false));
            }
            this.setLabel(new Label("ns_ap_as", String.valueOf(n2), false));
            this.setLabel(new Label("ns_ap_das", String.valueOf(l8), false));
            if (n4 >= 0) {
                this.setLabel(new Label("ns_ap_aus", String.valueOf(n4), false));
                this.setLabel(new Label("ns_ap_daus", String.valueOf(l9), false));
                this.setLabel(new Label("ns_ap_uc", String.valueOf(n6), false));
            }
            if (n5 >= 0) {
                this.setLabel(new Label("ns_ap_us", String.valueOf(n5), false));
                this.setLabel(new Label("ns_ap_dus", String.valueOf(l10), false));
            }
            this.setLabel(new Label("ns_ap_usage", Long.toString(this.c - core.getGenesis()), false));
        }
        if (string2 != null) {
            this.setPixelURL(string2);
        }
        this.setLabel(new Label("c1", "19", false));
        this.setLabel(new Label("ns_ap_an", core.getAppName(), false));
        this.setLabel(new Label("ns_ap_pn", "android", false));
        this.setLabel(new Label("c12", core.getVisitorId(), false));
        if (core.getCrossPublisherId() != null) {
            this.setLabel(new Label("ns_ak", core.getCrossPublisherId(), false));
            if (core.getIdHelper().isIdChanged()) {
                this.setLabel(new Label("ns_ap_ni", "1", false));
            }
        }
        if (core.getIdHelper().getMD5AdvertisingId() != null) {
            this.setLabel("ns_ap_i3", core.getIdHelper().getMD5AdvertisingId());
        }
        this.setLabel(new Label("ns_ap_device", Build.DEVICE, false));
        this.setLabel(new Label("ns_type", ApplicationMeasurement.a(eventType).toString(), false));
        this.setLabel(new Label("ns_ts", Long.toString(this.c), false));
        this.setLabel(new Label("ns_nc", "1", false));
        this.setLabel(new Label("ns_ap_pfv", Build.VERSION.RELEASE, false));
        this.setLabel(new Label("ns_ap_pv", Build.VERSION.RELEASE, false));
        this.setLabel(new Label("ns_ap_pfm", "android", false));
        this.setLabel(new Label("ns_ap_ar", System.getProperty("os.arch"), false));
        this.setLabel(new Label("ns_ap_ev", eventType.toString(), false));
        string2 = core.getAppContext();
        this.setLabel(new Label("ns_ap_ver", core.getCurrentVersion(), false));
        string2 = this.a((Context)string2);
        n3 = string2.x;
        n2 = string2.y;
        this.setLabel(new Label("ns_ap_res", Integer.toString(n3) + "x" + Integer.toString(n2), false));
        this.setLabel(new Label("ns_ap_lang", Locale.getDefault().getLanguage(), false));
        this.setLabel(new Label("ns_ap_sv", core.getVersion(), false));
        if (eventType.equals((Object)EventType.KEEPALIVE)) {
            this.setLabel("ns_ap_oc", String.valueOf(core.getOfflineCache().getEventCount()));
        }
        l2 = core.getColdStartId();
        n3 = core.getColdStartCount();
        this.setLabel(new Label("ns_ap_id", String.valueOf(l2), false));
        this.setLabel(new Label("ns_ap_cs", String.valueOf(n3), false));
        this.setLabel(new Label("ns_ap_bi", core.getAppContext().getPackageName(), false));
    }

    @SuppressLint(value={"NewApi"})
    private Point a(Context context) {
        Point point = new Point();
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 13) {
            return API13.getDisplaySize((Display)context);
        }
        point.x = context.getWidth();
        point.y = context.getHeight();
        return point;
    }

    private static com.comscore.metrics.EventType a(EventType eventType) {
        if (eventType == EventType.START || eventType == EventType.CLOSE || eventType == EventType.VIEW) {
            return com.comscore.metrics.EventType.VIEW;
        }
        return com.comscore.metrics.EventType.HIDDEN;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static ApplicationMeasurement newApplicationMeasurement(Core core, EventType eventType, HashMap<String, String> hashMap, String string2) {
        boolean bl;
        boolean bl2 = true;
        Measurement measurement = null;
        if (eventType == EventType.START) {
            core.incrementRunsCount();
            measurement = new AppStartMeasurement(core, eventType, string2, core.handleColdStart());
        } else if (eventType == EventType.AGGREGATE) {
            measurement = new AggregateMeasurement(core, eventType, string2);
        } else if (eventType != EventType.CLOSE) {
            bl = hashMap == null || hashMap.get("ns_st_ev") != "hb";
            boolean bl3 = hashMap == null || !hashMap.containsKey("ns_st_ev");
            measurement = new ApplicationMeasurement(core, eventType, string2, false, bl, bl3);
        }
        if (eventType != EventType.AGGREGATE) {
            measurement.a(core.getLabels());
        }
        bl = eventType == EventType.AGGREGATE ? bl2 : false;
        measurement.a(hashMap, bl);
        if (measurement.hasLabel("name") != false) return measurement;
        if (core.getCurrentActivityName() != null) {
            measurement.setLabel("name", core.getCurrentActivityName());
            return measurement;
        }
        if (eventType == EventType.START) {
            measurement.setLabel("name", "start");
            return measurement;
        }
        if (core.getApplicationState() == ApplicationState.FOREGROUND) {
            measurement.setLabel("name", "foreground");
            return measurement;
        }
        measurement.setLabel("name", "background");
        return measurement;
    }
}

