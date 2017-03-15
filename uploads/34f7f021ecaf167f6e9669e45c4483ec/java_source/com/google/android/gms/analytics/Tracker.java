/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.text.TextUtils
 *  com.google.android.gms.analytics.ExceptionReporter
 *  com.google.android.gms.analytics.Tracker$1
 *  com.google.android.gms.analytics.Tracker$zza
 *  com.google.android.gms.analytics.internal.zza
 *  com.google.android.gms.analytics.internal.zzad
 *  com.google.android.gms.analytics.internal.zzaf
 *  com.google.android.gms.analytics.internal.zzan
 *  com.google.android.gms.analytics.internal.zzao
 *  com.google.android.gms.analytics.internal.zzap
 *  com.google.android.gms.analytics.internal.zzb
 *  com.google.android.gms.analytics.internal.zzf
 *  com.google.android.gms.analytics.internal.zzk
 *  com.google.android.gms.analytics.internal.zzn
 *  com.google.android.gms.analytics.internal.zzu
 *  com.google.android.gms.analytics.zzi
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.util.zze
 *  com.google.android.gms.internal.zzms
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.ExceptionReporter;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.internal.zzad;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzap;
import com.google.android.gms.analytics.internal.zzb;
import com.google.android.gms.analytics.internal.zzd;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzk;
import com.google.android.gms.analytics.internal.zzn;
import com.google.android.gms.analytics.internal.zzu;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.internal.zzms;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class Tracker
extends zzd {
    private boolean bu;
    private final Map<String, String> bv = new HashMap<String, String>();
    private final zzad bw;
    private final zza bx;
    private ExceptionReporter by;
    private zzan bz;
    private final Map<String, String> zzbly = new HashMap<String, String>();

    /*
     * Enabled aggressive block sorting
     */
    Tracker(zzf zzf2, String string2, zzad zzad2) {
        super(zzf2);
        if (string2 != null) {
            this.zzbly.put("&tid", string2);
        }
        this.zzbly.put("useSecure", "1");
        this.zzbly.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.bw = zzad2 == null ? new zzad("tracking", this.zzabz()) : zzad2;
        this.bx = new zza(this, zzf2);
    }

    static /* synthetic */ zza zza(Tracker tracker) {
        return tracker.bx;
    }

    private static boolean zza(Map.Entry<String, String> object) {
        String string2 = object.getKey();
        object = object.getValue();
        if (!string2.startsWith("&") || string2.length() < 2) {
            return false;
        }
        return true;
    }

    static /* synthetic */ com.google.android.gms.analytics.internal.zza zzb(Tracker tracker) {
        return tracker.zzacg();
    }

    private static String zzb(Map.Entry<String, String> entry) {
        if (!Tracker.zza(entry)) {
            return null;
        }
        return entry.getKey().substring(1);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void zzb(Map<String, String> iterator, Map<String, String> map) {
        zzaa.zzy(map);
        if (iterator != null) {
            for (Map.Entry<String, String> entry : iterator.entrySet()) {
                String string2 = Tracker.zzb(entry);
                if (string2 == null) continue;
                map.put(string2, entry.getValue());
            }
        }
    }

    static /* synthetic */ zzk zzc(Tracker tracker) {
        return tracker.zzach();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void zzc(Map<String, String> iterator, Map<String, String> map) {
        zzaa.zzy(map);
        if (iterator != null) {
            for (Map.Entry<String, String> entry : iterator.entrySet()) {
                String string2 = Tracker.zzb(entry);
                if (string2 == null || map.containsKey(string2)) continue;
                map.put(string2, entry.getValue());
            }
        }
    }

    static /* synthetic */ zzu zzd(Tracker tracker) {
        return tracker.zzaci();
    }

    static /* synthetic */ zzu zze(Tracker tracker) {
        return tracker.zzaci();
    }

    static /* synthetic */ zzad zzf(Tracker tracker) {
        return tracker.bw;
    }

    static /* synthetic */ zzaf zzg(Tracker tracker) {
        return tracker.zzaca();
    }

    static /* synthetic */ zzaf zzh(Tracker tracker) {
        return tracker.zzaca();
    }

    static /* synthetic */ zzb zzi(Tracker tracker) {
        return tracker.zzzg();
    }

    static /* synthetic */ zzb zzj(Tracker tracker) {
        return tracker.zzzg();
    }

    static /* synthetic */ zzan zzk(Tracker tracker) {
        return tracker.bz;
    }

    /*
     * Enabled aggressive block sorting
     */
    static String zzq(Activity object) {
        zzaa.zzy((Object)object);
        object = object.getIntent();
        if (object == null || TextUtils.isEmpty((CharSequence)(object = object.getStringExtra("android.intent.extra.REFERRER_NAME")))) {
            return null;
        }
        return object;
    }

    private boolean zzzz() {
        if (this.by != null) {
            return true;
        }
        return false;
    }

    public void enableAdvertisingIdCollection(boolean bl) {
        this.bu = bl;
    }

    public void enableAutoActivityTracking(boolean bl) {
        this.bx.enableAutoActivityTracking(bl);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void enableExceptionReporting(boolean bl) {
        synchronized (this) {
            if (this.zzzz() == bl) {
                return;
            }
            if (bl) {
                Context context = this.getContext();
                this.by = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), context);
                Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)this.by);
                this.zzes("Uncaught exceptions will be reported to Google Analytics");
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.by.zzzb());
                this.zzes("Uncaught exceptions will not be reported to Google Analytics");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public String get(String string2) {
        this.zzacj();
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (this.zzbly.containsKey(string2)) {
            return this.zzbly.get(string2);
        }
        if (string2.equals("&ul")) {
            return zzao.zza((Locale)Locale.getDefault());
        }
        if (string2.equals("&cid")) {
            return this.zzacf().zzady();
        }
        if (string2.equals("&sr")) {
            return this.zzaci().zzafm();
        }
        if (string2.equals("&aid")) {
            return this.zzach().zzadg().zzup();
        }
        if (string2.equals("&an")) {
            return this.zzach().zzadg().zzaae();
        }
        if (string2.equals("&av")) {
            return this.zzach().zzadg().zzaaf();
        }
        if (!string2.equals("&aiid")) return null;
        return this.zzach().zzadg().zzaag();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void send(Map<String, String> object) {
        long l2 = this.zzabz().currentTimeMillis();
        if (this.zzza().getAppOptOut()) {
            this.zzet("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean bl = this.zzza().isDryRunEnabled();
        HashMap<String, String> hashMap = new HashMap<String, String>();
        Tracker.zzb(this.zzbly, hashMap);
        Tracker.zzb(object, hashMap);
        boolean bl2 = zzao.zzg((String)this.zzbly.get("useSecure"), (boolean)true);
        Tracker.zzc(this.bv, hashMap);
        this.bv.clear();
        object = hashMap.get("t");
        if (TextUtils.isEmpty((CharSequence)object)) {
            this.zzaca().zzh(hashMap, "Missing hit type parameter");
            return;
        }
        String string2 = hashMap.get("tid");
        if (TextUtils.isEmpty((CharSequence)string2)) {
            this.zzaca().zzh(hashMap, "Missing tracking id parameter");
            return;
        }
        boolean bl3 = this.zzaaa();
        synchronized (this) {
            if ("screenview".equalsIgnoreCase((String)object) || "pageview".equalsIgnoreCase((String)object) || "appview".equalsIgnoreCase((String)object) || TextUtils.isEmpty((CharSequence)object)) {
                int n2;
                int n3 = n2 = Integer.parseInt(this.zzbly.get("&a")) + 1;
                if (n2 >= Integer.MAX_VALUE) {
                    n3 = 1;
                }
                this.zzbly.put("&a", Integer.toString(n3));
            }
        }
        this.zzacc().zzg((Runnable)new /* Unavailable Anonymous Inner Class!! */);
    }

    public void set(String string2, String string3) {
        zzaa.zzb((Object)string2, (Object)"Key should be non-null");
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return;
        }
        this.zzbly.put(string2, string3);
    }

    public void setAnonymizeIp(boolean bl) {
        this.set("&aip", zzao.zzax((boolean)bl));
    }

    public void setAppId(String string2) {
        this.set("&aid", string2);
    }

    public void setAppInstallerId(String string2) {
        this.set("&aiid", string2);
    }

    public void setAppName(String string2) {
        this.set("&an", string2);
    }

    public void setAppVersion(String string2) {
        this.set("&av", string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setCampaignParamsOnNextHit(Uri object) {
        if (object == null) return;
        if (object.isOpaque()) {
            return;
        }
        if (TextUtils.isEmpty((CharSequence)(object = object.getQueryParameter("referrer")))) return;
        object = (object = String.valueOf(object)).length() != 0 ? "http://hostname/?".concat((String)object) : new String("http://hostname/?");
        String string2 = (object = Uri.parse((String)object)).getQueryParameter("utm_id");
        if (string2 != null) {
            this.bv.put("&ci", string2);
        }
        if ((string2 = object.getQueryParameter("anid")) != null) {
            this.bv.put("&anid", string2);
        }
        if ((string2 = object.getQueryParameter("utm_campaign")) != null) {
            this.bv.put("&cn", string2);
        }
        if ((string2 = object.getQueryParameter("utm_content")) != null) {
            this.bv.put("&cc", string2);
        }
        if ((string2 = object.getQueryParameter("utm_medium")) != null) {
            this.bv.put("&cm", string2);
        }
        if ((string2 = object.getQueryParameter("utm_source")) != null) {
            this.bv.put("&cs", string2);
        }
        if ((string2 = object.getQueryParameter("utm_term")) != null) {
            this.bv.put("&ck", string2);
        }
        if ((string2 = object.getQueryParameter("dclid")) != null) {
            this.bv.put("&dclid", string2);
        }
        if ((string2 = object.getQueryParameter("gclid")) != null) {
            this.bv.put("&gclid", string2);
        }
        if ((object = object.getQueryParameter("aclid")) == null) return;
        this.bv.put("&aclid", (String)object);
    }

    public void setClientId(String string2) {
        this.set("&cid", string2);
    }

    public void setEncoding(String string2) {
        this.set("&de", string2);
    }

    public void setHostname(String string2) {
        this.set("&dh", string2);
    }

    public void setLanguage(String string2) {
        this.set("&ul", string2);
    }

    public void setLocation(String string2) {
        this.set("&dl", string2);
    }

    public void setPage(String string2) {
        this.set("&dp", string2);
    }

    public void setReferrer(String string2) {
        this.set("&dr", string2);
    }

    public void setSampleRate(double d2) {
        this.set("&sf", Double.toString(d2));
    }

    public void setScreenColors(String string2) {
        this.set("&sd", string2);
    }

    public void setScreenName(String string2) {
        this.set("&cd", string2);
    }

    public void setScreenResolution(int n2, int n3) {
        if (n2 < 0 && n3 < 0) {
            this.zzev("Invalid width or height. The values should be non-negative.");
            return;
        }
        this.set("&sr", new StringBuilder(23).append(n2).append("x").append(n3).toString());
    }

    public void setSessionTimeout(long l2) {
        this.bx.setSessionTimeout(1000 * l2);
    }

    public void setTitle(String string2) {
        this.set("&dt", string2);
    }

    public void setUseSecure(boolean bl) {
        this.set("useSecure", zzao.zzax((boolean)bl));
    }

    public void setViewportSize(String string2) {
        this.set("&vp", string2);
    }

    void zza(zzan object) {
        boolean bl;
        this.zzes("Loading Tracker config values");
        this.bz = object;
        if (this.bz.zzahc()) {
            object = this.bz.getTrackingId();
            this.set("&tid", (String)object);
            this.zza("trackingId loaded", object);
        }
        if (this.bz.zzahd()) {
            object = Double.toString(this.bz.zzahe());
            this.set("&sf", (String)object);
            this.zza("Sample frequency loaded", object);
        }
        if (this.bz.zzahf()) {
            int n2 = this.bz.getSessionTimeout();
            this.setSessionTimeout(n2);
            this.zza("Session timeout loaded", n2);
        }
        if (this.bz.zzahg()) {
            bl = this.bz.zzahh();
            this.enableAutoActivityTracking(bl);
            this.zza("Auto activity tracking loaded", bl);
        }
        if (this.bz.zzahi()) {
            bl = this.bz.zzahj();
            if (bl) {
                this.set("&aip", "1");
            }
            this.zza("Anonymize ip loaded", bl);
        }
        this.enableExceptionReporting(this.bz.zzahk());
    }

    boolean zzaaa() {
        return this.bu;
    }

    @Override
    protected void zzzy() {
        this.bx.initialize();
        String string2 = this.zzzh().zzaae();
        if (string2 != null) {
            this.set("&an", string2);
        }
        if ((string2 = this.zzzh().zzaaf()) != null) {
            this.set("&av", string2);
        }
    }
}

