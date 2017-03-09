/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.webkit.JavascriptInterface
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebSettings$PluginState
 *  android.webkit.WebSettings$RenderPriority
 *  android.webkit.WebView
 *  android.webkit.WebView$HitTestResult
 *  android.webkit.WebViewClient
 */
package com.buzzfeed.spicerack.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.buzzfeed.spicerack.data.model.subbuzz.EmbedSpice;
import com.buzzfeed.toolkit.util.VersionUtil;

public class EmbedWebView
extends WebView {
    private boolean mDidClick = false;
    private EmbedSpice mEmbedSpice;
    private EmbedWebViewClickListener mOnClickListener;

    public EmbedWebView(Context context) {
        this(context, null);
    }

    public EmbedWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private int getFinalHeight(int n2, int n3, int n4) {
        float f2 = (float)n2 / (float)n3;
        return Math.round((float)n4 * f2);
    }

    @JavascriptInterface
    public void getSize(final String string2) {
        this.post(new Runnable(){

            @Override
            public void run() {
                ViewGroup.LayoutParams layoutParams = string2.split(",");
                int n2 = Integer.parseInt(layoutParams[0]);
                int n3 = Integer.parseInt(layoutParams[1]);
                n2 = EmbedWebView.this.getFinalHeight(EmbedWebView.this.getWidth(), n2, n3);
                layoutParams = EmbedWebView.this.getLayoutParams();
                layoutParams.height = n2 + 10;
                EmbedWebView.this.setLayoutParams(layoutParams);
                EmbedWebView.this.invalidate();
            }
        });
    }

    public void loadUrlWithEmbedSpice(String string2, EmbedSpice embedSpice) {
        this.mDidClick = false;
        this.setWebDefaults();
        this.mEmbedSpice = embedSpice;
        super.loadUrl(string2);
    }

    public void setEmbedWebViewClickListener(EmbedWebViewClickListener embedWebViewClickListener) {
        this.mOnClickListener = embedWebViewClickListener;
    }

    @JavascriptInterface
    @SuppressLint(value={"NewApi"})
    protected void setWebDefaults() {
        WebSettings webSettings = this.getSettings();
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setUseWideViewPort(true);
        this.addJavascriptInterface((Object)this, "SpicyEmbed");
        webSettings.setJavaScriptEnabled(true);
        webSettings.setPluginState(WebSettings.PluginState.ON);
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.setOverScrollMode(2);
        this.setVerticalScrollBarEnabled(false);
        if (VersionUtil.hasKitKat()) {
            EmbedWebView.setWebContentsDebuggingEnabled((boolean)true);
        }
        this.setWebChromeClient(new WebChromeClient());
        this.setWebViewClient((WebViewClient)new EmbedWebViewClient());
        this.setOnTouchListener(new View.OnTouchListener(){

            /*
             * Enabled aggressive block sorting
             */
            public boolean onTouch(View view, MotionEvent motionEvent) {
                view = EmbedWebView.this.getHitTestResult();
                EmbedWebView embedWebView = EmbedWebView.this;
                boolean bl = view != null;
                embedWebView.mDidClick = bl;
                if (EmbedWebView.this.mDidClick && motionEvent.getAction() == 1 && EmbedWebView.this.mOnClickListener != null) {
                    EmbedWebView.this.mOnClickListener.onWebViewClicked(EmbedWebView.this.mEmbedSpice.getOriginalUrl());
                    return true;
                }
                return false;
            }
        });
    }

    public static interface EmbedWebViewClickListener {
        public void onWebViewClicked(String var1);
    }

    private class EmbedWebViewClient
    extends WebViewClient {
        private EmbedWebViewClient() {
        }

        public void onPageFinished(WebView webView, String string2) {
            super.onPageFinished(webView, string2);
            if (EmbedWebView.this.mEmbedSpice.isInstagramEmbed()) {
                EmbedWebView.this.loadUrl("javascript:SpicyEmbed.getSize(document.getElementsByTagName(\"div\")[0].clientWidth + ',' + document.getElementsByTagName(\"div\")[0].clientHeight);");
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String string2) {
            EmbedWebView.this.loadUrl(string2);
            return false;
        }
    }

}

