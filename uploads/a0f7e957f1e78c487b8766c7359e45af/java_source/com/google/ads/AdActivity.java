/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.SystemClock
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 *  android.view.Window
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageButton
 *  android.widget.RelativeLayout
 *  android.widget.RelativeLayout$LayoutParams
 */
package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.google.ads.AdSize;
import com.google.ads.ag;
import com.google.ads.ai;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.internal.i;
import com.google.ads.l;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import com.google.ads.util.g;
import com.google.ads.util.i;
import java.util.HashMap;
import java.util.Map;

public class AdActivity
extends Activity
implements View.OnClickListener {
    public static final String BASE_URL_PARAM = "baseurl";
    public static final String CUSTOM_CLOSE_PARAM = "custom_close";
    public static final String HTML_PARAM = "html";
    public static final String INTENT_ACTION_PARAM = "i";
    public static final String ORIENTATION_PARAM = "o";
    public static final String TYPE_PARAM = "m";
    public static final String URL_PARAM = "u";
    private static final a a = a.a.b();
    private static final Object b = new Object();
    private static AdActivity c = null;
    private static d d = null;
    private static AdActivity e = null;
    private static AdActivity f = null;
    private static final StaticMethodWrapper g = new StaticMethodWrapper();
    private AdWebView h;
    private FrameLayout i;
    private int j;
    private ViewGroup k = null;
    private boolean l;
    private long m;
    private RelativeLayout n;
    private AdActivity o = null;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private AdVideoView t;

    private RelativeLayout.LayoutParams a(int n2, int n3, int n4, int n5) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(n4, n5);
        layoutParams.setMargins(n2, n3, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    private void a(String string2) {
        b.b(string2);
        this.finish();
    }

    private void a(String string2, Throwable throwable) {
        b.b(string2, throwable);
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void d() {
        if (!this.l) {
            if (this.h != null) {
                a.b(this.h);
                this.h.setAdActivity(null);
                this.h.setIsExpandedMraid(false);
                if (!this.q && this.n != null && this.k != null) {
                    if (this.r && !this.s) {
                        b.a("Disabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.b();
                    } else if (!this.r && this.s) {
                        b.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.c();
                    }
                    this.n.removeView((View)this.h);
                    this.k.addView((View)this.h);
                }
            }
            if (this.t != null) {
                this.t.e();
                this.t = null;
            }
            if (this == c) {
                c = null;
            }
            f = this.o;
            Object object = b;
            synchronized (object) {
                if (d != null && this.q && this.h != null) {
                    if (this.h == d.k()) {
                        d.a();
                    }
                    this.h.stopLoading();
                }
                if (this == e) {
                    e = null;
                    if (d != null) {
                        d.t();
                        d = null;
                    } else {
                        b.e("currentAdManager is null while trying to destroy AdActivity.");
                    }
                }
            }
            this.l = true;
            b.a("AdActivity is closing.");
        }
    }

    public static boolean isShowing() {
        return g.isShowing();
    }

    public static void launchAdActivity(d d2, e e2) {
        g.launchAdActivity(d2, e2);
    }

    protected View a(int n2, boolean bl) {
        this.j = (int)TypedValue.applyDimension((int)1, (float)n2, (DisplayMetrics)this.getResources().getDisplayMetrics());
        this.i = new FrameLayout(this.getApplicationContext());
        this.i.setMinimumWidth(this.j);
        this.i.setMinimumHeight(this.j);
        this.i.setOnClickListener((View.OnClickListener)this);
        this.setCustomClose(bl);
        return this.i;
    }

    protected AdVideoView a(Activity activity) {
        return new AdVideoView(activity, this.h);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void a(AdWebView adWebView, boolean bl, int n2, boolean bl2, boolean bl3) {
        this.requestWindowFeature(1);
        Window window = this.getWindow();
        window.setFlags(1024, 1024);
        if (AdUtil.a >= 11) {
            if (this.r) {
                b.a("Enabling hardware acceleration on the AdActivity window.");
                g.a(window);
            } else {
                b.a("Disabling hardware acceleration on the AdActivity WebView.");
                adWebView.b();
            }
        }
        if ((window = adWebView.getParent()) != null) {
            if (!bl2) {
                this.a("Interstitial created with an AdWebView that has a parent.");
                return;
            }
            if (!(window instanceof ViewGroup)) {
                this.a("MRAID banner was not a child of a ViewGroup.");
                return;
            }
            this.k = (ViewGroup)window;
            this.k.removeView((View)adWebView);
        }
        if (adWebView.d() != null) {
            this.a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
            return;
        } else {
            this.setRequestedOrientation(n2);
            adWebView.setAdActivity(this);
            n2 = bl2 ? 50 : 32;
            window = this.a(n2, bl3);
            this.n.addView((View)adWebView, -1, -1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (bl2) {
                layoutParams.addRule(10);
                layoutParams.addRule(11);
            } else {
                layoutParams.addRule(10);
                layoutParams.addRule(9);
            }
            this.n.addView((View)window, (ViewGroup.LayoutParams)layoutParams);
            this.n.setKeepScreenOn(true);
            this.setContentView((View)this.n);
            this.n.getRootView().setBackgroundColor(-16777216);
            if (!bl) return;
            {
                a.a(adWebView);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void a(d d2) {
        this.h = null;
        this.m = SystemClock.elapsedRealtime();
        this.p = true;
        Object object = b;
        synchronized (object) {
            if (c == null) {
                c = this;
                d2.v();
            }
            return;
        }
    }

    protected void a(HashMap<String, String> hashMap, d d2) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.putExtras(this.getIntent().getExtras());
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY", hashMap.get("u"));
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY_TYPE", ai.b.a.c);
        intent.putExtra("com.google.circles.platform.intent.extra.ACTION", hashMap.get("a"));
        this.a(d2);
        try {
            b.a("Launching Google+ intent from AdActivity.");
            this.startActivityForResult(intent, 0);
            return;
        }
        catch (ActivityNotFoundException var1_2) {
            this.a(var1_2.getMessage(), (Throwable)var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void b(HashMap<String, String> intent, d d2) {
        if (intent == null) {
            this.a("Could not get the paramMap in launchIntent()");
            return;
        }
        String string2 = (String)intent.get("u");
        if (string2 == null) {
            this.a("Could not get the URL parameter in launchIntent().");
            return;
        }
        String string3 = (String)intent.get("i");
        String string4 = (String)intent.get("m");
        string2 = Uri.parse((String)string2);
        intent = string3 == null ? new Intent("android.intent.action.VIEW", (Uri)string2) : new Intent(string3, (Uri)string2);
        if (string4 != null) {
            intent.setDataAndType((Uri)string2, string4);
        }
        this.a(d2);
        try {
            b.a("Launching an intent from AdActivity: " + intent.getAction() + " - " + string2);
            this.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var1_2) {
            this.a(var1_2.getMessage(), (Throwable)var1_2);
            return;
        }
    }

    public AdVideoView getAdVideoView() {
        return this.t;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public AdWebView getOpeningAdWebView() {
        if (this.o != null) {
            return this.o.h;
        }
        Object object = b;
        synchronized (object) {
            if (d == null) {
                b.e("currentAdManager was null while trying to get the opening AdWebView.");
                return null;
            }
            AdWebView adWebView = d.k();
            if (adWebView != this.h) {
                return adWebView;
            }
            return null;
        }
    }

    public void moveAdVideoView(int n2, int n3, int n4, int n5) {
        if (this.t != null) {
            this.t.setLayoutParams((ViewGroup.LayoutParams)this.a(n2, n3, n4, n5));
            this.t.requestLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void newAdVideoView(int n2, int n3, int n4, int n5) {
        if (this.t != null) {
            return;
        }
        this.t = this.a(this);
        this.n.addView((View)this.t, 0, (ViewGroup.LayoutParams)this.a(n2, n3, n4, n5));
        Object object = b;
        synchronized (object) {
            if (d == null) {
                b.e("currentAdManager was null while trying to get the opening AdWebView.");
                return;
            }
            d.l().b(false);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onActivityResult(int n2, int n3, Intent object) {
        super.onActivityResult(n2, n3, (Intent)object);
        if (this.getOpeningAdWebView() != null && object != null && object.getExtras() != null && object.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") != null && object.getExtras().getString("com.google.circles.platform.result.extra.ACTION") != null) {
            String string2 = object.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
            object = object.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
            if (string2.equals("yes")) {
                if (object.equals("insert")) {
                    ag.a((WebView)this.getOpeningAdWebView(), true);
                } else if (object.equals("delete")) {
                    ag.a((WebView)this.getOpeningAdWebView(), false);
                }
            }
        }
        this.finish();
    }

    public void onClick(View view) {
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onCreate(Bundle object) {
        Object object2;
        boolean bl;
        boolean bl2;
        boolean bl3 = false;
        super.onCreate((Bundle)object);
        this.l = false;
        HashMap<String, String> hashMap = b;
        synchronized (hashMap) {
            if (d == null) {
                this.a("Could not get currentAdManager.");
                return;
            }
            object = d;
            if (e == null) {
                e = this;
                object.u();
            }
            if (this.o == null && f != null) {
                this.o = f;
            }
            f = this;
            if (object.h().a() && e == this || object.h().b() && this.o == e) {
                object.w();
            }
            bl2 = object.q();
            object2 = object.h().a.a().a.a();
            bl = AdUtil.a >= object2.a.a();
            this.s = bl;
            bl = AdUtil.a >= object2.b.a();
            this.r = bl;
        }
        this.n = null;
        this.p = false;
        this.q = true;
        this.t = null;
        hashMap = this.getIntent().getBundleExtra("com.google.ads.AdOpener");
        if (hashMap == null) {
            this.a("Could not get the Bundle used to create AdActivity.");
            return;
        }
        hashMap = new e((Bundle)hashMap);
        object2 = hashMap.b();
        hashMap = hashMap.c();
        if (object2.equals("plusone")) {
            this.a(hashMap, (d)object);
            return;
        }
        if (object2.equals("intent")) {
            this.b(hashMap, (d)object);
            return;
        }
        this.n = new RelativeLayout(this.getApplicationContext());
        if (object2.equals("webapp")) {
            this.h = new AdWebView(object.h(), null);
            object2 = a.c;
            bl = !bl2;
            object2 = i.a((d)object, object2, true, bl);
            object2.d(true);
            if (bl2) {
                object2.a(true);
            }
            this.h.setWebViewClient((WebViewClient)object2);
            object2 = hashMap.get("u");
            String string2 = hashMap.get("baseurl");
            String string3 = hashMap.get("html");
            if (object2 != null) {
                this.h.loadUrl((String)object2);
            } else {
                if (string3 == null) {
                    this.a("Could not get the URL or HTML parameter to show a web app.");
                    return;
                }
                this.h.loadDataWithBaseURL(string2, string3, "text/html", "utf-8", null);
            }
            int n2 = "p".equals(object2 = hashMap.get("o")) ? AdUtil.b() : ("l".equals(object2) ? AdUtil.a() : (this == e ? object.n() : -1));
            object = this.h;
            bl = hashMap != null && "1".equals(hashMap.get("custom_close"));
            this.a((AdWebView)((Object)object), false, n2, bl2, bl);
            return;
        }
        if (!object2.equals("interstitial") && !object2.equals("expand")) {
            this.a("Unknown AdOpener, <action: " + object2 + ">");
            return;
        }
        this.h = object.k();
        int n3 = object.n();
        if (object2.equals("expand")) {
            this.h.setIsExpandedMraid(true);
            this.q = false;
            bl = bl3;
            if (hashMap != null) {
                bl = bl3;
                if ("1".equals(hashMap.get("custom_close"))) {
                    bl = true;
                }
            }
            if (this.r && !this.s) {
                b.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                this.h.c();
            }
        } else {
            bl = this.h.e();
        }
        this.a(this.h, true, n3, bl2, bl);
    }

    public void onDestroy() {
        if (this.n != null) {
            this.n.removeAllViews();
        }
        if (this.isFinishing()) {
            this.d();
            if (this.q && this.h != null) {
                this.h.stopLoading();
                this.h.destroy();
                this.h = null;
            }
        }
        super.onDestroy();
    }

    public void onPause() {
        if (this.isFinishing()) {
            this.d();
        }
        super.onPause();
    }

    public void onWindowFocusChanged(boolean bl) {
        if (this.p && bl && SystemClock.elapsedRealtime() - this.m > 250) {
            b.d("Launcher AdActivity got focus and is closing.");
            this.finish();
        }
        super.onWindowFocusChanged(bl);
    }

    public void setCustomClose(boolean bl) {
        if (this.i != null) {
            this.i.removeAllViews();
            if (!bl) {
                ImageButton imageButton = new ImageButton((Context)this);
                imageButton.setImageResource(17301527);
                imageButton.setBackgroundColor(0);
                imageButton.setOnClickListener((View.OnClickListener)this);
                imageButton.setPadding(0, 0, 0, 0);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.j, this.j, 17);
                this.i.addView((View)imageButton, (ViewGroup.LayoutParams)layoutParams);
            }
        }
    }

    public static class StaticMethodWrapper {
        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean isShowing() {
            Object object = b;
            synchronized (object) {
                if (e == null) return false;
                return true;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void launchAdActivity(d d2, e e2) {
            Object object = b;
            synchronized (object) {
                if (d == null) {
                    d = d2;
                } else if (d != d2) {
                    b.b("Tried to launch a new AdActivity with a different AdManager.");
                    return;
                }
            }
            d2 = d2.h().e.a();
            if (d2 == null) {
                b.e("activity was null while launching an AdActivity.");
                return;
            }
            object = new Intent(d2.getApplicationContext(), (Class)AdActivity.class);
            object.putExtra("com.google.ads.AdOpener", e2.a());
            try {
                b.a("Launching AdActivity.");
                d2.startActivity((Intent)object);
                return;
            }
            catch (ActivityNotFoundException var1_2) {
                b.b("Activity not found.", (Throwable)var1_2);
                return;
            }
        }
    }

}

