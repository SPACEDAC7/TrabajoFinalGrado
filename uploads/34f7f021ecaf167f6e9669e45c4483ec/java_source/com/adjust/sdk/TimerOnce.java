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

public class TimerOnce {
    private Runnable command;
    private ILogger logger;
    private String name;
    private WeakReference<CustomScheduledExecutor> scheduledExecutorWeakRef;
    private ScheduledFuture waitingTask;

    public TimerOnce(CustomScheduledExecutor customScheduledExecutor, Runnable runnable, String string2) {
        this.name = string2;
        this.scheduledExecutorWeakRef = new WeakReference<CustomScheduledExecutor>(customScheduledExecutor);
        this.command = runnable;
        this.logger = AdjustFactory.getLogger();
    }

    private void cancel(boolean bl) {
        if (this.waitingTask != null) {
            this.waitingTask.cancel(bl);
        }
        this.waitingTask = null;
        this.logger.verbose("%s canceled", this.name);
    }

    public void cancel() {
        this.cancel(false);
    }

    public long getFireIn() {
        if (this.waitingTask == null) {
            return 0;
        }
        return this.waitingTask.getDelay(TimeUnit.MILLISECONDS);
    }

    public void startIn(long l2) {
        this.cancel(false);
        CustomScheduledExecutor customScheduledExecutor = this.scheduledExecutorWeakRef.get();
        if (customScheduledExecutor == null) {
            return;
        }
        String string2 = Util.SecondsDisplayFormat.format((double)l2 / 1000.0);
        this.logger.verbose("%s starting. Launching in %s seconds", this.name, string2);
        this.waitingTask = customScheduledExecutor.schedule(new Runnable(){

            @Override
            public void run() {
                TimerOnce.this.logger.verbose("%s fired", TimerOnce.this.name);
                TimerOnce.this.command.run();
                TimerOnce.this.waitingTask = null;
            }
        }, l2, TimeUnit.MILLISECONDS);
    }

    public void teardown() {
        this.cancel(true);
        if (this.scheduledExecutorWeakRef != null) {
            this.scheduledExecutorWeakRef.clear();
        }
        this.scheduledExecutorWeakRef = null;
    }

}

