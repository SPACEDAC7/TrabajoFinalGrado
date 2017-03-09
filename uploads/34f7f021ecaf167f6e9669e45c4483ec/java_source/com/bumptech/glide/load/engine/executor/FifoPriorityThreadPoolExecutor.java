/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Process
 *  android.util.Log
 */
package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.util.Log;
import com.bumptech.glide.load.engine.executor.Prioritized;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class FifoPriorityThreadPoolExecutor
extends ThreadPoolExecutor {
    private static final String TAG = "PriorityExecutor";
    private final AtomicInteger ordering = new AtomicInteger();
    private final UncaughtThrowableStrategy uncaughtThrowableStrategy;

    public FifoPriorityThreadPoolExecutor(int n2) {
        this(n2, UncaughtThrowableStrategy.LOG);
    }

    public FifoPriorityThreadPoolExecutor(int n2, int n3, long l2, TimeUnit timeUnit, ThreadFactory threadFactory, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        super(n2, n3, l2, timeUnit, new PriorityBlockingQueue<Runnable>(), threadFactory);
        this.uncaughtThrowableStrategy = uncaughtThrowableStrategy;
    }

    public FifoPriorityThreadPoolExecutor(int n2, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        this(n2, n2, 0, TimeUnit.MILLISECONDS, new DefaultThreadFactory(), uncaughtThrowableStrategy);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected void afterExecute(Runnable object, Throwable throwable) {
        super.afterExecute((Runnable)object, throwable);
        if (throwable != null || !(object instanceof Future) || !(object = (Future)object).isDone() || object.isCancelled()) return;
        try {
            object.get();
            return;
        }
        catch (InterruptedException var1_2) {
            this.uncaughtThrowableStrategy.handle(var1_2);
            return;
        }
        catch (ExecutionException var1_3) {
            this.uncaughtThrowableStrategy.handle(var1_3);
            return;
        }
    }

    @Override
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t2) {
        return new LoadTask<T>(runnable, t2, this.ordering.getAndIncrement());
    }

    public static class DefaultThreadFactory
    implements ThreadFactory {
        int threadNum = 0;

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable, "fifo-pool-thread-" + this.threadNum){

                @Override
                public void run() {
                    Process.setThreadPriority((int)10);
                    super.run();
                }
            };
            ++this.threadNum;
            return runnable;
        }

    }

    static class LoadTask<T>
    extends FutureTask<T>
    implements Comparable<LoadTask<?>> {
        private final int order;
        private final int priority;

        public LoadTask(Runnable runnable, T t2, int n2) {
            super(runnable, t2);
            if (!(runnable instanceof Prioritized)) {
                throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
            }
            this.priority = ((Prioritized)((Object)runnable)).getPriority();
            this.order = n2;
        }

        @Override
        public int compareTo(LoadTask<?> loadTask) {
            int n2;
            int n3 = n2 = this.priority - loadTask.priority;
            if (n2 == 0) {
                n3 = this.order - loadTask.order;
            }
            return n3;
        }

        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (object instanceof LoadTask) {
                object = (LoadTask)object;
                bl2 = bl;
                if (this.order == object.order) {
                    bl2 = bl;
                    if (this.priority == object.priority) {
                        bl2 = true;
                    }
                }
            }
            return bl2;
        }

        public int hashCode() {
            return this.priority * 31 + this.order;
        }
    }

    public static enum UncaughtThrowableStrategy {
        IGNORE,
        LOG{

            @Override
            protected void handle(Throwable throwable) {
                if (Log.isLoggable((String)"PriorityExecutor", (int)6)) {
                    Log.e((String)"PriorityExecutor", (String)"Request threw uncaught throwable", (Throwable)throwable);
                }
            }
        }
        ,
        THROW{

            @Override
            protected void handle(Throwable throwable) {
                super.handle(throwable);
                throw new RuntimeException(throwable);
            }
        };
        

        private UncaughtThrowableStrategy() {
        }

        protected void handle(Throwable throwable) {
        }

    }

}

