/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.net.http.SslError
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.webkit.CookieManager
 *  android.webkit.SslErrorHandler
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebSettings$PluginState
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  android.widget.ProgressBar
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.android.data.comment;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.buzzfeed.toolkit.util.UIUtil;

public class FacebookCommentsView
extends RelativeLayout {
    private static final int NUMBER_OF_COMMENTS = 5;
    ProgressBar mProgressSpinner;
    String mUrl;
    WebView mWebView;

    public FacebookCommentsView(Context context) {
        super(context);
        this.initialize();
    }

    public FacebookCommentsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public FacebookCommentsView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    private void hideProgress() {
        this.mProgressSpinner.setVisibility(8);
        this.mWebView.setVisibility(0);
    }

    private void initialize() {
        FacebookCommentsView.inflate((Context)this.getContext(), (int)2130903149, (ViewGroup)this);
        this.setupWebView();
    }

    private void setupWebView() {
        this.mWebView = (WebView)UIUtil.findView((View)this, 2131820894);
        this.mProgressSpinner = (ProgressBar)UIUtil.findView((View)this, 2131820893);
        this.mWebView.setWebViewClient((WebViewClient)new UriWebViewClient());
        this.mWebView.setWebChromeClient(new WebChromeClient());
        this.mWebView.setFocusable(true);
        this.mWebView.setFocusableInTouchMode(true);
        this.mWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setAppCacheEnabled(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.mWebView.getSettings().setSupportMultipleWindows(false);
        this.mWebView.getSettings().setSupportZoom(false);
        this.mWebView.getSettings().setBuiltInZoomControls(false);
        CookieManager.getInstance().setAcceptCookie(true);
        if (Build.VERSION.SDK_INT >= 21) {
            this.mWebView.getSettings().setMixedContentMode(0);
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.mWebView, true);
        }
    }

    private void showProgress() {
        this.mProgressSpinner.setVisibility(0);
        this.mWebView.setVisibility(8);
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void loadCommentsForUrl(String string2) {
        this.showProgress();
        String string3 = "<!doctype html> <html lang=\"en\"> <head></head> <body> <div id=\"fb-root\"></div> <script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8\"; fjs.parentNode.insertBefore(js, fjs); }(document, 'script', 'facebook-jssdk'));</script> <div class=\"fb-comments\" data-href=\"" + string2 + "\" " + "data-numposts=\"" + 5 + "\" data-order-by=\"social\">" + "</div> </body> </html>";
        this.mWebView.loadDataWithBaseURL("https://www.buzzfeed.com", string3, "text/html", "UTF-8", null);
        this.mUrl = string2;
    }

    private class UriWebViewClient
    extends WebViewClient {
        private UriWebViewClient() {
        }

        public void onPageFinished(WebView webView, String string2) {
            super.onPageFinished(webView, string2);
            FacebookCommentsView.this.hideProgress();
            if (string2.contains("/plugins/close_popup.php?reload=")) {
                FacebookCommentsView.this.loadCommentsForUrl(FacebookCommentsView.this.getUrl());
            }
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            FacebookCommentsView.this.hideProgress();
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String string2) {
            if (!Uri.parse((String)string2).getHost().equals("m.facebook.com")) {
                return true;
            }
            return false;
        }
    }

}

