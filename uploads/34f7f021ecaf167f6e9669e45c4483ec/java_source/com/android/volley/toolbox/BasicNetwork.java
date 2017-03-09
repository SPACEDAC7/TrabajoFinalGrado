/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.SystemClock
 *  org.apache.http.Header
 *  org.apache.http.HttpResponse
 *  org.apache.http.StatusLine
 *  org.apache.http.conn.ConnectTimeoutException
 *  org.apache.http.impl.cookie.DateUtils
 */
package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache;
import com.android.volley.Network;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.ByteArrayPool;
import com.android.volley.toolbox.HttpStack;
import com.android.volley.toolbox.PoolingByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

public class BasicNetwork
implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;
    private static int DEFAULT_POOL_SIZE;
    private static int SLOW_REQUEST_THRESHOLD_MS;
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    static {
        SLOW_REQUEST_THRESHOLD_MS = 3000;
        DEFAULT_POOL_SIZE = 4096;
    }

    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(DEFAULT_POOL_SIZE));
    }

    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mPool = byteArrayPool;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void addCacheHeaders(Map<String, String> map, Cache.Entry entry) {
        if (entry == null) {
            return;
        }
        if (entry.etag != null) {
            map.put("If-None-Match", entry.etag);
        }
        if (entry.lastModified <= 0) return;
        map.put("If-Modified-Since", DateUtils.formatDate((Date)new Date(entry.lastModified)));
    }

    private static void attemptRetryOnException(String string2, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int n2 = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
        }
        catch (VolleyError var2_3) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", string2, n2));
            throw var2_3;
        }
        request.addMarker(String.format("%s-retry [timeout=%s]", string2, n2));
    }

    protected static Map<String, String> convertHeaders(Header[] arrheader) {
        TreeMap<String, String> treeMap = new TreeMap<String, String>(String.CASE_INSENSITIVE_ORDER);
        for (int i2 = 0; i2 < arrheader.length; ++i2) {
            treeMap.put(arrheader[i2].getName(), arrheader[i2].getValue());
        }
        return treeMap;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private byte[] entityToBytes(HttpEntity var1_1) throws IOException, ServerError {
        var5_4 = new PoolingByteArrayOutputStream(this.mPool, (int)var1_1.getContentLength());
        var3_7 = var4_5 = null;
        try {
            var6_8 = var1_1.getContent();
            if (var6_8 == null) {
                var3_7 = var4_5;
                throw new ServerError();
            }
            var3_7 = var4_5;
            var4_5 = this.mPool.getBuf(1024);
            do {
                var3_7 = var4_5;
                var2_9 = var6_8.read(var4_5);
                if (var2_9 != -1) {
                    var3_7 = var4_5;
                    var5_4.write(var4_5, 0, var2_9);
                    continue;
                }
                ** GOTO lbl22
                break;
            } while (true);
        }
        catch (Throwable var4_6) {
            var1_1.consumeContent();
lbl22: // 1 sources:
            var3_7 = var4_5;
            var6_8 = var5_4.toByteArray();
            try {
                var1_1.consumeContent();
            }
            catch (IOException var1_2) {
                VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
            }
            this.mPool.returnBuf(var4_5);
            var5_4.close();
            return var6_8;
            catch (IOException var1_3) {
                VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
            }
            this.mPool.returnBuf(var3_7);
            var5_4.close();
            throw var4_6;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void logSlowRequests(long l2, Request<?> request, byte[] object, StatusLine statusLine) {
        if (DEBUG || l2 > (long)SLOW_REQUEST_THRESHOLD_MS) {
            object = object != null ? Integer.valueOf(object.length) : "null";
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, l2, object, statusLine.getStatusCode(), request.getRetryPolicy().getCurrentRetryCount());
        }
    }

    protected void logError(String string2, String string3, long l2) {
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", string2, SystemClock.elapsedRealtime() - l2, string3);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public NetworkResponse performRequest(Request<?> var1_1) throws VolleyError {
        var3_2 = SystemClock.elapsedRealtime();
        do {
            block20 : {
                var7_14 = null;
                var5_4 = var8_15 = Collections.emptyMap();
                var6_12 = var7_14;
                var9_16 = new HashMap<String, String>();
                var5_4 = var8_15;
                var6_12 = var7_14;
                this.addCacheHeaders((Map<String, String>)var9_16, var1_1.getCacheEntry());
                var5_4 = var8_15;
                var6_12 = var7_14;
                var7_14 = this.mHttpStack.performRequest(var1_1, (Map<String, String>)var9_16);
                var5_4 = var8_15;
                var6_12 = var7_14;
                var10_17 = var7_14.getStatusLine();
                var5_4 = var8_15;
                var6_12 = var7_14;
                var2_3 = var10_17.getStatusCode();
                var5_4 = var8_15;
                var6_12 = var7_14;
                var8_15 = BasicNetwork.convertHeaders(var7_14.getAllHeaders());
                if (var2_3 == 304) {
                    var5_4 = var8_15;
                    var6_12 = var7_14;
                    var9_16 = var1_1.getCacheEntry();
                    if (var9_16 == null) {
                        var5_4 = var8_15;
                        var6_12 = var7_14;
                        return new NetworkResponse(304, null, (Map<String, String>)var8_15, true, SystemClock.elapsedRealtime() - var3_2);
                    }
                    var5_4 = var8_15;
                    var6_12 = var7_14;
                    var9_16.responseHeaders.putAll((Map<String, String>)var8_15);
                    var5_4 = var8_15;
                    var6_12 = var7_14;
                    return new NetworkResponse(304, var9_16.data, var9_16.responseHeaders, true, SystemClock.elapsedRealtime() - var3_2);
                }
                var5_4 = var8_15;
                var6_12 = var7_14;
                if (var7_14.getEntity() != null) {
                    var5_4 = var8_15;
                    var6_12 = var7_14;
                    var5_4 = var9_16 = this.entityToBytes(var7_14.getEntity());
                    break block20;
                }
                var5_4 = var8_15;
                var6_12 = var7_14;
                var5_4 = var9_16 = new byte[0];
            }
            try {
                this.logSlowRequests(SystemClock.elapsedRealtime() - var3_2, var1_1, var5_4, var10_17);
                if (var2_3 < 200) throw new IOException();
                if (var2_3 <= 299) return new NetworkResponse(var2_3, var5_4, (Map<String, String>)var8_15, false, SystemClock.elapsedRealtime() - var3_2);
                throw new IOException();
            }
            catch (SocketTimeoutException var5_5) {}
            ** GOTO lbl-1000
            catch (ConnectTimeoutException var5_6) {}
            ** GOTO lbl-1000
            catch (MalformedURLException var5_7) {}
            ** GOTO lbl-1000
            catch (IOException var10_18) {
                var9_16 = null;
                var7_14 = var6_12;
                var8_15 = var5_4;
                var6_12 = var10_18;
                ** GOTO lbl67
                catch (IOException var6_13) {
                    var9_16 = var5_4;
                }
lbl67: // 2 sources:
                if (var7_14 == null) throw new NoConnectionError((Throwable)var6_12);
                var2_3 = var7_14.getStatusLine().getStatusCode();
                VolleyLog.e("Unexpected response code %d for %s", new Object[]{var2_3, var1_1.getUrl()});
                if (var9_16 == null) throw new NetworkError(null);
                var5_4 = new NetworkResponse(var2_3, (byte[])var9_16, (Map<String, String>)var8_15, false, SystemClock.elapsedRealtime() - var3_2);
                if (var2_3 != 401) {
                    if (var2_3 != 403) throw new ServerError((NetworkResponse)var5_4);
                }
                BasicNetwork.attemptRetryOnException("auth", var1_1, new AuthFailureError((NetworkResponse)var5_4));
                continue;
            }
            catch (MalformedURLException var5_9) {}
lbl-1000: // 2 sources:
            {
                if ((var1_1 = String.valueOf(var1_1.getUrl())).length() != 0) {
                    var1_1 = "Bad URL ".concat((String)var1_1);
                    throw new RuntimeException((String)var1_1, (Throwable)var5_8);
                }
                var1_1 = new String("Bad URL ");
                throw new RuntimeException((String)var1_1, (Throwable)var5_8);
            }
            catch (ConnectTimeoutException var5_10) {}
lbl-1000: // 2 sources:
            {
                BasicNetwork.attemptRetryOnException("connection", var1_1, new TimeoutError());
                continue;
            }
            catch (SocketTimeoutException var5_11) {}
lbl-1000: // 2 sources:
            {
                BasicNetwork.attemptRetryOnException("socket", var1_1, new TimeoutError());
                continue;
            }
            break;
        } while (true);
    }
}

