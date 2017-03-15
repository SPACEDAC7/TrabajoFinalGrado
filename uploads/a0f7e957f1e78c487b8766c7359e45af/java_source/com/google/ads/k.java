/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.AdRequest;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.util.a;
import com.google.ads.util.b;

class k
implements MediationInterstitialListener {
    private final h a;

    k(h h2) {
        this.a = h2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDismissScreen(MediationInterstitialAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().b(this.a);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> object, AdRequest.ErrorCode errorCode) {
        h h2 = this.a;
        synchronized (h2) {
            a.a(object, this.a.i());
            b.a("Mediation adapter " + object.getClass().getName() + " failed to receive ad with error code: " + (Object)((Object)errorCode));
            if (this.a.c()) {
                b.b("Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback.");
            } else {
                h h3 = this.a;
                object = errorCode == AdRequest.ErrorCode.NO_FILL ? g.a.b : g.a.c;
                h3.a(false, (g.a)((Object)object));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onLeaveApplication(MediationInterstitialAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().c(this.a);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onPresentScreen(MediationInterstitialAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().a(this.a);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        h h2 = this.a;
        synchronized (h2) {
            a.a(mediationInterstitialAdapter, this.a.i());
            if (this.a.c()) {
                b.b("Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback.");
            } else {
                this.a.a(true, g.a.a);
            }
            return;
        }
    }
}

