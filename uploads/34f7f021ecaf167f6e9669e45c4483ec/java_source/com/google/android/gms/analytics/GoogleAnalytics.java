/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  com.google.android.gms.analytics.GoogleAnalytics$zza
 *  com.google.android.gms.analytics.GoogleAnalytics$zzb
 *  com.google.android.gms.analytics.Logger
 *  com.google.android.gms.analytics.internal.zzad
 *  com.google.android.gms.analytics.internal.zzae
 *  com.google.android.gms.analytics.internal.zzam
 *  com.google.android.gms.analytics.internal.zzan
 *  com.google.android.gms.analytics.internal.zzap
 *  com.google.android.gms.analytics.internal.zzb
 *  com.google.android.gms.analytics.internal.zzf
 *  com.google.android.gms.analytics.internal.zzn
 *  com.google.android.gms.analytics.internal.zzp
 *  com.google.android.gms.analytics.internal.zzy
 *  com.google.android.gms.analytics.internal.zzy$zza
 *  com.google.android.gms.common.internal.zzaa
 */
package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.internal.zzad;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzam;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzap;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzn;
import com.google.android.gms.analytics.internal.zzp;
import com.google.android.gms.analytics.internal.zzy;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class GoogleAnalytics
extends com.google.android.gms.analytics.zza {
    private static List<Runnable> aH = new ArrayList<Runnable>();
    private Set<zza> aI = new HashSet<zza>();
    private boolean aJ;
    private boolean aK;
    private volatile boolean aL;
    private boolean aM;
    private boolean zzaoz;

    public GoogleAnalytics(zzf zzf2) {
        super(zzf2);
    }

    @RequiresPermission(allOf={"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static GoogleAnalytics getInstance(Context context) {
        return zzf.zzaw((Context)context).zzacn();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void zzzd() {
        synchronized (GoogleAnalytics.class) {
            if (aH != null) {
                Iterator<Runnable> iterator = aH.iterator();
                while (iterator.hasNext()) {
                    iterator.next().run();
                }
                aH = null;
            }
            return;
        }
    }

    private com.google.android.gms.analytics.internal.zzb zzzg() {
        return this.zzyt().zzzg();
    }

    private zzap zzzh() {
        return this.zzyt().zzzh();
    }

    public void dispatchLocalHits() {
        this.zzzg().zzabs();
    }

    @TargetApi(value=14)
    public void enableAutoActivityReports(Application application) {
        if (Build.VERSION.SDK_INT >= 14 && !this.aJ) {
            application.registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)new zzb(this));
            this.aJ = true;
        }
    }

    public boolean getAppOptOut() {
        return this.aL;
    }

    @Deprecated
    public Logger getLogger() {
        return zzae.getLogger();
    }

    public void initialize() {
        this.zzzc();
        this.zzaoz = true;
    }

    public boolean isDryRunEnabled() {
        return this.aK;
    }

    public boolean isInitialized() {
        if (this.zzaoz) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Tracker newTracker(int n2) {
        synchronized (this) {
            zzan zzan2;
            Tracker tracker = new Tracker(this.zzyt(), null, null);
            if (n2 > 0 && (zzan2 = (zzan)new zzam(this.zzyt()).zzcg(n2)) != null) {
                tracker.zza(zzan2);
            }
            tracker.initialize();
            return tracker;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Tracker newTracker(String object) {
        synchronized (this) {
            object = new Tracker(this.zzyt(), (String)object, null);
            object.initialize();
            return object;
        }
    }

    public void reportActivityStart(Activity activity) {
        if (!this.aJ) {
            this.zzm(activity);
        }
    }

    public void reportActivityStop(Activity activity) {
        if (!this.aJ) {
            this.zzn(activity);
        }
    }

    public void setAppOptOut(boolean bl) {
        this.aL = bl;
        if (this.aL) {
            this.zzzg().zzabr();
        }
    }

    public void setDryRun(boolean bl) {
        this.aK = bl;
    }

    public void setLocalDispatchPeriod(int n2) {
        this.zzzg().setLocalDispatchPeriod(n2);
    }

    @Deprecated
    public void setLogger(Logger object) {
        zzae.setLogger((Logger)object);
        if (!this.aM) {
            object = (String)zzy.en.get();
            String string2 = (String)zzy.en.get();
            Log.i((String)object, (String)new StringBuilder(String.valueOf(string2).length() + 112).append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(string2).append(" DEBUG").toString());
            this.aM = true;
        }
    }

    void zza(zza zza2) {
        this.aI.add(zza2);
        zza2 = this.zzyt().getContext();
        if (zza2 instanceof Application) {
            this.enableAutoActivityReports((Application)zza2);
        }
    }

    void zzb(zza zza2) {
        this.aI.remove((Object)zza2);
    }

    void zzm(Activity activity) {
        Iterator<zza> iterator = this.aI.iterator();
        while (iterator.hasNext()) {
            iterator.next().zzo(activity);
        }
    }

    void zzn(Activity activity) {
        Iterator<zza> iterator = this.aI.iterator();
        while (iterator.hasNext()) {
            iterator.next().zzp(activity);
        }
    }

    void zzzc() {
        Logger logger;
        zzap zzap2 = this.zzzh();
        if (zzap2.zzafs()) {
            this.getLogger().setLogLevel(zzap2.getLogLevel());
        }
        if (zzap2.zzafw()) {
            this.setDryRun(zzap2.zzafx());
        }
        if (zzap2.zzafs() && (logger = zzae.getLogger()) != null) {
            logger.setLogLevel(zzap2.getLogLevel());
        }
    }

    public String zzze() {
        zzaa.zzht((String)"getClientId can not be called from the main thread");
        return this.zzyt().zzacq().zzady();
    }

    void zzzf() {
        this.zzzg().zzabt();
    }
}

