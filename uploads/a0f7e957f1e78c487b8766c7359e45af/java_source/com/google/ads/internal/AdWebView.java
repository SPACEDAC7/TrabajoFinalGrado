/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.webkit.DownloadListener
 *  android.webkit.WebChromeClient
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 */
package com.google.ads.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.AdSize;
import com.google.ads.m;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.g;
import com.google.ads.util.h;
import com.google.ads.util.i;
import java.lang.ref.WeakReference;

public class AdWebView
extends WebView {
    private WeakReference<AdActivity> a;
    private AdSize b;
    private boolean c;
    private boolean d;
    private boolean e;

    /*
     * Enabled aggressive block sorting
     */
    public AdWebView(m m2, AdSize adSize) {
        super(m2.f.a());
        this.b = adSize;
        this.a = null;
        this.c = false;
        this.d = false;
        this.e = false;
        this.setBackgroundColor(0);
        AdUtil.a(this);
        adSize = this.getSettings();
        adSize.setSupportMultipleWindows(false);
        adSize.setJavaScriptEnabled(true);
        adSize.setSavePassword(false);
        this.setDownloadListener(new DownloadListener(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public void onDownloadStart(String string2, String string3, String object, String string4, long l2) {
                string3 = new Intent("android.intent.action.VIEW");
                string3.setDataAndType(Uri.parse((String)string2), string4);
                object = AdWebView.this.d();
                if (object == null) return;
                try {
                    if (!AdUtil.a((Intent)string3, (Context)object)) return;
                    object.startActivity((Intent)string3);
                    return;
                }
                catch (ActivityNotFoundException var2_3) {
                    b.a("Couldn't find an Activity to view url/mimetype: " + string2 + " / " + string4);
                    return;
                }
                catch (Throwable var2_4) {
                    b.b("Unknown error trying to start activity to view URL: " + string2, var2_4);
                    return;
                }
            }
        });
        if (AdUtil.a >= 11) {
            g.a((WebSettings)adSize, m2);
        }
        this.setScrollBarStyle(33554432);
        if (AdUtil.a >= 14) {
            this.setWebChromeClient((WebChromeClient)new h.a(m2));
            return;
        } else {
            if (AdUtil.a < 11) return;
            {
                this.setWebChromeClient((WebChromeClient)new g.a(m2));
                return;
            }
        }
    }

    public void a() {
        AdActivity adActivity = this.d();
        if (adActivity != null) {
            adActivity.finish();
        }
    }

    public void b() {
        if (AdUtil.a >= 11) {
            g.a((View)this);
        }
        this.d = true;
    }

    public void c() {
        if (this.d && AdUtil.a >= 11) {
            g.b((View)this);
        }
        this.d = false;
    }

    public AdActivity d() {
        if (this.a != null) {
            return this.a.get();
        }
        return null;
    }

    public void destroy() {
        try {
            super.destroy();
            this.setWebViewClient(new WebViewClient());
            return;
        }
        catch (Throwable var1_1) {
            b.b("An error occurred while destroying an AdWebView:", var1_1);
            return;
        }
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }

    public void loadDataWithBaseURL(String string2, String string3, String string4, String string5, String string6) {
        try {
            super.loadDataWithBaseURL(string2, string3, string4, string5, string6);
            return;
        }
        catch (Throwable var1_2) {
            b.b("An error occurred while loading data in AdWebView:", var1_2);
            return;
        }
    }

    public void loadUrl(String string2) {
        try {
            super.loadUrl(string2);
            return;
        }
        catch (Throwable var1_2) {
            b.b("An error occurred while loading a URL in AdWebView:", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void onMeasure(int n2, int n3) {
        int n4 = Integer.MAX_VALUE;
        synchronized (this) {
            if (this.isInEditMode()) {
                super.onMeasure(n2, n3);
            } else if (this.b == null || this.c) {
                super.onMeasure(n2, n3);
            } else {
                int n5;
                int n6;
                float f2;
                int n7;
                int n8;
                block11 : {
                    int n9 = View.MeasureSpec.getMode((int)n2);
                    n5 = View.MeasureSpec.getSize((int)n2);
                    int n10 = View.MeasureSpec.getMode((int)n3);
                    n6 = View.MeasureSpec.getSize((int)n3);
                    f2 = this.getContext().getResources().getDisplayMetrics().density;
                    n7 = (int)((float)this.b.getWidth() * f2);
                    n8 = (int)((float)this.b.getHeight() * f2);
                    n2 = n9 != Integer.MIN_VALUE && n9 != 1073741824 ? Integer.MAX_VALUE : n5;
                    if (n10 != Integer.MIN_VALUE) {
                        n3 = n4;
                        if (n10 != 1073741824) break block11;
                    }
                    n3 = n6;
                }
                if ((float)n7 - f2 * 6.0f > (float)n2 || n8 > n3) {
                    b.e("Not enough space to show ad! Wants: <" + n7 + ", " + n8 + ">, Has: <" + n5 + ", " + n6 + ">");
                    this.setVisibility(8);
                    this.setMeasuredDimension(n5, n6);
                } else {
                    this.setMeasuredDimension(n7, n8);
                }
            }
            return;
        }
    }

    public void setAdActivity(AdActivity adActivity) {
        this.a = new WeakReference<AdActivity>(adActivity);
    }

    public void setAdSize(AdSize adSize) {
        synchronized (this) {
            this.b = adSize;
            this.requestLayout();
            return;
        }
    }

    public void setCustomClose(boolean bl) {
        AdActivity adActivity;
        this.e = bl;
        if (this.a != null && (adActivity = this.a.get()) != null) {
            adActivity.setCustomClose(bl);
        }
    }

    public void setIsExpandedMraid(boolean bl) {
        this.c = bl;
    }

    public void stopLoading() {
        try {
            super.stopLoading();
            return;
        }
        catch (Throwable var1_1) {
            b.d("An error occurred while stopping loading in AdWebView:", var1_1);
            return;
        }
    }

}

