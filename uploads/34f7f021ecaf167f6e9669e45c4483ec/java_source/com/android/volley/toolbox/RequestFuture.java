/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley.toolbox;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestFuture<T>
implements Future<T>,
Response.Listener<T>,
Response.ErrorListener {
    private VolleyError mException;
    private Request<?> mRequest;
    private T mResult;
    private boolean mResultReceived = false;

    private RequestFuture() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private T doGet(Long l2) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (this.mException != null) {
                throw new ExecutionException(this.mException);
            }
            if (this.mResultReceived) {
                l2 = this.mResult;
            } else {
                if (l2 == null) {
                    this.wait(0);
                } else if (l2 > 0) {
                    this.wait(l2);
                }
                if (this.mException != null) {
                    throw new ExecutionException(this.mException);
                }
                if (!this.mResultReceived) {
                    throw new TimeoutException();
                }
                l2 = this.mResult;
            }
            return (T)l2;
        }
    }

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<T>();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean cancel(boolean bl) {
        bl = false;
        synchronized (this) {
            block4 : {
                Request request = this.mRequest;
                if (request != null) break block4;
                return bl;
            }
            if (this.isDone()) return bl;
            this.mRequest.cancel();
            return true;
        }
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        T t2;
        try {
            t2 = this.doGet(null);
        }
        catch (TimeoutException var1_2) {
            throw new AssertionError(var1_2);
        }
        return t2;
    }

    @Override
    public T get(long l2, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.doGet(TimeUnit.MILLISECONDS.convert(l2, timeUnit));
    }

    @Override
    public boolean isCancelled() {
        if (this.mRequest == null) {
            return false;
        }
        return this.mRequest.isCanceled();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean isDone() {
        synchronized (this) {
            if (this.mResultReceived) return true;
            if (this.mException != null) return true;
            boolean bl = this.isCancelled();
            if (!bl) return false;
            return true;
        }
    }

    @Override
    public void onErrorResponse(VolleyError volleyError) {
        synchronized (this) {
            this.mException = volleyError;
            this.notifyAll();
            return;
        }
    }

    @Override
    public void onResponse(T t2) {
        synchronized (this) {
            this.mResultReceived = true;
            this.mResult = t2;
            this.notifyAll();
            return;
        }
    }

    public void setRequest(Request<?> request) {
        this.mRequest = request;
    }
}

