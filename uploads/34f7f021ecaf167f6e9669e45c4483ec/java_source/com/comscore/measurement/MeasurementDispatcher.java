/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.measurement;

import com.comscore.analytics.Core;
import com.comscore.applications.AggregateMeasurement;
import com.comscore.measurement.Label;
import com.comscore.measurement.Measurement;
import com.comscore.measurement.a;
import com.comscore.metrics.Request;
import com.comscore.utils.CSLog;
import com.comscore.utils.Constants;
import com.comscore.utils.Date;
import com.comscore.utils.Storage;
import com.comscore.utils.task.TaskExecutor;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class MeasurementDispatcher {
    public static final String DAY_CHECK_COUNTER = "q_dcc";
    public static final String DAY_CHECK_OFFSET = "q_dcf";
    public static final long MILLIS_PER_DAY = 86400000;
    public static final long MILLIS_PER_SECOND = 1000;
    Core a;
    protected AtomicLong b = new AtomicLong(-1);
    protected AtomicInteger c = new AtomicInteger(0);
    protected AtomicLong d = new AtomicLong(-1);
    protected AtomicInteger e = new AtomicInteger(0);
    protected AtomicInteger f = new AtomicInteger(0);
    protected Object g = new Object();
    private AggregateMeasurement h = null;

    public MeasurementDispatcher(Core core) {
        this.a = core;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(AggregateMeasurement aggregateMeasurement) {
        Object object = this.g;
        synchronized (object) {
            if (this.h == null) {
                this.h = aggregateMeasurement;
                this.h.formatLists();
            } else {
                this.h.aggregateLabels(aggregateMeasurement.getAggregateLabels());
            }
            return;
        }
    }

    static /* synthetic */ void a(MeasurementDispatcher measurementDispatcher, Measurement measurement) {
        measurementDispatcher.b(measurement);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a() {
        boolean bl = false;
        Storage storage = this.a.getStorage();
        long l2 = Date.unixTime();
        if (l2 < this.b.get()) {
            this.c.set(0);
            this.b.set(l2);
            this.e.set(0);
            this.d.set(l2);
            storage.set("q_dcc", Integer.toString(this.e.get(), 10));
            storage.set("q_dcf", Long.toString(this.d.get(), 10));
        } else {
            if (l2 - this.b.get() > 1000) {
                this.c.set(0);
                this.b.set(l2);
            }
            if (l2 - this.d.get() > 86400000) {
                this.e.set(0);
                this.d.set(l2);
                storage.set("q_dcc", Integer.toString(this.e.get(), 10));
                storage.set("q_dcf", Long.toString(this.d.get(), 10));
            }
        }
        boolean bl2 = bl;
        if (this.c.get() >= 20) return bl2;
        bl2 = bl;
        if (this.e.get() >= 6000) return bl2;
        this.c.incrementAndGet();
        this.e.getAndIncrement();
        storage.set("q_dcc", Integer.toString(this.e.get(), 10));
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void b(Measurement measurement) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "sendMeasurmement: " + measurement.retrieveLabelsAsString(this.a.getMeasurementLabelOrder()));
        this.addAggregateData(measurement);
        if (measurement instanceof AggregateMeasurement) return;
        this.addEventCounter(measurement);
        this.a(measurement);
        new Request(this.a, measurement).send();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(Measurement measurement) {
        if (!this.a.isEnabled()) {
            return;
        }
        measurement.setLabel(new Label("c12", this.a.getVisitorId(), false));
        if (this.a.getCrossPublisherId() == null) return;
        measurement.setLabel(new Label("ns_ak", this.a.getCrossPublisherId(), false));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void addAggregateData(Measurement measurement) {
        if (!this.a.isEnabled()) {
            return;
        }
        Object object = this.g;
        synchronized (object) {
            if (measurement instanceof AggregateMeasurement) {
                this.a((AggregateMeasurement)measurement);
                return;
            }
            if (this.h != null) {
                Iterator<Label> iterator = this.h.getAggregateLabels().iterator();
                while (iterator.hasNext()) {
                    measurement.setLabel(iterator.next());
                }
                this.h = null;
            }
            return;
        }
    }

    public void addEventCounter(Measurement measurement) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.f.getAndIncrement();
        measurement.setLabel(new Label("ns_ap_ec", String.valueOf(this.f), false));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void loadEventData() {
        Storage storage;
        if (!this.a.isEnabled() || !(storage = this.a.getStorage()).has("q_dcc").booleanValue() || !storage.has("q_dcf").booleanValue()) return;
        try {
            int n2 = Integer.parseInt(storage.get("q_dcc"), 10);
            long l2 = Long.parseLong(storage.get("q_dcf"), 10);
            if (Date.unixTime() < l2) return;
            {
                this.e.set(n2);
                this.d.set(l2);
                return;
            }
        }
        catch (NumberFormatException var1_2) {
            if (!Constants.DEBUG) {
                return;
            }
            CSLog.e(this, "Unexpected error parsing storage data: ");
            CSLog.printStackTrace(var1_2);
            throw var1_2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean sendMeasurmement(Measurement measurement, boolean bl) {
        if (!this.a.isEnabled() || measurement == null) {
            return false;
        }
        if (!this.a() && this.a.getStorage() != null) {
            CSLog.d(this, "Data not sent");
            return false;
        }
        return this.a.getTaskExecutor().execute((Runnable)new a(this, measurement), bl);
    }
}

