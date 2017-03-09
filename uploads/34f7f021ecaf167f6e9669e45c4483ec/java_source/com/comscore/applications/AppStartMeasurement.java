/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.comscore.applications;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.applications.ApplicationMeasurement;
import com.comscore.applications.EventType;
import com.comscore.measurement.Label;
import com.comscore.utils.InstallReferrerReceiver;
import com.comscore.utils.RootDetector;
import com.comscore.utils.Storage;
import java.util.Iterator;
import java.util.Set;

public class AppStartMeasurement
extends ApplicationMeasurement {
    protected AppStartMeasurement(Core object, EventType iterator, String string22, boolean bl) {
        super((Core)object, (EventType)((Object)iterator), string22, bl, true, true);
        this.setLabel(new Label("ns_ap_gs", String.valueOf(object.getFirstInstallId()), false));
        this.setLabel(new Label("ns_ap_install", String.valueOf(object.getInstallId()), false));
        this.setLabel(new Label("ns_ap_runs", String.valueOf(object.getRunsCount()), false));
        if (bl) {
            this.setLabel(new Label("ns_ap_csf", "1", false));
        }
        iterator = "0";
        if (RootDetector.isDeviceRooted()) {
            iterator = "1";
        }
        this.setLabel(new Label("ns_ap_jb", (String)((Object)iterator), false));
        this.setLabel(new Label("ns_ap_lastrun", String.valueOf(object.getPreviousGenesis()), false));
        iterator = object.getPreviousVersion();
        if (iterator != null && iterator.length() > 0) {
            this.setLabel(new Label("ns_ap_updated", (String)((Object)iterator), false));
        }
        if ((iterator = object.getStorage().get("exception_ocurrences")) != null && iterator.length() > 0 && !iterator.equals("0")) {
            this.setLabel(new Label("ns_ap_er", (String)((Object)iterator), false));
            object.getStorage().remove("exception_ocurrences");
        }
        if (bl && (object = InstallReferrerReceiver.retrieveReferrerLabels(object.getAppContext())) != null) {
            for (String string22 : object.keySet()) {
                this.setLabel(string22, (String)object.get(string22));
            }
        }
    }
}

