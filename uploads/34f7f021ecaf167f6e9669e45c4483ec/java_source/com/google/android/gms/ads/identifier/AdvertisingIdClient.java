/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.ServiceConnection
 *  android.content.SharedPreferences
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.RemoteException
 *  android.util.Log
 *  com.google.android.gms.ads.identifier.AdvertisingIdClient$1
 *  com.google.android.gms.ads.identifier.AdvertisingIdClient$zza
 *  com.google.android.gms.common.GooglePlayServicesNotAvailableException
 *  com.google.android.gms.common.GooglePlayServicesRepairableException
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.stats.zza
 *  com.google.android.gms.common.zza
 *  com.google.android.gms.common.zze
 *  com.google.android.gms.internal.zzcl
 *  com.google.android.gms.internal.zzcl$zza
 */
package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.zze;
import com.google.android.gms.internal.zzcl;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class AdvertisingIdClient {
    private final Context mContext;
    com.google.android.gms.common.zza zzalf;
    zzcl zzalg;
    boolean zzalh;
    Object zzali = new Object();
    zza zzalj;
    final long zzalk;

    public AdvertisingIdClient(Context context) {
        this(context, 30000, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    public AdvertisingIdClient(Context context, long l2, boolean bl) {
        zzaa.zzy((Object)context);
        if (bl) {
            Context context2 = context.getApplicationContext();
            if (context2 != null) {
                context = context2;
            }
            this.mContext = context;
        } else {
            this.mContext = context;
        }
        this.zzalh = false;
        this.zzalk = l2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Info getAdvertisingIdInfo(Context object) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        float f2;
        Object object2;
        float f3 = 0.0f;
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = bl;
        try {
            object2 = zze.getRemoteContext((Context)object);
            f2 = f3;
            bl3 = bl2;
            if (object2 != null) {
                bl3 = bl;
                object2 = object2.getSharedPreferences("google_ads_flags", 1);
                bl3 = bl;
                bl3 = bl = object2.getBoolean("gads:ad_id_app_context:enabled", false);
                f2 = object2.getFloat("gads:ad_id_app_context:ping_ratio", 0.0f);
                bl3 = bl;
            }
        }
        catch (Exception var3_6) {
            Log.w((String)"AdvertisingIdClient", (String)"Error while reading from SharedPreferences ", (Throwable)var3_6);
            f2 = f3;
        }
        object = new AdvertisingIdClient((Context)object, -1, bl3);
        try {
            object.zze(false);
            object2 = object.getInfo();
            object.zza((Info)object2, bl3, f2, null);
            return object2;
        }
        catch (Throwable var3_7) {
            object.zza(null, bl3, f2, var3_7);
            return null;
        }
        finally {
            object.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean bl) {
    }

    static zzcl zza(Context context, com.google.android.gms.common.zza zza2) throws IOException {
        try {
            context = zzcl.zza.zzf((IBinder)zza2.zza(10000, TimeUnit.MILLISECONDS));
            return context;
        }
        catch (InterruptedException var0_1) {
            throw new IOException("Interrupted exception");
        }
        catch (Throwable var0_2) {
            throw new IOException(var0_2);
        }
    }

    private void zza(Info info, boolean bl, float f2, Throwable throwable) {
        if (Math.random() > (double)f2) {
            return;
        }
        new /* Unavailable Anonymous Inner Class!! */.start();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void zzea() {
        Object object = this.zzali;
        synchronized (object) {
            if (this.zzalj != null) {
                this.zzalj.cancel();
                try {
                    this.zzalj.join();
                }
                catch (InterruptedException var2_2) {}
            }
            if (this.zzalk > 0) {
                this.zzalj = new zza(this, this.zzalk);
            }
            return;
        }
    }

    /*
     * Exception decompiling
     */
    static com.google.android.gms.common.zza zzf(Context var0) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    protected void finalize() throws Throwable {
        this.finish();
        super.finalize();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void finish() {
        zzaa.zzht((String)"Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zzalf == null) {
                return;
            }
            try {
                if (this.zzalh) {
                    com.google.android.gms.common.stats.zza.zzaxr().zza(this.mContext, (ServiceConnection)this.zzalf);
                }
            }
            catch (IllegalArgumentException var1_1) {
                Log.i((String)"AdvertisingIdClient", (String)"AdvertisingIdClient unbindService failed.", (Throwable)var1_1);
            }
            catch (Throwable var1_2) {
                Log.i((String)"AdvertisingIdClient", (String)"AdvertisingIdClient unbindService failed.", (Throwable)var1_2);
            }
            this.zzalh = false;
            this.zzalg = null;
            this.zzalf = null;
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public Info getInfo() throws IOException {
        zzaa.zzht((String)"Calling this from your main thread can lead to deadlock");
        // MONITORENTER : this
        if (!this.zzalh) {
            var1_1 = this.zzali;
            // MONITORENTER : var1_1
            if (this.zzalj == null) throw new IOException("AdvertisingIdClient is not connected.");
            if (!this.zzalj.zzeb()) {
                throw new IOException("AdvertisingIdClient is not connected.");
            }
            // MONITOREXIT : var1_1
            try {
                this.zze(false);
                ** if (this.zzalh) goto lbl-1000
            }
            catch (Exception var1_2) {
                throw new IOException("AdvertisingIdClient cannot reconnect.", var1_2);
            }
lbl-1000: // 1 sources:
            {
                throw new IOException("AdvertisingIdClient cannot reconnect.");
            }
lbl-1000: // 1 sources:
            {
            }
        }
        zzaa.zzy((Object)this.zzalf);
        zzaa.zzy((Object)this.zzalg);
        try {
            var1_1 = new Info(this.zzalg.getId(), this.zzalg.zzf(true));
            // MONITOREXIT : this
        }
        catch (RemoteException var1_3) {
            Log.i((String)"AdvertisingIdClient", (String)"GMS remote exception ", (Throwable)var1_3);
            throw new IOException("Remote exception");
        }
        this.zzea();
        return var1_1;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        this.zze(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    Uri zza(Info info, boolean bl, Throwable iterator) {
        Bundle bundle = new Bundle();
        String string2 = bl ? "1" : "0";
        bundle.putString("app_context", string2);
        if (info != null) {
            string2 = info.isLimitAdTrackingEnabled() ? "1" : "0";
            bundle.putString("limit_ad_tracking", string2);
        }
        if (info != null && info.getId() != null) {
            bundle.putString("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (iterator != null) {
            bundle.putString("error", iterator.getClass().getName());
        }
        info = Uri.parse((String)"https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        iterator = bundle.keySet().iterator();
        while (iterator.hasNext()) {
            string2 = (String)iterator.next();
            info.appendQueryParameter(string2, bundle.getString(string2));
        }
        return info.build();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void zze(boolean bl) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzaa.zzht((String)"Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzalh) {
                this.finish();
            }
            this.zzalf = AdvertisingIdClient.zzf(this.mContext);
            this.zzalg = AdvertisingIdClient.zza(this.mContext, this.zzalf);
            this.zzalh = true;
            if (bl) {
                this.zzea();
            }
            return;
        }
    }

    public static final class Info {
        private final String zzalr;
        private final boolean zzals;

        public Info(String string2, boolean bl) {
            this.zzalr = string2;
            this.zzals = bl;
        }

        public String getId() {
            return this.zzalr;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzals;
        }

        public String toString() {
            String string2 = this.zzalr;
            boolean bl = this.zzals;
            return new StringBuilder(String.valueOf(string2).length() + 7).append("{").append(string2).append("}").append(bl).toString();
        }
    }

}

