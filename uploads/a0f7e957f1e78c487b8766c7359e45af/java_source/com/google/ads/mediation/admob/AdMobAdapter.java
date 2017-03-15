/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.location.Location
 *  android.view.View
 */
package com.google.ads.mediation.admob;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.view.View;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.InterstitialAd;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import com.google.ads.mediation.admob.AdMobAdapterServerParameters;
import com.google.ads.util.AdUtil;
import java.util.Date;
import java.util.Set;

public class AdMobAdapter
implements MediationBannerAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters>,
MediationInterstitialAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters> {
    private MediationBannerListener a;
    private MediationInterstitialListener b;
    private AdView c;
    private InterstitialAd d;

    private AdRequest a(Activity activity, AdMobAdapterServerParameters object, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        adMobAdapterExtras = new AdMobAdapterExtras(adMobAdapterExtras);
        adMobAdapterExtras.addExtra("_norefresh", "t");
        adMobAdapterExtras.addExtra("gw", 1);
        if (object.allowHouseAds != null) {
            adMobAdapterExtras.addExtra("mad_hac", object.allowHouseAds);
        }
        object = new AdRequest().setBirthday(mediationAdRequest.getBirthday()).setGender(mediationAdRequest.getGender()).setKeywords(mediationAdRequest.getKeywords()).setLocation(mediationAdRequest.getLocation()).setNetworkExtras(adMobAdapterExtras);
        if (mediationAdRequest.isTesting()) {
            object.addTestDevice(AdUtil.a((Context)activity));
        }
        return object;
    }

    private void a() {
        if (this.b()) {
            throw new IllegalStateException("Adapter has already been destroyed");
        }
    }

    private boolean b() {
        if (this.c == null && this.d == null) {
            return true;
        }
        return false;
    }

    protected AdView a(Activity activity, AdSize adSize, String string2) {
        return new AdView(activity, adSize, string2);
    }

    protected InterstitialAd a(Activity activity, String string2) {
        return new InterstitialAd(activity, string2);
    }

    @Override
    public void destroy() {
        this.a();
        if (this.c != null) {
            this.c.stopLoading();
            this.c.destroy();
            this.c = null;
        }
        if (this.d != null) {
            this.d.stopLoading();
            this.d = null;
        }
    }

    @Override
    public Class<AdMobAdapterExtras> getAdditionalParametersType() {
        return AdMobAdapterExtras.class;
    }

    @Override
    public View getBannerView() {
        return this.c;
    }

    @Override
    public Class<AdMobAdapterServerParameters> getServerParametersType() {
        return AdMobAdapterServerParameters.class;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void requestBannerAd(MediationBannerListener var1_1, Activity var2_2, AdMobAdapterServerParameters var3_3, AdSize var4_4, MediationAdRequest var5_5, AdMobAdapterExtras var6_6) {
        this.a = var1_1;
        var7_7 = var4_4;
        if (var4_4.isAutoHeight()) ** GOTO lbl14
        if (!var4_4.isFullWidth()) ** GOTO lbl7
        var7_7 = var4_4;
        ** GOTO lbl14
lbl7: // 1 sources:
        if (var6_6 == null) ** GOTO lbl-1000
        var7_7 = var4_4;
        if (!var6_6.getUseExactAdSize()) lbl-1000: // 2 sources:
        {
            var7_7 = var4_4 = var4_4.findBestSize(new AdSize[]{AdSize.BANNER, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_MRECT, AdSize.IAB_WIDE_SKYSCRAPER});
            if (var4_4 == null) {
                var1_1.onFailedToReceiveAd(this, AdRequest.ErrorCode.NO_FILL);
                return;
            }
        }
lbl14: // 6 sources:
        this.c = this.a(var2_2, var7_7, var3_3.adUnitId);
        this.c.setAdListener(new a());
        this.c.loadAd(this.a(var2_2, var3_3, var5_5, var6_6));
    }

    @Override
    public void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, AdMobAdapterServerParameters adMobAdapterServerParameters, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        this.b = mediationInterstitialListener;
        this.d = this.a(activity, adMobAdapterServerParameters.adUnitId);
        this.d.setAdListener(new b());
        this.d.loadAd(this.a(activity, adMobAdapterServerParameters, mediationAdRequest, adMobAdapterExtras));
    }

    @Override
    public void showInterstitial() {
        this.d.show();
    }

    private class a
    implements AdListener {
        private a() {
        }

        @Override
        public void onDismissScreen(Ad ad) {
            AdMobAdapter.this.a.onDismissScreen(AdMobAdapter.this);
        }

        @Override
        public void onFailedToReceiveAd(Ad ad, AdRequest.ErrorCode errorCode) {
            AdMobAdapter.this.a.onFailedToReceiveAd(AdMobAdapter.this, errorCode);
        }

        @Override
        public void onLeaveApplication(Ad ad) {
            AdMobAdapter.this.a.onLeaveApplication(AdMobAdapter.this);
        }

        @Override
        public void onPresentScreen(Ad ad) {
            AdMobAdapter.this.a.onClick(AdMobAdapter.this);
            AdMobAdapter.this.a.onPresentScreen(AdMobAdapter.this);
        }

        @Override
        public void onReceiveAd(Ad ad) {
            AdMobAdapter.this.a.onReceivedAd(AdMobAdapter.this);
        }
    }

    private class b
    implements AdListener {
        private b() {
        }

        @Override
        public void onDismissScreen(Ad ad) {
            AdMobAdapter.this.b.onDismissScreen(AdMobAdapter.this);
        }

        @Override
        public void onFailedToReceiveAd(Ad ad, AdRequest.ErrorCode errorCode) {
            AdMobAdapter.this.b.onFailedToReceiveAd(AdMobAdapter.this, errorCode);
        }

        @Override
        public void onLeaveApplication(Ad ad) {
            AdMobAdapter.this.b.onLeaveApplication(AdMobAdapter.this);
        }

        @Override
        public void onPresentScreen(Ad ad) {
            AdMobAdapter.this.b.onPresentScreen(AdMobAdapter.this);
        }

        @Override
        public void onReceiveAd(Ad ad) {
            AdMobAdapter.this.b.onReceivedAd(AdMobAdapter.this);
        }
    }

}

