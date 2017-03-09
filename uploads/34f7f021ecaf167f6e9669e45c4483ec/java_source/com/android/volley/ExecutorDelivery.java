/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 */
package com.android.volley;

import android.os.Handler;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.ResponseDelivery;
import com.android.volley.VolleyError;
import java.util.concurrent.Executor;

public class ExecutorDelivery
implements ResponseDelivery {
    private final Executor mResponsePoster;

    public ExecutorDelivery(final Handler handler) {
        this.mResponsePoster = new Executor(){

            @Override
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public ExecutorDelivery(Executor executor) {
        this.mResponsePoster = executor;
    }

    @Override
    public void postError(Request<?> request, VolleyError object) {
        request.addMarker("post-error");
        object = Response.error((VolleyError)object);
        this.mResponsePoster.execute(new ResponseDeliveryRunnable(request, (Response)object, null));
    }

    @Override
    public void postResponse(Request<?> request, Response<?> response) {
        this.postResponse(request, response, null);
    }

    @Override
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.mResponsePoster.execute(new ResponseDeliveryRunnable(request, response, runnable));
    }

    private class ResponseDeliveryRunnable
    implements Runnable {
        private final Request mRequest;
        private final Response mResponse;
        private final Runnable mRunnable;

        public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
            this.mRequest = request;
            this.mResponse = response;
            this.mRunnable = runnable;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("canceled-at-delivery");
                return;
            } else {
                if (this.mResponse.isSuccess()) {
                    this.mRequest.deliverResponse(this.mResponse.result);
                } else {
                    this.mRequest.deliverError(this.mResponse.error);
                }
                if (this.mResponse.intermediate) {
                    this.mRequest.addMarker("intermediate-response");
                } else {
                    this.mRequest.finish("done");
                }
                if (this.mRunnable == null) return;
                {
                    this.mRunnable.run();
                    return;
                }
            }
        }
    }

}

