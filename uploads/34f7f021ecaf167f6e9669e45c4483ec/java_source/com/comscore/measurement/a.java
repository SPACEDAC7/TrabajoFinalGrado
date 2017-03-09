/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.measurement;

import com.comscore.measurement.Measurement;
import com.comscore.measurement.MeasurementDispatcher;

class a
implements Runnable {
    final /* synthetic */ Measurement a;
    final /* synthetic */ MeasurementDispatcher b;

    a(MeasurementDispatcher measurementDispatcher, Measurement measurement) {
        this.b = measurementDispatcher;
        this.a = measurement;
    }

    @Override
    public void run() {
        MeasurementDispatcher.a(this.b, this.a);
    }
}

