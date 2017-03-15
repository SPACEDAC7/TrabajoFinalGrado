/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.DialogInterface$OnClickListener
 *  android.graphics.Paint
 *  android.text.Editable
 *  android.view.View
 *  android.view.Window
 *  android.webkit.ConsoleMessage
 *  android.webkit.ConsoleMessage$MessageLevel
 *  android.webkit.JsPromptResult
 *  android.webkit.JsResult
 *  android.webkit.WebChromeClient
 *  android.webkit.WebChromeClient$CustomViewCallback
 *  android.webkit.WebResourceResponse
 *  android.webkit.WebSettings
 *  android.webkit.WebStorage
 *  android.webkit.WebStorage$QuotaUpdater
 *  android.webkit.WebView
 *  android.widget.EditText
 *  android.widget.LinearLayout
 *  android.widget.TextView
 */
package com.google.ads.util;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.text.Editable;
import android.view.View;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.AdActivity;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.l;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.i;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

@TargetApi(value=11)
public class g {
    public static void a(View view) {
        view.setLayerType(1, null);
    }

    public static void a(Window window) {
        window.setFlags(16777216, 16777216);
    }

    public static void a(WebSettings webSettings, m i2) {
        Context context = i2.f.a();
        i2 = i2.a.a().a.a();
        webSettings.setAppCacheEnabled(true);
        webSettings.setAppCacheMaxSize(i2.f.a().longValue());
        webSettings.setAppCachePath(new File(context.getCacheDir(), "admob").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        webSettings.setDomStorageEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
    }

    public static void b(View view) {
        view.setLayerType(0, null);
    }

    public static class a
    extends WebChromeClient {
        private final m a;

        public a(m m2) {
            this.a = m2;
        }

        private static void a(AlertDialog.Builder builder, Context context, String string2, String string3, final JsPromptResult jsPromptResult) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText((CharSequence)string2);
            context = new EditText(context);
            context.setText((CharSequence)string3);
            linearLayout.addView((View)textView);
            linearLayout.addView((View)context);
            builder.setView((View)linearLayout).setPositiveButton(17039370, new DialogInterface.OnClickListener((EditText)context){
                final /* synthetic */ EditText b;

                public void onClick(DialogInterface dialogInterface, int n2) {
                    jsPromptResult.confirm(this.b.getText().toString());
                }
            }).setNegativeButton(17039360, new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    jsPromptResult.cancel();
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener(){

                public void onCancel(DialogInterface dialogInterface) {
                    jsPromptResult.cancel();
                }
            }).create().show();
        }

        private static void a(AlertDialog.Builder builder, String string2, final JsResult jsResult) {
            builder.setMessage((CharSequence)string2).setPositiveButton(17039370, new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    jsResult.confirm();
                }
            }).setNegativeButton(17039360, new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    jsResult.cancel();
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener(){

                public void onCancel(DialogInterface dialogInterface) {
                    jsResult.cancel();
                }
            }).create().show();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private static boolean a(WebView object, String string2, String string3, String string4, JsResult jsResult, JsPromptResult jsPromptResult, boolean bl) {
            if (!(object instanceof AdWebView) || (object = ((AdWebView)((Object)object)).d()) == null) return false;
            AlertDialog.Builder builder = new AlertDialog.Builder((Context)object);
            builder.setTitle((CharSequence)string2);
            if (bl) {
                a.a(builder, (Context)object, string3, string4, jsPromptResult);
                do {
                    return true;
                    break;
                } while (true);
            }
            a.a(builder, string3, jsResult);
            return true;
        }

