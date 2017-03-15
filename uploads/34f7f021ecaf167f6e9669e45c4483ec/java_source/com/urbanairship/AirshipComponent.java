/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.urbanairship.job.Job
 */
package com.urbanairship;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.urbanairship.UAirship;
import com.urbanairship.job.Job;

public abstract class AirshipComponent {
    protected void init() {
    }

    @WorkerThread
    protected int onPerformJob(@NonNull UAirship uAirship, Job job) {
        return 0;
    }

    protected void tearDown() {
    }
}

