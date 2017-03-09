/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Looper
 */
package com.crashlytics.android.core;

import android.os.Looper;
import io.fabric.sdk.android.Fabric;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

class CrashlyticsExecutorServiceWrapper {
    private final ExecutorService executorService;

    public CrashlyticsExecutorServiceWrapper(ExecutorService executorService) {
        this.executorService = executorService;
    }

    Future<?> executeAsync(Runnable object) {
        try {
            object = this.executorService.submit(new Runnable((Runnable)object){
                final /* synthetic */ Runnable val$runnable;

                @Override
                public void run() {
                    try {
                        this.val$runnable.run();
                        return;
                    }
                    catch (Exception var1_1) {
                        Fabric.getLogger().e("CrashlyticsCore", "Failed to execute task.", (Throwable)var1_1);
                        return;
                    }
                }
            });
            return object;
        }
        catch (RejectedExecutionException var1_2) {
            Fabric.getLogger().d("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    <T> Future<T> executeAsync(Callable<T> object) {
        try {
            object = this.executorService.submit(new Callable<T>((Callable)object){
                final /* synthetic */ Callable val$callable;

                @Override
                public T call() throws Exception {
                    Object v2;
                    try {
                        v2 = this.val$callable.call();
                    }
                    catch (Exception var1_2) {
                        Fabric.getLogger().e("CrashlyticsCore", "Failed to execute task.", (Throwable)var1_2);
                        return null;
                    }
                    return (T)v2;
                }
            });
            return object;
        }
        catch (RejectedExecutionException var1_2) {
            Fabric.getLogger().d("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    <T> T executeSyncLoggingException(Callable<T> callable) {
        try {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                return this.executorService.submit(callable).get(4, TimeUnit.SECONDS);
            }
            callable = this.executorService.submit(callable).get();
        }
        catch (RejectedExecutionException var1_2) {
            Fabric.getLogger().d("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
        catch (Exception var1_3) {
            Fabric.getLogger().e("CrashlyticsCore", "Failed to execute task.", (Throwable)var1_3);
            return null;
        }
        return (T)callable;
    }

}

