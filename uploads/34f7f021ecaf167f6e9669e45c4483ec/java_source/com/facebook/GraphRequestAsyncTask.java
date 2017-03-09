/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.AsyncTask
 *  android.os.Handler
 *  android.util.Log
 */
package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

public class GraphRequestAsyncTask
extends AsyncTask<Void, Void, List<GraphResponse>> {
    private static final String TAG = GraphRequestAsyncTask.class.getCanonicalName();
    private static Method executeOnExecutorMethod;
    private final HttpURLConnection connection;
    private Exception exception;
    private final GraphRequestBatch requests;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static {
        Method[] arrmethod = AsyncTask.class.getMethods();
        int n2 = arrmethod.length;
        int n3 = 0;
        while (n3 < n2) {
            Class<?>[] arrclass;
            Method method = arrmethod[n3];
            if ("executeOnExecutor".equals(method.getName()) && (arrclass = method.getParameterTypes()).length == 2 && arrclass[0] == Executor.class && arrclass[1].isArray()) {
                executeOnExecutorMethod = method;
                return;
            }
            ++n3;
        }
    }

    public GraphRequestAsyncTask(GraphRequestBatch graphRequestBatch) {
        this((HttpURLConnection)null, graphRequestBatch);
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        this.requests = graphRequestBatch;
        this.connection = httpURLConnection;
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        this(httpURLConnection, new GraphRequestBatch(collection));
    }

    public /* varargs */ GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequest ... arrgraphRequest) {
        this(httpURLConnection, new GraphRequestBatch(arrgraphRequest));
    }

    public GraphRequestAsyncTask(Collection<GraphRequest> collection) {
        this((HttpURLConnection)null, new GraphRequestBatch(collection));
    }

    public /* varargs */ GraphRequestAsyncTask(GraphRequest ... arrgraphRequest) {
        this((HttpURLConnection)null, new GraphRequestBatch(arrgraphRequest));
    }

    protected /* varargs */ List<GraphResponse> doInBackground(Void ... object) {
        try {
            if (this.connection == null) {
                return this.requests.executeAndWait();
            }
            object = GraphRequest.executeConnectionAndWait(this.connection, this.requests);
            return object;
        }
        catch (Exception var1_2) {
            this.exception = var1_2;
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    GraphRequestAsyncTask executeOnSettingsExecutor() {
        if (executeOnExecutorMethod == null) {
            this.execute((Object[])new Void[0]);
            return this;
        }
        try {
            executeOnExecutorMethod.invoke((Object)this, FacebookSdk.getExecutor(), null);
            return this;
        }
        catch (IllegalAccessException illegalAccessException) {
            return this;
        }
        catch (InvocationTargetException invocationTargetException) {
            return this;
        }
    }

    protected final Exception getException() {
        return this.exception;
    }

    protected final GraphRequestBatch getRequests() {
        return this.requests;
    }

    protected void onPostExecute(List<GraphResponse> list) {
        super.onPostExecute(list);
        if (this.exception != null) {
            Log.d((String)TAG, (String)String.format("onPostExecute: exception encountered during request: %s", this.exception.getMessage()));
        }
    }

    protected void onPreExecute() {
        super.onPreExecute();
        if (this.requests.getCallbackHandler() == null) {
            this.requests.setCallbackHandler(new Handler());
        }
    }

    public String toString() {
        return "{RequestAsyncTask: " + " connection: " + this.connection + ", requests: " + this.requests + "}";
    }
}

