/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.location.Location
 *  android.os.Bundle
 *  com.google.android.gms.ads.doubleclick.PublisherAdRequest$1
 *  com.google.android.gms.ads.internal.client.zzad
 *  com.google.android.gms.ads.internal.client.zzad$zza
 *  com.google.android.gms.ads.mediation.MediationAdapter
 *  com.google.android.gms.ads.mediation.NetworkExtras
 *  com.google.android.gms.ads.mediation.customevent.CustomEvent
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.internal.zzx
 */
package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.internal.client.zzad;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzx;
import java.util.Date;
import java.util.List;
import java.util.Set;

public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = zzad.DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    private final zzad zzakf;

    private PublisherAdRequest(Builder builder) {
        this.zzakf = new zzad(builder.zzakg);
    }

    public static void updateCorrelator() {
    }

    public Date getBirthday() {
        return this.zzakf.getBirthday();
    }

    public String getContentUrl() {
        return this.zzakf.getContentUrl();
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> class_) {
        return this.zzakf.getCustomEventExtrasBundle(class_);
    }

    public Bundle getCustomTargeting() {
        return this.zzakf.getCustomTargeting();
    }

    public int getGender() {
        return this.zzakf.getGender();
    }

    public Set<String> getKeywords() {
        return this.zzakf.getKeywords();
    }

    public Location getLocation() {
        return this.zzakf.getLocation();
    }

    public boolean getManualImpressionsEnabled() {
        return this.zzakf.getManualImpressionsEnabled();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> class_) {
        return (T)this.zzakf.getNetworkExtras(class_);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> class_) {
        return this.zzakf.getNetworkExtrasBundle(class_);
    }

    public String getPublisherProvidedId() {
        return this.zzakf.getPublisherProvidedId();
    }

    public boolean isTestDevice(Context context) {
        return this.zzakf.isTestDevice(context);
    }

    public zzad zzdt() {
        return this.zzakf;
    }

    public static final class Builder {
        private final zzad.zza zzakg = new zzad.zza();

        public Builder addCategoryExclusion(String string2) {
            this.zzakg.zzas(string2);
            return this;
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> class_, Bundle bundle) {
            this.zzakg.zzb(class_, bundle);
            return this;
        }

        public Builder addCustomTargeting(String string2, String string3) {
            this.zzakg.zze(string2, string3);
            return this;
        }

        public Builder addCustomTargeting(String string2, List<String> list) {
            if (list != null) {
                this.zzakg.zze(string2, zzx.zzia((String)",").zzb(list));
            }
            return this;
        }

        public Builder addKeyword(String string2) {
            this.zzakg.zzam(string2);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzakg.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> class_, Bundle bundle) {
            this.zzakg.zza(class_, bundle);
            return this;
        }

        public Builder addTestDevice(String string2) {
            this.zzakg.zzan(string2);
            return this;
        }

        public PublisherAdRequest build() {
            return new PublisherAdRequest(this);
        }

        public Builder setBirthday(Date date) {
            this.zzakg.zza(date);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setContentUrl(String string2) {
            zzaa.zzb((Object)string2, (Object)"Content URL must be non-null.");
            zzaa.zzh((String)string2, (Object)"Content URL must be non-empty.");
            boolean bl = string2.length() <= 512;
            zzaa.zzb((boolean)bl, (String)"Content URL must not exceed %d in length.  Provided length was %d.", (Object[])new Object[]{512, string2.length()});
            this.zzakg.zzap(string2);
            return this;
        }

        public Builder setGender(int n2) {
            this.zzakg.zzx(n2);
            return this;
        }

        public Builder setIsDesignedForFamilies(boolean bl) {
            this.zzakg.zzp(bl);
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzakg.zzb(location);
            return this;
        }

        @Deprecated
        public Builder setManualImpressionsEnabled(boolean bl) {
            this.zzakg.setManualImpressionsEnabled(bl);
            return this;
        }

        public Builder setPublisherProvidedId(String string2) {
            this.zzakg.zzaq(string2);
            return this;
        }

        public Builder setRequestAgent(String string2) {
            this.zzakg.zzar(string2);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean bl) {
            this.zzakg.zzo(bl);
            return this;
        }
    }

}

