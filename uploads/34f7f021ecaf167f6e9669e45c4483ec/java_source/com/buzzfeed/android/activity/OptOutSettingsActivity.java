/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.webkit.ConsoleMessage
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  android.widget.ProgressBar
 */
package com.buzzfeed.android.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class OptOutSettingsActivity
extends BaseActivity {
    private static final String TAG = OptOutSettingsActivity.class.getName();

    public static Intent getIntent(Context context, String string2) {
        context = new Intent(context, (Class)OptOutSettingsActivity.class);
        context.setData(Uri.parse((String)string2));
        return context;
    }

    private void trackBack() {
        DustbusterClient.getInstance().trackUiTapEvent("opt_out_settings_screen", "back", "opt_out_settings_back", "header");
    }

    @Override
    public void onBackPressed() {
        this.trackBack();
        super.onBackPressed();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903074);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                OptOutSettingsActivity.this.onBackPressed();
            }
        });
        bundle = (WebView)this.findViewById(2131820704);
        final ProgressBar progressBar = (ProgressBar)this.findViewById(2131820705);
        bundle.getSettings().setBuiltInZoomControls(true);
        bundle.getSettings().setLoadWithOverviewMode(true);
        bundle.getSettings().setUseWideViewPort(true);
        bundle.getSettings().setDisplayZoomControls(false);
        bundle.getSettings().setUserAgentString(bundle.getSettings().getUserAgentString() + " " + BuzzUtils.getBuzzFeedUserAgentSuffix(this.getApplicationContext()));
        if (VersionUtil.hasKitKat() && !EnvironmentConfig.isProductionBuild()) {
            WebView.setWebContentsDebuggingEnabled((boolean)true);
        }
        bundle.setWebViewClient(new WebViewClient(){

            public boolean shouldOverrideUrlLoading(WebView webView, String string2) {
                String string3 = TAG + ".shouldOverrideUrlLoading";
                LogUtil.d(string3, "url:" + string2);
                Uri uri = Uri.parse((String)string2);
                String string4 = uri.getQueryParameter("opt_out");
                if (string4 != null && string4.equals("1")) {
                    BuzzUtils.setIsPoundEnabled(webView.getContext(), false);
                    LogUtil.d(string3, "Opting out of pound tracking");
                    new BuzzFeedAlertDialog.Builder((Context)OptOutSettingsActivity.this).setTitle(2131296584).setMessage(2131296583).setPositiveButton(2131296461, new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            OptOutSettingsActivity.this.finish();
                        }
                    }).create().show();
                    webView.loadUrl("about:blank");
                    return false;
                }
                string3 = string2;
                if (uri.getQueryParameter("s") == null) {
                    string3 = string2;
                    if (uri.getPath().equals("/about/optout")) {
                        string3 = BuzzUtils.appendMobileAppParam(string2);
                    }
                }
                webView.loadUrl(string3);
                return false;
            }

        });
        bundle.setWebChromeClient(new WebChromeClient(){

            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                LogUtil.d(TAG + ".WebViewChromeClient", consoleMessage.message() + " (line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId() + ")");
                return true;
            }

            public void onProgressChanged(WebView webView, int n2) {
                if (n2 == 100) {
                    progressBar.setVisibility(8);
                    webView.setVisibility(0);
                }
            }
        });
        bundle.loadUrl(this.getIntent().getData().toString());
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.trackBack();
            this.finish();
        }
        return true;
    }

}

