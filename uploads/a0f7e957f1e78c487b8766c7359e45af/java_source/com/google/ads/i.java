/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 */
package com.google.ads;

import android.app.Activity;
import android.content.Context;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.j;
import com.google.ads.k;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.util.b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class i
implements Runnable {
    private final h a;
    private final String b;
    private final AdRequest c;
    private final HashMap<String, String> d;
    private final boolean e;
    private final WeakReference<Activity> f;

    public i(h h2, Activity activity, String string2, AdRequest adRequest, HashMap<String, String> hashMap) {
        this.a = h2;
        this.b = string2;
        this.f = new WeakReference<Activity>(activity);
        this.c = adRequest;
        this.d = new HashMap<String, String>(hashMap);
        this.e = i.a(this.d);
    }

    /*
     * Enabled aggressive block sorting
     */
    private <T extends NetworkExtras, U extends MediationServerParameters> void a(MediationAdapter<T, U> mediationAdapter) throws MediationServerParameters.MappingException, a, IllegalAccessException, InstantiationException {
        Object object;
        Activity activity = this.f.get();
        if (activity == null) {
            throw new a("Activity became null while trying to instantiate adapter.");
        }
        this.a.a(mediationAdapter);
        Object object2 = mediationAdapter.getServerParametersType();
        if (object2 != null) {
            object2 = (MediationServerParameters)object2.newInstance();
            object2.load(this.d);
        } else {
            object2 = null;
        }
        object = (object = mediationAdapter.getAdditionalParametersType()) != null ? (NetworkExtras)this.c.getNetworkExtras(object) : null;
        MediationAdRequest mediationAdRequest = new MediationAdRequest(this.c, (Context)activity, this.e);
        if (this.a.a.a()) {
            if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
                throw new a("Adapter " + this.b + " doesn't support the MediationInterstitialAdapter" + " interface.");
            }
            ((MediationInterstitialAdapter)mediationAdapter).requestInterstitialAd(new k(this.a), activity, object2, mediationAdRequest, object);
        } else {
            if (!(mediationAdapter instanceof MediationBannerAdapter)) {
                throw new a("Adapter " + this.b + " doesn't support the MediationBannerAdapter interface");
            }
            ((MediationBannerAdapter)mediationAdapter).requestBannerAd(new j(this.a), activity, object2, this.a.a.b(), mediationAdRequest, object);
        }
        this.a.k();
    }

    private void a(String string2, Throwable throwable, g.a a2) {
        b.b(string2, throwable);
        this.a.a(false, a2);
    }

    private static boolean a(Map<String, String> object) {
        if ("1".equals(object = object.remove("gwhirl_share_location"))) {
            return true;
        }
        if (object != null && !"0".equals(object)) {
            b.b("Received an illegal value, '" + (String)object + "', for the special share location parameter from mediation server" + " (expected '0' or '1'). Will not share the location.");
        }
        return false;
    }

    @Override
    public void run() {
        try {
            b.a("Trying to instantiate: " + this.b);
            this.a((MediationAdapter)g.a(this.b, MediationAdapter.class));
            return;
        }
        catch (ClassNotFoundException var1_1) {
            this.a("Cannot find adapter class '" + this.b + "'. Did you link the ad network's mediation adapter? Skipping ad network.", var1_1, g.a.e);
            return;
        }
        catch (Throwable var1_2) {
            this.a("Error while creating adapter and loading ad from ad network. Skipping ad network.", var1_2, g.a.f);
            return;
        }
    }

    private static class a
    extends Exception {
        public a(String string2) {
            super(string2);
        }
    }

}

