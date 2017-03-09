/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.os.Handler
 */
package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestFutureTarget<T, R>
implements FutureTarget<R>,
Runnable {
    private static final Waiter DEFAULT_WAITER = new Waiter();
    private final boolean assertBackgroundThread;
    private Exception exception;
    private boolean exceptionReceived;
    private final int height;
    private boolean isCancelled;
    private final Handler mainHandler;
    private Request request;
    private R resource;
    private boolean resultReceived;
    private final Waiter waiter;
    private final int width;

    public RequestFutureTarget(Handler handler, int n2, int n3) {
        this(handler, n2, n3, true, DEFAULT_WAITER);
    }

    RequestFutureTarget(Handler handler, int n2, int n3, boolean bl, Waiter waiter) {
        this.mainHandler = handler;
        this.width = n2;
        this.height = n3;
        this.assertBackgroundThread = bl;
        this.waiter = waiter;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private R doGet(Long l2) throws ExecutionException, InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.assertBackgroundThread) {
                Util.assertBackgroundThread();
            }
            if (this.isCancelled) {
                throw new CancellationException();
            }
            if (this.exceptionReceived) {
                throw new ExecutionException(this.exception);
            }
            if (this.resultReceived) {
                l2 = this.resource;
            } else {
                if (l2 == null) {
                    this.waiter.waitForTimeout(this, 0);
                } else if (l2 > 0) {
                    this.waiter.waitForTimeout(this, l2);
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                if (this.exceptionReceived) {
                    throw new ExecutionException(this.exception);
                }
                if (this.isCancelled) {
                    throw new CancellationException();
                }
                if (!this.resultReceived) {
                    throw new TimeoutException();
                }
                l2 = this.resource;
            }
            return (R)l2;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean cancel(boolean bl) {
        boolean bl2 = true;
        boolean bl3 = true;
        synchronized (this) {
            boolean bl4 = this.isCancelled;
            if (bl4) return bl3;
            if (this.isDone()) {
                return false;
            }
            bl3 = bl2;
            if (!bl2) return bl3;
            this.isCancelled = true;
            if (bl) {
                this.clear();
            }
            this.waiter.notifyAll(this);
            return bl2;
        }
    }

    @Override
    public void clear() {
        this.mainHandler.post((Runnable)this);
    }

    @Override
    public R get() throws InterruptedException, ExecutionException {
        R r2;
        try {
            r2 = this.doGet(null);
        }
        catch (TimeoutException var1_2) {
            throw new AssertionError(var1_2);
        }
        return r2;
    }

    @Override
    public R get(long l2, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.doGet(timeUnit.toMillis(l2));
    }

    @Override
    public Request getRequest() {
        return this.request;
    }

    @Override
    public void getSize(SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.width, this.height);
    }

    @Override
    public boolean isCancelled() {
        synchronized (this) {
            boolean bl = this.isCancelled;
            return bl;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean isDone() {
        synchronized (this) {
            if (this.isCancelled) return true;
            boolean bl = this.resultReceived;
            if (!bl) return false;
            return true;
        }
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onLoadCleared(Drawable drawable2) {
    }

    @Override
    public void onLoadFailed(Exception exception, Drawable drawable2) {
        synchronized (this) {
            this.exceptionReceived = true;
            this.exception = exception;
            this.waiter.notifyAll(this);
            return;
        }
    }

    @Override
    public void onLoadStarted(Drawable drawable2) {
    }

    @Override
    public void onResourceReady(R r2, GlideAnimation<? super R> glideAnimation) {
        synchronized (this) {
            this.resultReceived = true;
            this.resource = r2;
            this.waiter.notifyAll(this);
            return;
        }
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
    }

    @Override
    public void run() {
        if (this.request != null) {
            this.request.clear();
            this.cancel(false);
        }
    }

    @Override
    public void setRequest(Request request) {
        this.request = request;
    }

    static class Waiter {
        Waiter() {
        }

        public void notifyAll(Object object) {
            object.notifyAll();
        }

        public void waitForTimeout(Object object, long l2) throws InterruptedException {
            object.wait(l2);
        }
    }

}

