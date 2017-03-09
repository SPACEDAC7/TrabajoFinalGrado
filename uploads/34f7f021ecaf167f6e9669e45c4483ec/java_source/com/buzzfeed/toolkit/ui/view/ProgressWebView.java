/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  android.widget.ProgressBar
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.toolkit.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;

public class ProgressWebView
extends RelativeLayout {
    private static final String TAG = LogUtil.makeLogTag(ProgressWebView.class);
    protected ProgressBar progressBar;
    protected WebView webView;

    public ProgressWebView(Context context) {
        this(context, null);
    }

    public ProgressWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.inflateLayout();
        this.webView = (WebView)UIUtil.findView((View)this, R.id.wp_webview);
        this.progressBar = (ProgressBar)UIUtil.findView((View)this, R.id.wp_progress);
        this.setWebDefaults();
    }

    private void hideProgress() {
        this.progressBar.setVisibility(8);
        this.webView.setVisibility(0);
    }

    private void showProgress() {
        this.progressBar.setVisibility(0);
        this.webView.setVisibility(8);
    }

    @SuppressLint(value={"JavascriptInterface"})
    public void addJavascriptInterface(Object object, String string2) {
        this.webView.addJavascriptInterface(object, string2);
    }

    public WebSettings getSettings() {
        return this.webView.getSettings();
    }

    public boolean goBack() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
            return true;
        }
        return false;
    }

    protected void inflateLayout() {
        ProgressWebView.inflate((Context)this.getContext(), (int)R.layout.progress_webview, (ViewGroup)this);
    }

    public boolean loadUrl(String string2) {
        if (this.webView.getUrl() == null || !this.webView.getUrl().equals(string2)) {
            this.webView.loadUrl(string2);
            return true;
        }
        return false;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.pause();
    }

    public void pause() {
        this.webView.onPause();
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.webView.setWebChromeClient(webChromeClient);
    }

    protected void setWebDefaults() {
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setScrollBarStyle(33554432);
        this.webView.setScrollbarFadingEnabled(true);
        this.setWebViewClient(new DefaultWebViewClient());
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.webView.setWebViewClient(webViewClient);
    }

    protected class DefaultWebViewClient
    extends WebViewClient {
        private long start;

        protected DefaultWebViewClient() {
        }

        public void onPageFinished(WebView webView, String string2) {
            ProgressWebView.this.hideProgress();
            LogUtil.d(TAG, "WebView finished progress (in " + (double)((System.currentTimeMillis() - this.start) / 100) / 10.0 + " secs)");
        }

        public void onPageStarted(WebView webView, String string2, Bitmap bitmap) {
            this.start = System.currentTimeMillis();
            ProgressWebView.this.showProgress();
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String string2) {
            return true;
        }
    }

}

