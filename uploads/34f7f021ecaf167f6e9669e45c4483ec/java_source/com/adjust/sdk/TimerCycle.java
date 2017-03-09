/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.Util;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerCycle {
    private Runnable command;
    private long cycleDelay;
    private long initialDelay;
    private boolean isPaused;
    private ILogger logger;
    private String name;
    private WeakReference<CustomScheduledExecutor> scheduledExecutorWeakRef;
    private ScheduledFuture waitingTask;

    public TimerCycle(CustomScheduledExecutor object, Runnable object2, long l2, long l3, String string2) {
        this.scheduledExecutorWeakRef = new WeakReference<CustomScheduledExecutor>((CustomScheduledExecutor)object);
        this.name = string2;
        this.command = object2;
        this.initialDelay = l2;
        this.cycleDelay = l3;
        this.isPaused = true;
        this.logger = AdjustFactory.getLogger();
        object = Util.SecondsDisplayFormat.format((double)l3 / 1000.0);
        object2 = Util.SecondsDisplayFormat.format((double)l2 / 1000.0);
        this.logger.verbose("%s configured to fire after %s seconds of starting and cycles every %s seconds", string2, object2, object);
    }

    private void cancel(boolean bl) {
        if (this.waitingTask != null) {
            this.waitingTask.cancel(bl);
        }
        this.waitingTask = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void start() {
        if (!this.isPaused) {
            this.logger.verbose("%s is already started", this.name);
            return;
        } else {
            CustomScheduledExecutor customScheduledExecutor = this.scheduledExecutorWeakRef.get();
            if (customScheduledExecutor == null) return;
            {
                this.logger.verbose("%s starting", this.name);
                this.waitingTask = customScheduledExecutor.scheduleWithFixedDelay(new Runnable(){

                    @Override
                    public void run() {
                        TimerCycle.this.logger.verbose("%s fired", TimerCycle.this.name);
                        TimerCycle.this.command.run();
                    }
                }, this.initialDelay, this.cycleDelay, TimeUnit.MILLISECONDS);
                this.isPaused = false;
                return;
            }
        }
    }

    public void suspend() {
        if (this.isPaused) {
            this.logger.verbose("%s is already suspended", this.name);
            return;
        }
        this.initialDelay = this.waitingTask.getDelay(TimeUnit.MILLISECONDS);
        this.waitingTask.cancel(false);
        String string2 = Util.SecondsDisplayFormat.format((double)this.initialDelay / 1000.0);
        this.logger.verbose("%s suspended with %s seconds left", this.name, string2);
        this.isPaused = true;
    }

    public void teardown() {
        this.cancel(true);
        if (this.scheduledExecutorWeakRef != null) {
            this.scheduledExecutorWeakRef.clear();
        }
        this.scheduledExecutorWeakRef = null;
    }

}

