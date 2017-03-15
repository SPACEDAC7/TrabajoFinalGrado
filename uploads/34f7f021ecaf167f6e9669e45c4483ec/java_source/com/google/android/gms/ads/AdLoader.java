/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.RemoteException
 *  com.google.android.gms.ads.AdRequest
 *  com.google.android.gms.ads.formats.NativeAdOptions
 *  com.google.android.gms.ads.formats.NativeAppInstallAd
 *  com.google.android.gms.ads.formats.NativeAppInstallAd$OnAppInstallAdLoadedListener
 *  com.google.android.gms.ads.formats.NativeContentAd
 *  com.google.android.gms.ads.formats.NativeContentAd$OnContentAdLoadedListener
 *  com.google.android.gms.ads.internal.client.AdRequestParcel
 *  com.google.android.gms.ads.internal.client.zzad
 *  com.google.android.gms.ads.internal.client.zzc
 *  com.google.android.gms.ads.internal.client.zzh
 *  com.google.android.gms.ads.internal.client.zzm
 *  com.google.android.gms.ads.internal.client.zzn
 *  com.google.android.gms.ads.internal.client.zzq
 *  com.google.android.gms.ads.internal.client.zzr
 *  com.google.android.gms.ads.internal.client.zzs
 *  com.google.android.gms.ads.internal.client.zzy
 *  com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel
 *  com.google.android.gms.ads.internal.util.client.zzb
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.internal.zzeq
 *  com.google.android.gms.internal.zzer
 *  com.google.android.gms.internal.zzes
 *  com.google.android.gms.internal.zzet
 *  com.google.android.gms.internal.zzev
 *  com.google.android.gms.internal.zzew
 *  com.google.android.gms.internal.zzex
 *  com.google.android.gms.internal.zzey
 *  com.google.android.gms.internal.zzgy
 *  com.google.android.gms.internal.zzgz
 */
package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.zzad;
import com.google.android.gms.ads.internal.client.zzc;
import com.google.android.gms.ads.internal.client.zzh;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzn;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzes;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzgy;
import com.google.android.gms.internal.zzgz;

public class AdLoader {
    private final Context mContext;
    private final zzh zzakc;
    private final zzr zzakd;

    AdLoader(Context context, zzr zzr2) {
        this(context, zzr2, zzh.zzkb());
    }

    AdLoader(Context context, zzr zzr2, zzh zzh2) {
        this.mContext = context;
        this.zzakd = zzr2;
        this.zzakc = zzh2;
    }

    private void zza(zzad zzad2) {
        try {
            this.zzakd.zzf(this.zzakc.zza(this.mContext, zzad2));
            return;
        }
        catch (RemoteException var1_2) {
            zzb.zzb((String)"Failed to load ad.", (Throwable)var1_2);
            return;
        }
    }

    public String getMediationAdapterClassName() {
        try {
            String string2 = this.zzakd.getMediationAdapterClassName();
            return string2;
        }
        catch (RemoteException var1_2) {
            zzb.zzc((String)"Failed to get the mediation adapter class name.", (Throwable)var1_2);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            boolean bl = this.zzakd.isLoading();
            return bl;
        }
        catch (RemoteException var1_2) {
            zzb.zzc((String)"Failed to check if ad is loading.", (Throwable)var1_2);
            return false;
        }
    }

    @RequiresPermission(value="android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        this.zza(adRequest.zzdt());
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zza(publisherAdRequest.zzdt());
    }

    public static class Builder {
        private final Context mContext;
        private final zzs zzake;

        Builder(Context context, zzs zzs2) {
            this.mContext = context;
            this.zzake = zzs2;
        }

        public Builder(Context context, String string2) {
            this((Context)zzaa.zzb((Object)context, (Object)"context cannot be null"), zzm.zzks().zzb(context, string2, (zzgz)new zzgy()));
        }

        public AdLoader build() {
            try {
                AdLoader adLoader = new AdLoader(this.mContext, this.zzake.zzfl());
                return adLoader;
            }
            catch (RemoteException var1_2) {
                zzb.zzb((String)"Failed to build AdLoader.", (Throwable)var1_2);
                return null;
            }
        }

        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzake.zza((zzeq)new zzev(onAppInstallAdLoadedListener));
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to add app install ad listener", (Throwable)var1_2);
                return this;
            }
        }

        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzake.zza((zzer)new zzew(onContentAdLoadedListener));
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to add content ad listener", (Throwable)var1_2);
                return this;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public Builder forCustomTemplateAd(String string2, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            try {
                zzs zzs2 = this.zzake;
                zzey zzey2 = new zzey(onCustomTemplateAdLoadedListener);
                onCustomTemplateAdLoadedListener = onCustomClickListener == null ? null : new zzex(onCustomClickListener);
                zzs2.zza(string2, (zzet)zzey2, (zzes)onCustomTemplateAdLoadedListener);
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to add custom template ad listener", (Throwable)var1_2);
                return this;
            }
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzake.zzb((zzq)new zzc(adListener));
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to set AdListener.", (Throwable)var1_2);
                return this;
            }
        }

        public Builder withCorrelator(@NonNull Correlator correlator) {
            zzaa.zzy((Object)correlator);
            try {
                this.zzake.zzb((zzy)correlator.zzdu());
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to set correlator.", (Throwable)var1_2);
                return this;
            }
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzake.zza(new NativeAdOptionsParcel(nativeAdOptions));
                return this;
            }
            catch (RemoteException var1_2) {
                zzb.zzc((String)"Failed to specify native ad options", (Throwable)var1_2);
                return this;
            }
        }
    }

}

