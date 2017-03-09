/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.analytics.Core;
import com.comscore.applications.ApplicationMeasurement;
import com.comscore.applications.EventType;
import com.comscore.measurement.Measurement;
import com.comscore.measurement.MeasurementDispatcher;
import com.comscore.streaming.StreamSense;
import java.util.HashMap;

class e
implements Runnable {
    final /* synthetic */ HashMap a;
    final /* synthetic */ String b;
    final /* synthetic */ StreamSense c;

    e(StreamSense streamSense, HashMap hashMap, String string2) {
        this.c = streamSense;
        this.a = hashMap;
        this.b = string2;
    }

    @Override
    public void run() {
        ApplicationMeasurement applicationMeasurement = ApplicationMeasurement.newApplicationMeasurement(this.c.a, EventType.HIDDEN, this.a, this.b);
        this.c.a.getMeasurementDispatcher().sendMeasurmement(applicationMeasurement, false);
    }
}

