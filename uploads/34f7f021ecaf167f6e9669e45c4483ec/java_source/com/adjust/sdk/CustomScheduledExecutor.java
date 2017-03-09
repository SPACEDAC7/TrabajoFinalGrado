/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.AdjustFactory;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class CustomScheduledExecutor {
    private ScheduledThreadPoolExecutor executor;
    private String source;

    public CustomScheduledExecutor(final String string2) {
        this.executor = new ScheduledThreadPoolExecutor(1, new ThreadFactory(){

            @Override
            public Thread newThread(Runnable runnable) {
                runnable = Executors.defaultThreadFactory().newThread(runnable);
                runnable.setPriority(1);
                runnable.setName("Adjust-" + runnable.getName() + string2);
                runnable.setDaemon(true);
                runnable.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(){

                    @Override
                    public void uncaughtException(Thread thread, Throwable throwable) {
                        AdjustFactory.getLogger().error("Thread %s with error %s", thread.getName(), throwable.getMessage());
                    }
                });
                return runnable;
            }

        }, new RejectedExecutionHandler(){

            @Override
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                AdjustFactory.getLogger().warn("Runnable %s rejected from %s ", runnable.toString(), string2);
            }
        });
        this.source = string2;
        this.executor.setKeepAliveTime(10, TimeUnit.MILLISECONDS);
        this.executor.allowCoreThreadTimeOut(true);
    }

    public ScheduledFuture<?> schedule(Runnable runnable, long l2, TimeUnit timeUnit) {
        return this.executor.schedule(new RunnableWrapper(runnable), l2, timeUnit);
    }

    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long l2, long l3, TimeUnit timeUnit) {
        return this.executor.scheduleWithFixedDelay(new RunnableWrapper(runnable), l2, l3, timeUnit);
    }

    public void shutdownNow() {
        this.executor.shutdownNow();
    }

    public Future<?> submit(Runnable runnable) {
        return this.executor.submit(runnable);
    }

    private class RunnableWrapper
    implements Runnable {
        private Runnable runnable;

        public RunnableWrapper(Runnable runnable) {
            this.runnable = runnable;
        }

        @Override
        public void run() {
            try {
                this.runnable.run();
                return;
            }
            catch (Throwable var1_1) {
                AdjustFactory.getLogger().error("Runnable error %s", var1_1.getMessage());
                return;
            }
        }
    }

}

