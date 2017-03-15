/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.location.Location
 */
package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

public class MediationAdRequest {
    private AdRequest a;
    private boolean b;
    private boolean c;

    public MediationAdRequest(AdRequest adRequest, Context context, boolean bl) {
        this.a = adRequest;
        this.c = bl;
        if (context == null) {
            this.b = true;
            return;
        }
        this.b = adRequest.isTestDevice(context);
    }

    public Integer getAgeInYears() {
        if (this.a.getBirthday() != null) {
            Integer n2;
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar.setTime(this.a.getBirthday());
            Integer n3 = n2 = Integer.valueOf(calendar2.get(1) - calendar.get(1));
            if (calendar2.get(6) < calendar.get(6)) {
                n3 = n2 - 1;
            }
            return n3;
        }
        return null;
    }

    public Date getBirthday() {
        return this.a.getBirthday();
    }

    public AdRequest.Gender getGender() {
        return this.a.getGender();
    }

    public Set<String> getKeywords() {
        if (this.a.getKeywords() == null) {
            return null;
        }
        return Collections.unmodifiableSet(this.a.getKeywords());
    }

    public Location getLocation() {
        if (this.a.getLocation() == null || !this.c) {
            return null;
        }
        return new Location(this.a.getLocation());
    }

    public boolean isTesting() {
        return this.b;
    }
}

