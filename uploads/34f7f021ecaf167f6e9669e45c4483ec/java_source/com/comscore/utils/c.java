/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.analytics.Core;
import com.comscore.measurement.Measurement;
import com.comscore.utils.OfflineMeasurementsCache;

class c
implements Runnable {
    final /* synthetic */ Measurement a;
    final /* synthetic */ OfflineMeasurementsCache b;

    c(OfflineMeasurementsCache offlineMeasurementsCache, Measurement measurement) {
        this.b = offlineMeasurementsCache;
        this.a = measurement;
    }

    @Override
    public void run() {
        this.b.saveEvent(this.a.retrieveLabelsAsString(this.b.a.getMeasurementLabelOrder()));
    }
}

