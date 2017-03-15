/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.SystemClock
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.MotionEvent
 *  android.webkit.WebView
 */
package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import java.util.HashMap;

public class ab
implements n {
    private static final a a = a.a.b();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected int a(HashMap<String, String> object, String string2, int n2, DisplayMetrics displayMetrics) {
        float f2;
        object = (String)object.get(string2);
        int n3 = n2;
        if (object == null) return n3;
        try {
            f2 = TypedValue.applyDimension((int)1, (float)Integer.parseInt((String)object), (DisplayMetrics)displayMetrics);
        }
        catch (NumberFormatException numberFormatException) {
            b.a("Could not parse \"" + string2 + "\" in a video gmsg: " + (String)object);
            return n2;
        }
        return (int)f2;
    }

    @Override
    public void a(d object, HashMap<String, String> object2, WebView object3) {
        AdWebView adWebView;
        String string2 = object2.get("action");
        if (string2 == null) {
            b.a("No \"action\" parameter in a video gmsg.");
            return;
        }
        if (object3 instanceof AdWebView) {
            adWebView = (AdWebView)((Object)object3);
            object3 = adWebView.d();
            if (object3 == null) {
                b.a("Could not get adActivity for a video gmsg.");
                return;
            }
        } else {
            b.a("Could not get adWebView for a video gmsg.");
            return;
        }
        boolean bl = string2.equals("new");
        boolean bl2 = string2.equals("position");
        if (bl || bl2) {
            object = AdUtil.a((Activity)object3);
            int n2 = this.a((HashMap<String, String>)object2, "x", 0, (DisplayMetrics)object);
            int n3 = this.a((HashMap<String, String>)object2, "y", 0, (DisplayMetrics)object);
            int n4 = this.a((HashMap<String, String>)object2, "w", -1, (DisplayMetrics)object);
            int n5 = this.a((HashMap<String, String>)object2, "h", -1, (DisplayMetrics)object);
            if (bl && object3.getAdVideoView() == null) {
                object3.newAdVideoView(n2, n3, n4, n5);
                return;
            }
            object3.moveAdVideoView(n2, n3, n4, n5);
            return;
        }
        object = object3.getAdVideoView();
        if (object == null) {
            a.a(adWebView, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
            return;
        }
        if (string2.equals("click")) {
            object3 = AdUtil.a((Activity)object3);
            int n6 = this.a((HashMap<String, String>)object2, "x", 0, (DisplayMetrics)object3);
            int n7 = this.a((HashMap<String, String>)object2, "y", 0, (DisplayMetrics)object3);
            long l2 = SystemClock.uptimeMillis();
            object.a(MotionEvent.obtain((long)l2, (long)l2, (int)0, (float)n6, (float)n7, (int)0));
            return;
        }
        if (string2.equals("controls")) {
            if ((object2 = object2.get("enabled")) == null) {
                b.a("No \"enabled\" parameter in a controls video gmsg.");
                return;
            }
            if (object2.equals("true")) {
                object.setMediaControllerEnabled(true);
                return;
            }
            object.setMediaControllerEnabled(false);
            return;
        }
        if (string2.equals("currentTime")) {
            if ((object2 = (String)object2.get("time")) == null) {
                b.a("No \"time\" parameter in a currentTime video gmsg.");
                return;
            }
            try {
                object.a((int)(Float.parseFloat((String)object2) * 1000.0f));
                return;
            }
            catch (NumberFormatException var1_2) {
                b.a("Could not parse \"time\" parameter: " + (String)object2);
                return;
            }
        }
        if (string2.equals("hide")) {
            object.setVisibility(4);
            return;
        }
        if (string2.equals("load")) {
            object.b();
            return;
        }
        if (string2.equals("pause")) {
            object.c();
            return;
        }
        if (string2.equals("play")) {
            object.d();
            return;
        }
        if (string2.equals("show")) {
            object.setVisibility(0);
            return;
        }
        if (string2.equals("src")) {
            object.setSrc((String)object2.get("src"));
            return;
        }
        b.a("Unknown video action: " + string2);
    }
}

