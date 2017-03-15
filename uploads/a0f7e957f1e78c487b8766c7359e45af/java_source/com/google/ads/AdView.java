/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$NotFoundException
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.FrameLayout
 *  android.widget.LinearLayout
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AppEventListener;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.b;
import com.google.ads.internal.d;
import com.google.ads.internal.j;
import com.google.ads.m;
import com.google.ads.util.AdUtil;
import com.google.ads.util.i;
import java.util.HashSet;
import java.util.Set;

public class AdView
extends RelativeLayout
implements Ad {
    private d a;

    public AdView(Activity activity, AdSize adSize, String string2) {
        super(activity.getApplicationContext());
        try {
            this.a((Context)activity, adSize, null);
            this.b((Context)activity, adSize, null);
            this.a(activity, adSize, string2);
            return;
        }
        catch (b var3_4) {
            this.a((Context)activity, var3_4.c("Could not initialize AdView"), adSize, null);
            var3_4.a("Could not initialize AdView");
            return;
        }
    }

    protected AdView(Activity activity, AdSize[] arradSize, String string2) {
        this(activity, new AdSize(0, 0), string2);
        this.a(arradSize);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a(context, attributeSet);
    }

    public AdView(Context context, AttributeSet attributeSet, int n2) {
        this(context, attributeSet);
    }

    private int a(Context context, int n2) {
        return (int)TypedValue.applyDimension((int)1, (float)n2, (DisplayMetrics)context.getResources().getDisplayMetrics());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(Activity activity, AdSize adSize, String string2) throws b {
        FrameLayout frameLayout = new FrameLayout((Context)activity);
        frameLayout.setFocusable(false);
        this.a = new d(this, activity, adSize, string2, (ViewGroup)frameLayout, false);
        this.setGravity(17);
        try {
            activity = j.a(activity, this.a);
            if (activity != null) {
                activity.addView((View)frameLayout, -2, -2);
                this.addView((View)activity, -2, -2);
                return;
            }
            this.addView((View)frameLayout, -2, -2);
            return;
        }
        catch (VerifyError var1_2) {
            com.google.ads.util.b.a("Gestures disabled: Not supported on this version of Android.", var1_2);
            this.addView((View)frameLayout, -2, -2);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void a(Context var1_1, AttributeSet var2_2) {
        block12 : {
            if (var2_2 == null) {
                return;
            }
            var4_3 = this.b("adSize", var1_1, var2_2, true);
            var5_7 = this.a((String)var4_3);
            if (var5_7 == null) throw new b("Attribute \"adSize\" invalid: " + (String)var4_3, true);
            try {
                if (var5_7.length == 0) {
                    throw new b("Attribute \"adSize\" invalid: " + (String)var4_3, true);
                }
                if (!this.a("adUnitId", var2_2)) {
                    throw new b("Required XML attribute \"adUnitId\" missing", true);
                }
                break block12;
            }
            catch (b var4_4) {}
            ** GOTO lbl-1000
        }
        if (this.isInEditMode()) {
            this.a(var1_1, "Ads by Google", -1, (AdSize)var5_7[0], var2_2);
            return;
        }
        var4_3 = this.b("adUnitId", var1_1, var2_2, true);
        var3_10 = this.a("loadAdOnCreate", var1_1, var2_2, false);
        if (var1_1 instanceof Activity == false) throw new b("AdView was initialized with a Context that wasn't an Activity.", true);
        var6_9 = (Activity)var1_1;
        this.a((Context)var6_9, (AdSize)var5_7[0], var2_2);
        this.b((Context)var6_9, (AdSize)var5_7[0], var2_2);
        if (var5_7.length == 1) {
            this.a(var6_9, (AdSize)var5_7[0], (String)var4_3);
        } else {
            this.a(var6_9, new AdSize(0, 0), (String)var4_3);
            this.a((AdSize[])var5_7);
        }
        if (var3_10 == false) return;
        var4_3 = this.c("testDevices", var1_1, var2_2, false);
        if (var4_3.contains("TEST_EMULATOR")) {
            var4_3.remove("TEST_EMULATOR");
            var4_3.add(AdRequest.TEST_EMULATOR);
        }
        this.loadAd(new AdRequest().setTestDevices(var4_3).setKeywords(this.c("keywords", var1_1, var2_2, false)));
        return;
        catch (b var4_6) {
            var5_7 = null;
        }
lbl-1000: // 2 sources:
        {
            var6_8 = var4_5.c("Could not initialize AdView");
            var5_7 = var5_7 != null && var5_7.length > 0 ? var5_7[0] : AdSize.BANNER;
            this.a(var1_1, var6_8, (AdSize)var5_7, var2_2);
            var4_5.a("Could not initialize AdView");
            if (this.isInEditMode() != false) return;
            var4_5.b("Could not initialize AdView");
            return;
        }
    }

    private void a(Context context, String string2, AdSize adSize, AttributeSet attributeSet) {
        com.google.ads.util.b.b(string2);
        this.a(context, string2, -65536, adSize, attributeSet);
    }

    private /* varargs */ void a(AdSize ... arradSize) {
        AdSize[] arradSize2 = new AdSize[arradSize.length];
        for (int i2 = 0; i2 < arradSize.length; ++i2) {
            arradSize2[i2] = AdSize.createAdSize(arradSize[i2], this.getContext());
        }
        this.a.h().l.a(arradSize2);
    }

    private boolean a(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (!AdUtil.c(context)) {
            this.a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", adSize, attributeSet);
            return false;
        }
        return true;
    }

    private boolean a(String string2, Context object, AttributeSet object2, boolean bl) throws b {
        String string3 = object2.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", string2);
        bl = object2.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", string2, bl);
        if (string3 != null) {
            object2 = object.getPackageName();
            object = string3;
            if (string3.matches("^@([^:]+)\\:(.*)$")) {
                object2 = string3.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                object = string3.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            if (object.startsWith("@bool/")) {
                TypedValue typedValue;
                block6 : {
                    string3 = object.substring("@bool/".length());
                    typedValue = new TypedValue();
                    try {
                        this.getResources().getValue((String)object2 + ":bool/" + string3, typedValue, true);
                        if (typedValue.type != 18) break block6;
                        if (typedValue.data != 0) {
                            return true;
                        }
                    }
                    catch (Resources.NotFoundException var3_4) {
                        throw new b("Could not find resource for " + string2 + ": " + (String)object, true, (Throwable)var3_4);
                    }
                    return false;
                }
                throw new b("Resource " + string2 + " was not a boolean: " + (Object)typedValue, true);
            }
        }
        return bl;
    }

    private boolean a(String string2, AttributeSet attributeSet) {
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", string2) != null) {
            return true;
        }
        return false;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private String b(String string2, Context object, AttributeSet object2, boolean bl) throws b {
        String string3;
        object2 = string3 = object2.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", string2);
        if (string3 != null) {
            String string4 = object.getPackageName();
            object = string3;
            if (string3.matches("^@([^:]+)\\:(.*)$")) {
                string4 = string3.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                object = string3.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            object2 = object;
            if (object.startsWith("@string/")) {
                object2 = object.substring("@string/".length());
                string3 = new TypedValue();
                this.getResources().getValue(string4 + ":string/" + (String)object2, (TypedValue)string3, true);
                if (string3.string == null) throw new b("Resource " + string2 + " was not a string: " + string3, true);
                object2 = string3.string.toString();
            }
        }
        if (!bl) return object2;
        if (object2 != null) return object2;
        throw new b("Required XML attribute \"" + string2 + "\" missing", true);
        catch (Resources.NotFoundException notFoundException) {
            throw new b("Could not find resource for " + string2 + ": " + (String)object, true, (Throwable)notFoundException);
        }
    }

    private boolean b(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (!AdUtil.b(context)) {
            this.a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adSize, attributeSet);
            return false;
        }
        return true;
    }

    private Set<String> c(String object, Context arrstring, AttributeSet object2, boolean bl) throws b {
        arrstring = this.b((String)object, (Context)arrstring, (AttributeSet)object2, bl);
        object = new HashSet();
        if (arrstring != null) {
            arrstring = arrstring.split(",");
            int n2 = arrstring.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                object2 = arrstring[i2].trim();
                if (object2.length() == 0) continue;
                object.add(object2);
            }
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    void a(Context context, String string2, int n2, AdSize adSize, AttributeSet attributeSet) {
        AdSize adSize2 = adSize;
        if (adSize == null) {
            adSize2 = AdSize.BANNER;
        }
        adSize2 = AdSize.createAdSize(adSize2, context.getApplicationContext());
        if (this.getChildCount() == 0) {
            adSize = attributeSet == null ? new TextView(context) : new TextView(context, attributeSet);
            adSize.setGravity(17);
            adSize.setText((CharSequence)string2);
            adSize.setTextColor(n2);
            adSize.setBackgroundColor(-16777216);
            string2 = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            string2.setGravity(17);
            attributeSet = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            attributeSet.setGravity(17);
            attributeSet.setBackgroundColor(n2);
            n2 = this.a(context, adSize2.getWidth());
            int n3 = this.a(context, adSize2.getHeight());
            string2.addView((View)adSize, n2 - 2, n3 - 2);
            attributeSet.addView((View)string2);
            this.addView((View)attributeSet, n2, n3);
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    AdSize[] a(String object) {
        String[] arrstring = object.split(",");
        AdSize[] arradSize = new AdSize[arrstring.length];
        int n2 = 0;
        while (n2 < arrstring.length) {
            object = arrstring[n2].trim();
            if (object.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                object = object.split("[xX]");
                object[0] = object[0].trim();
                object[1] = object[1].trim();
                int n3 = "FULL_WIDTH".equals(object[0]) ? -1 : Integer.parseInt((String)object[0]);
                boolean bl = "AUTO_HEIGHT".equals(object[1]);
                int n4 = bl ? -2 : Integer.parseInt((String)object[1]);
                object = new AdSize(n3, n4);
            } else if ("BANNER".equals(object)) {
                object = AdSize.BANNER;
            } else if ("SMART_BANNER".equals(object)) {
                object = AdSize.SMART_BANNER;
            } else if ("IAB_MRECT".equals(object)) {
                object = AdSize.IAB_MRECT;
            } else if ("IAB_BANNER".equals(object)) {
                object = AdSize.IAB_BANNER;
            } else if ("IAB_LEADERBOARD".equals(object)) {
                object = AdSize.IAB_LEADERBOARD;
            } else {
                if (!"IAB_WIDE_SKYSCRAPER".equals(object)) return null;
                object = AdSize.IAB_WIDE_SKYSCRAPER;
            }
            if (object == null) {
                return null;
            }
            arradSize[n2] = object;
            ++n2;
        }
        return arradSize;
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    public void destroy() {
        this.a.b();
    }

    @Override
    public boolean isReady() {
        if (this.a == null) {
            return false;
        }
        return this.a.r();
    }

    public boolean isRefreshing() {
        if (this.a == null) {
            return false;
        }
        return this.a.s();
    }

    @Override
    public void loadAd(AdRequest adRequest) {
        if (this.a != null) {
            if (this.isRefreshing()) {
                this.a.e();
            }
            this.a.a(adRequest);
        }
    }

    protected void onMeasure(int n2, int n3) {
        AdWebView adWebView = this.a.k();
        if (adWebView != null) {
            adWebView.setVisibility(0);
        }
        super.onMeasure(n2, n3);
    }

    @Override
    public void setAdListener(AdListener adListener) {
        this.a.h().m.a(adListener);
    }

    protected void setAppEventListener(AppEventListener appEventListener) {
        this.a.h().n.a(appEventListener);
    }

    protected /* varargs */ void setSupportedAdSizes(AdSize ... arradSize) {
        if (this.a.h().l.a() == null) {
            com.google.ads.util.b.b("Error: Tried to set supported ad sizes on a single-size AdView.");
            return;
        }
        this.a(arradSize);
    }

    @Override
    public void stopLoading() {
        if (this.a != null) {
            this.a.A();
        }
    }
}

