/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.text.TextUtils
 *  com.google.android.gms.analytics.CampaignTrackingService
 *  com.google.android.gms.analytics.internal.zzaf
 *  com.google.android.gms.analytics.internal.zzao
 *  com.google.android.gms.analytics.internal.zzf
 *  com.google.android.gms.analytics.internal.zzr
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.internal.zzxr
 */
package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzr;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzxr;

public class CampaignTrackingReceiver
extends BroadcastReceiver {
    static zzxr ax;
    static Boolean ay;
    static Object zzaox;

    static {
        zzaox = new Object();
    }

    public static boolean zzat(Context context) {
        zzaa.zzy((Object)context);
        if (ay != null) {
            return ay;
        }
        boolean bl = zzao.zza((Context)context, (String)"com.google.android.gms.analytics.CampaignTrackingReceiver", (boolean)true);
        ay = bl;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @RequiresPermission(allOf={"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onReceive(Context context, Intent object) {
        zzf zzf2 = zzf.zzaw((Context)context);
        zzaf zzaf2 = zzf2.zzaca();
        if (object == null) {
            zzaf2.zzev("CampaignTrackingReceiver received null intent");
            return;
        }
        String string2 = object.getStringExtra("referrer");
        object = object.getAction();
        zzaf2.zza("CampaignTrackingReceiver received", object);
        if (!"com.android.vending.INSTALL_REFERRER".equals(object) || TextUtils.isEmpty((CharSequence)string2)) {
            zzaf2.zzev("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        boolean bl = CampaignTrackingService.zzau((Context)context);
        if (!bl) {
            zzaf2.zzev("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        this.zzp(context, string2);
        zzf2.zzacb();
        object = this.zzyy();
        zzaa.zzy(object);
        zzf2 = new Intent(context, object);
        zzf2.putExtra("referrer", string2);
        object = zzaox;
        synchronized (object) {
            context.startService((Intent)zzf2);
            if (!bl) {
                return;
            }
            try {
                if (ax == null) {
                    ax = new zzxr(context, 1, "Analytics campaign WakeLock");
                    ax.setReferenceCounted(false);
                }
                ax.acquire(1000);
            }
            catch (SecurityException var1_2) {
                zzaf2.zzev("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
            }
            return;
        }
    }

    protected void zzp(Context context, String string2) {
    }

    protected Class<? extends CampaignTrackingService> zzyy() {
        return CampaignTrackingService.class;
    }
}

