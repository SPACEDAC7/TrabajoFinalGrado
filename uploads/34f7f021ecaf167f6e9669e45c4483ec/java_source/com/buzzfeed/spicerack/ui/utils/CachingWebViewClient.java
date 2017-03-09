/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.webkit.WebResourceResponse
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  okhttp3.ResponseBody
 *  retrofit2.Response
 */
package com.buzzfeed.spicerack.ui.utils;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.buzzfeed.spicerack.ui.utils.StringCache;
import com.buzzfeed.toolkit.networking.helpers.SpicyServiceHelper;
import com.buzzfeed.toolkit.util.HttpException;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.ResponseBody;
import retrofit2.Response;

public class CachingWebViewClient
extends WebViewClient {
    private static final String[] CACHEABLE_DOMAINS;
    private static final String CHARSET = "UTF-8";
    public static final String MIME_TYPE_CSS = "text/css";
    public static final String MIME_TYPE_FONT = "application/octet-stream";
    public static final String MIME_TYPE_JS = "application/javascript";
    private static final String TAG;
    private static String WEBVIEW_CACHE_NAME;
    private static long WEBVIEW_MAX_ITEMS;
    private static long WEBVIEW_MAX_SIZE;
    private static long WEBVIEW_MAX_TIME_TO_LIVE;
    private String[] mCachedDomains = null;
    private Context mContext;
    private final SpicyServiceHelper mSpicyServiceHelper;
    private ConcurrentHashMap<String, ByteArrayInputStream> mStreamCache = null;
    private boolean mUseCache = false;
    private StringCache mWebViewCache = null;

    static {
        WEBVIEW_CACHE_NAME = "webViewCache";
        WEBVIEW_MAX_ITEMS = 100;
        WEBVIEW_MAX_SIZE = 2000000;
        WEBVIEW_MAX_TIME_TO_LIVE = 72000000;
        CACHEABLE_DOMAINS = new String[]{"buzzfeed.com", "buzzfed.com"};
        TAG = CachingWebViewClient.class.getSimpleName();
    }

    public CachingWebViewClient(Context context) {
        this.mContext = context;
        this.mWebViewCache = StringCache.getInstance(WEBVIEW_CACHE_NAME).setMaxItems(WEBVIEW_MAX_ITEMS).setMaxSize(WEBVIEW_MAX_SIZE).setMaxTimeToLive(WEBVIEW_MAX_TIME_TO_LIVE);
        this.mStreamCache = new ConcurrentHashMap();
        this.mCachedDomains = CACHEABLE_DOMAINS;
        this.mSpicyServiceHelper = new SpicyServiceHelper(context);
        this.mSpicyServiceHelper.gzip();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private WebResourceResponse getWebResourceResponseFromCache(String var1_1, String var2_2) {
        var3_6 = CachingWebViewClient.TAG + ".getWebResourceResponseFromCache";
        if (this.mWebViewCache.containsKey((String)var2_2)) {
            if (this.mStreamCache.containsKey(var2_2)) {
                var2_2 = this.mStreamCache.get(var2_2);
                var2_2.reset();
                return new WebResourceResponse(var1_1, "UTF-8", (InputStream)var2_2);
            }
            var2_2 = new ByteArrayInputStream(this.mWebViewCache.get((String)var2_2).getBytes());
            return new WebResourceResponse(var1_1, "UTF-8", (InputStream)var2_2);
        }
        var4_7 = this.mSpicyServiceHelper.getWebResourceResponseFromCache((String)var2_2);
        try {
            var4_7 = ((ResponseBody)var4_7.execute().body()).string();
            this.mWebViewCache.put((String)var2_2, (String)var4_7);
            var4_7 = new ByteArrayInputStream(var4_7.getBytes());
            this.mStreamCache.put((String)var2_2, (ByteArrayInputStream)var4_7);
            return new WebResourceResponse(var1_1, "UTF-8", (InputStream)var4_7);
        }
        catch (IOException var2_3) {}
        ** GOTO lbl-1000
        catch (HttpException var2_5) {}
lbl-1000: // 2 sources:
        {
            LogUtil.e(var3_6, "InterruptedException: Network error fetching " + var1_1 + " for buzz feed page", (Throwable)var2_4);
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isCachableDomain(String object) {
        boolean bl = false;
        object = object.split("/");
        boolean bl2 = bl;
        if (object.length < 3) return bl2;
        object = object[2];
        String[] arrstring = this.mCachedDomains;
        int n2 = arrstring.length;
        int n3 = 0;
        do {
            bl2 = bl;
            if (n3 >= n2) return bl2;
            if (object.endsWith(arrstring[n3])) {
                return true;
            }
            ++n3;
        } while (true);
    }

    public void setCacheDisabled() {
        this.mUseCache = false;
    }

    public void setCacheEnabled() {
        this.mUseCache = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public WebResourceResponse shouldInterceptRequest(WebView webView, String string2) {
        String string3 = TAG + ".shouldInterceptRequest";
        WebResourceResponse webResourceResponse = null;
        if (this.mUseCache && this.isCachableDomain(string2)) {
            if (string2.contains(".css")) {
                webResourceResponse = this.getWebResourceResponseFromCache("text/css", string2);
            } else if (string2.contains(".js")) {
                webResourceResponse = this.getWebResourceResponseFromCache("application/javascript", string2);
            } else if (string2.contains(".ttf") || string2.contains(".eot")) {
                webResourceResponse = this.getWebResourceResponseFromCache("application/octet-stream", string2);
            }
        } else {
            LogUtil.v(string3, "Not using web cache with url: " + string2);
        }
        if (webResourceResponse != null) {
            LogUtil.v(string3, "Using web cache with url: " + string2);
            return webResourceResponse;
        }
        return super.shouldInterceptRequest(webView, string2);
    }
}

