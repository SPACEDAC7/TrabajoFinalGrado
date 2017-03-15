/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.view.View
 */
package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.g;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.customevent.CustomEventBanner;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.google.ads.mediation.customevent.CustomEventExtras;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.google.ads.mediation.customevent.CustomEventServerParameters;

public class CustomEventAdapter
implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>,
MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    private String a;
    private CustomEventBanner b = null;
    private a c = null;
    private CustomEventInterstitial d = null;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private <T> T a(String string2, Class<T> class_, String string3) {
        T t2;
        try {
            t2 = g.a(string2, class_);
        }
        catch (ClassNotFoundException var2_5) {
            this.a("Make sure you created a visible class named: " + string2 + ". ", var2_5);
            do {
                return null;
                break;
            } while (true);
        }
        catch (ClassCastException var1_2) {
            this.a("Make sure your custom event implements the " + class_.getName() + " interface.", var1_2);
            return null;
        }
        catch (IllegalAccessException var2_6) {
            this.a("Make sure the default constructor for class " + string2 + " is visible. ", var2_6);
            return null;
        }
        catch (InstantiationException var2_7) {
            this.a("Make sure the name " + string2 + " does not denote an abstract class or an interface.", var2_7);
            return null;
        }
        catch (Throwable var1_3) {
            this.a("", var1_3);
            return null;
        }
        return t2;
    }

    private void a(String string2, Throwable throwable) {
        com.google.ads.util.b.b("Error during processing of custom event with label: '" + this.a + "'. Skipping custom event. " + string2, throwable);
    }

    @Override
    public void destroy() {
        if (this.b != null) {
            this.b.destroy();
        }
        if (this.d != null) {
            this.d.destroy();
        }
    }

    @Override
    public Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override
    public View getBannerView() {
        com.google.ads.util.a.b(this.c);
        return this.c.a();
    }

    @Override
    public Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters object, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a((Object)this.a);
        this.a = object.label;
        Object object2 = object.className;
        String string2 = object.parameter;
        this.b = (CustomEventBanner)this.a((String)object2, CustomEventBanner.class, this.a);
        if (this.b == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        com.google.ads.util.a.a(this.c);
        this.c = new a(mediationBannerListener);
        try {
            object2 = this.b;
            a a2 = this.c;
            String string3 = this.a;
            object = customEventExtras == null ? null : customEventExtras.getExtra(this.a);
            object2.requestBannerAd(a2, activity, string3, string2, adSize, mediationAdRequest, object);
            return;
        }
        catch (Throwable var2_3) {
            this.a("", var2_3);
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters object, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a((Object)this.a);
        this.a = object.label;
        Object object2 = object.className;
        String string2 = object.parameter;
        this.d = (CustomEventInterstitial)this.a((String)object2, CustomEventInterstitial.class, this.a);
        if (this.d == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        try {
            object2 = this.d;
            b b2 = new b(mediationInterstitialListener);
            String string3 = this.a;
            object = customEventExtras == null ? null : customEventExtras.getExtra(this.a);
            object2.requestInterstitialAd(b2, activity, string3, string2, mediationAdRequest, object);
            return;
        }
        catch (Throwable var2_3) {
            this.a("", var2_3);
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
    }

    @Override
    public void showInterstitial() {
        com.google.ads.util.a.b(this.d);
        try {
            this.d.showInterstitial();
            return;
        }
        catch (Throwable var1_1) {
            com.google.ads.util.b.b("Exception when showing custom event labeled '" + this.a + "'.", var1_1);
            return;
        }
    }

    private class a
    implements CustomEventBannerListener {
        private View b;
        private final MediationBannerListener c;

        public a(MediationBannerListener mediationBannerListener) {
            this.c = mediationBannerListener;
        }

        private String b() {
            return "Banner custom event labeled '" + CustomEventAdapter.this.a + "'";
        }

        public View a() {
            synchronized (this) {
                View view = this.b;
                return view;
            }
        }

        @Override
        public void onClick() {
            com.google.ads.util.b.a(this.b() + " called onClick().");
            this.c.onClick(CustomEventAdapter.this);
        }

        @Override
        public void onDismissScreen() {
            com.google.ads.util.b.a(this.b() + " called onDismissScreen().");
            this.c.onDismissScreen(CustomEventAdapter.this);
        }

        @Override
        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(this.b() + " called onFailedToReceiveAd().");
            this.c.onFailedToReceiveAd(CustomEventAdapter.this, AdRequest.ErrorCode.NO_FILL);
        }

        @Override
        public void onLeaveApplication() {
            synchronized (this) {
                com.google.ads.util.b.a(this.b() + " called onLeaveApplication().");
                this.c.onLeaveApplication(CustomEventAdapter.this);
                return;
            }
        }

        @Override
        public void onPresentScreen() {
            com.google.ads.util.b.a(this.b() + " called onPresentScreen().");
            this.c.onPresentScreen(CustomEventAdapter.this);
        }

        @Override
        public void onReceivedAd(View view) {
            synchronized (this) {
                com.google.ads.util.b.a(this.b() + " called onReceivedAd.");
                this.b = view;
                this.c.onReceivedAd(CustomEventAdapter.this);
                return;
            }
        }
    }

    private class b
    implements CustomEventInterstitialListener {
        private final MediationInterstitialListener b;

        public b(MediationInterstitialListener mediationInterstitialListener) {
            this.b = mediationInterstitialListener;
        }

        private String a() {
            return "Interstitial custom event labeled '" + CustomEventAdapter.this.a + "'";
        }

        @Override
        public void onDismissScreen() {
            com.google.ads.util.b.a(this.a() + " called onDismissScreen().");
            this.b.onDismissScreen(CustomEventAdapter.this);
        }

        @Override
        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(this.a() + " called onFailedToReceiveAd().");
            this.b.onFailedToReceiveAd(CustomEventAdapter.this, AdRequest.ErrorCode.NO_FILL);
        }

        @Override
        public void onLeaveApplication() {
            synchronized (this) {
                com.google.ads.util.b.a(this.a() + " called onLeaveApplication().");
                this.b.onLeaveApplication(CustomEventAdapter.this);
                return;
            }
        }

        @Override
        public void onPresentScreen() {
            com.google.ads.util.b.a(this.a() + " called onPresentScreen().");
            this.b.onPresentScreen(CustomEventAdapter.this);
        }

        @Override
        public void onReceivedAd() {
            com.google.ads.util.b.a(this.a() + " called onReceivedAd.");
            this.b.onReceivedAd(CustomEventAdapter.this);
        }
    }

}

