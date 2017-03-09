/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.Display
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.WindowManager
 *  android.webkit.JavascriptInterface
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebSettings$PluginState
 *  android.webkit.WebSettings$RenderPriority
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 */
package com.buzzfeed.spicerack.ui.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.buzzfeed.spicerack.data.constant.Environment;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.ui.protocol.FallbackViewListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.utils.CachingWebViewClient;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class SpicyWebView
extends WebView {
    private static final String KEY_JAVASCRIPT_BUZZ_PAGE = "buzzpage";
    private static final String KEY_JAVASCRIPT_BUZZ_SHARE = "bf";
    private static final int MIN_DELTA = 300;
    private DisplayMetrics mDisplayMetrics;
    private FallbackViewListener mFallbackViewListener;
    private boolean mIsLoaded;
    private int mLastScrollEvent = 0;
    private SpicyEventListener mSpicyEventListener;
    private SpicyWebViewScrollListener mSpicyWebViewScrollListener;
    private boolean mUseCache;

    public SpicyWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public SpicyWebView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    public SpicyWebView(Context context, boolean bl) {
        super(context);
        this.mUseCache = bl;
        this.init();
    }

    @TargetApi(value=19)
    private void init() {
        Object object = this.getSettings();
        object.setBuiltInZoomControls(true);
        object.setLoadWithOverviewMode(true);
        object.setJavaScriptEnabled(true);
        object.setUseWideViewPort(true);
        object.setDisplayZoomControls(false);
        object.setPluginState(WebSettings.PluginState.ON);
        object.setCacheMode(-1);
        object.setRenderPriority(WebSettings.RenderPriority.HIGH);
        object.setUserAgentString(object.getUserAgentString() + " " + Environment.getBFUserAgent());
        if (Build.VERSION.SDK_INT >= 19) {
            SpicyWebView.setWebContentsDebuggingEnabled((boolean)true);
        }
        this.setOverScrollMode(2);
        this.setVerticalScrollBarEnabled(false);
        object = new BuzzWebViewClient();
        if (this.mUseCache) {
            object.setCacheEnabled();
        }
        this.setWebViewClient((WebViewClient)object);
        this.setWebChromeClient(new WebChromeClient());
    }

    private void sendScrollEvent(int n2) {
        this.loadUrl(String.format("javascript:BF.notifyWebview({ type: 'scroll', data: { offset: %d } });", n2));
    }

    @JavascriptInterface
    @TargetApi(value=17)
    public void analytics(String string2, String string3) {
        if (this.mSpicyEventListener != null) {
            this.mSpicyEventListener.onAnalyticsEvent(string2, string3);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDisplayMetrics = new DisplayMetrics();
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value={"NewApi"})
    protected void onMeasure(int n2, int n3) {
        Display display = ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay();
        if (this.mDisplayMetrics == null) {
            this.mDisplayMetrics = new DisplayMetrics();
        }
        if (VersionUtil.hasJellyBeanMR1()) {
            display.getRealMetrics(this.mDisplayMetrics);
        } else {
            display.getMetrics(this.mDisplayMetrics);
        }
        super.onMeasure(n2, View.MeasureSpec.makeMeasureSpec((int)this.mDisplayMetrics.heightPixels, (int)1073741824));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onScroll(int n2) {
        if (n2 < 0 || Math.abs(this.mLastScrollEvent - n2) <= 300) {
            return;
        }
        this.sendScrollEvent(n2);
        this.mLastScrollEvent = n2;
    }

    protected void onScrollChanged(int n2, int n3, int n4, int n5) {
        super.onScrollChanged(n2, n3, n4, n5);
        if (this.mSpicyWebViewScrollListener != null) {
            this.mSpicyWebViewScrollListener.onWebViewScrolled(this.getScrollY());
        }
    }

    @JavascriptInterface
    @TargetApi(value=17)
    public void playYoutube(String string2) {
        if (this.mSpicyEventListener != null) {
            this.mSpicyEventListener.playYoutube(string2);
        }
    }

    public void populateFrom(SpiceItem spiceItem) {
        this.loadUrl(Environment.buildWebUrl(spiceItem.getUri()));
    }

    public void setExternalListener(SpicyEventListener spicyEventListener) {
        this.mSpicyEventListener = spicyEventListener;
        this.addJavascriptInterface((Object)this, "bf");
        this.addJavascriptInterface((Object)this, "buzzpage");
    }

    public void setListener(FallbackViewListener fallbackViewListener) {
        this.mFallbackViewListener = fallbackViewListener;
    }

    @JavascriptInterface
    public void setShareJSON(String string2) {
        if (this.mSpicyEventListener != null) {
            this.mSpicyEventListener.setShareJson(string2);
        }
    }

    public void setSpicyScrollListener(SpicyWebViewScrollListener spicyWebViewScrollListener) {
        this.mSpicyWebViewScrollListener = spicyWebViewScrollListener;
    }

    @JavascriptInterface
    @TargetApi(value=17)
    public void share(String string2, String string3) {
        if (this.mSpicyEventListener != null) {
            this.mSpicyEventListener.onShareEvent(string2, string3);
        }
    }

    @JavascriptInterface
    @TargetApi(value=17)
    public void viewResponses() {
        if (this.mSpicyEventListener != null) {
            this.mSpicyEventListener.viewResponses();
        }
    }

    private class BuzzWebViewClient
    extends CachingWebViewClient {
        public BuzzWebViewClient() {
            super(SpicyWebView.this.getContext());
        }

        private boolean isBuzzFeedUrl(String string2) {
            return Uri.parse((String)string2).getAuthority().endsWith("buzzfeed.com");
        }

        public void onPageFinished(WebView webView, String string2) {
            int n2 = UIUtil.getScreenHeight();
            SpicyWebView.this.loadUrl(String.format("javascript:BF_STATIC.viewportHeight = %d;", n2));
            SpicyWebView.this.sendScrollEvent(0);
            if (SpicyWebView.this.mFallbackViewListener != null) {
                SpicyWebView.this.mFallbackViewListener.pageLoaded();
            }
            SpicyWebView.this.mIsLoaded = true;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean shouldOverrideUrlLoading(WebView webView, String string2) {
            boolean bl = true;
            if (SpicyWebView.this.mIsLoaded && SpicyWebView.this.mSpicyEventListener != null) {
                return SpicyWebView.this.mSpicyEventListener.onUrlClicked(string2, true);
            }
            if (!this.isBuzzFeedUrl(string2)) return bl;
            return false;
        }
    }

    public static interface SpicyWebViewScrollListener {
        public void onWebViewScrolled(int var1);
    }

}