        public void onCloseWindow(WebView webView) {
            if (webView instanceof AdWebView) {
                ((AdWebView)webView).a();
            }
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean onConsoleMessage(ConsoleMessage var1_1) {
            var2_2 = "JS: " + var1_1.message() + " (" + var1_1.sourceId() + ":" + var1_1.lineNumber() + ")";
            switch (com.google.ads.util.g$1.a[var1_1.messageLevel().ordinal()]) {
                case 1: {
                    com.google.ads.util.b.b(var2_2);
                    ** break;
                }
                case 2: {
                    com.google.ads.util.b.e(var2_2);
                    ** break;
                }
                case 3: 
                case 4: {
                    com.google.ads.util.b.c(var2_2);
                }
lbl11: // 4 sources:
                default: {
                    return super.onConsoleMessage(var1_1);
                }
                case 5: 
            }
            com.google.ads.util.b.a(var2_2);
            return super.onConsoleMessage(var1_1);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onExceededDatabaseQuota(String object, String string2, long l2, long l3, long l4, WebStorage.QuotaUpdater quotaUpdater) {
            object = this.a.a.a().a.a();
            long l5 = object.i.a() - l4;
            if (l5 <= 0) {
                quotaUpdater.updateQuota(l2);
                return;
            }
            if (l2 == 0) {
                if (l3 > l5 || l3 > object.j.a()) {
                    l3 = 0;
                }
            } else if (l3 == 0) {
                l3 = Math.min(Math.min(object.k.a(), l5) + l2, object.j.a());
            } else {
                l4 = l2;
                if (l3 <= Math.min(object.j.a() - l2, l5)) {
                    l4 = l2 + l3;
                }
                l3 = l4;
            }
            quotaUpdater.updateQuota(l3);
        }

        public boolean onJsAlert(WebView webView, String string2, String string3, JsResult jsResult) {
            return a.a(webView, string2, string3, null, jsResult, null, false);
        }

        public boolean onJsBeforeUnload(WebView webView, String string2, String string3, JsResult jsResult) {
            return a.a(webView, string2, string3, null, jsResult, null, false);
        }

        public boolean onJsConfirm(WebView webView, String string2, String string3, JsResult jsResult) {
            return a.a(webView, string2, string3, null, jsResult, null, false);
        }

        public boolean onJsPrompt(WebView webView, String string2, String string3, String string4, JsPromptResult jsPromptResult) {
            return a.a(webView, string2, string3, string4, null, jsPromptResult, true);
        }

        public void onReachedMaxAppCacheSize(long l2, long l3, WebStorage.QuotaUpdater quotaUpdater) {
            l.a a2 = this.a.a.a().a.a();
            long l4 = a2.h.a();
            if (l4 - l3 < (l2 = a2.g.a() + l2)) {
                quotaUpdater.updateQuota(0);
                return;
            }
            quotaUpdater.updateQuota(l2);
        }

        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            customViewCallback.onCustomViewHidden();
        }

    }

    public static class b
    extends com.google.ads.internal.i {
        public b(d d2, Map<String, n> map, boolean bl, boolean bl2) {
            super(d2, map, bl, bl2);
        }

        private static WebResourceResponse a(String object, Context context) throws IOException {
            object = (HttpURLConnection)new URL((String)object).openConnection();
            try {
                AdUtil.a((HttpURLConnection)object, context.getApplicationContext());
                object.connect();
                context = new WebResourceResponse("application/javascript", "UTF-8", (InputStream)new ByteArrayInputStream(AdUtil.a(new InputStreamReader(object.getInputStream())).getBytes("UTF-8")));
                return context;
            }
            finally {
                object.disconnect();
            }
        }

        /*
         * Loose catch block
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public WebResourceResponse shouldInterceptRequest(WebView webView, String string2) {
            Object object;
            block8 : {
                try {
                    if (!"mraid.js".equalsIgnoreCase(new File(string2).getName())) return super.shouldInterceptRequest(webView, string2);
                    object = this.a.j();
                    if (object != null) {
                        object.b(true);
                    } else {
                        this.a.a(true);
                    }
                    object = this.a.h().a.a().a.a();
                    if (!this.a.h().b()) {
                        if (this.b) {
                            object = object.d.a();
                            com.google.ads.util.b.a("shouldInterceptRequest(" + (String)object + ")");
                            return b.a((String)object, webView.getContext());
                        }
                        object = object.c.a();
                        com.google.ads.util.b.a("shouldInterceptRequest(" + (String)object + ")");
                        return b.a((String)object, webView.getContext());
                    }
                    break block8;
                }
                catch (IOException var3_4) {
                    com.google.ads.util.b.d("IOException fetching MRAID JS.", var3_4);
                }
                return super.shouldInterceptRequest(webView, string2);
            }
            object = object.e.a();
            com.google.ads.util.b.a("shouldInterceptRequest(" + (String)object + ")");
            return b.a((String)object, webView.getContext());
            catch (Throwable throwable) {
                com.google.ads.util.b.b("An unknown error occurred fetching MRAID JS.", throwable);
                return super.shouldInterceptRequest(webView, string2);
            }
        }
    }

}

