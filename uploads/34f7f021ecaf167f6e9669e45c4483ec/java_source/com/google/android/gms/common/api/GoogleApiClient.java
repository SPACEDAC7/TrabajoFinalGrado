/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accounts.Account
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Handler
 *  android.os.Looper
 *  android.view.View
 *  com.google.android.gms.common.GoogleApiAvailability
 *  com.google.android.gms.common.api.Api$zza
 *  com.google.android.gms.common.api.Api$zzb
 *  com.google.android.gms.common.api.Api$zzc
 *  com.google.android.gms.common.api.Api$zzd
 *  com.google.android.gms.common.api.Api$zze
 *  com.google.android.gms.common.api.Api$zzg
 *  com.google.android.gms.common.api.Api$zzh
 *  com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
 *  com.google.android.gms.common.api.Result
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.internal.zzag
 *  com.google.android.gms.common.internal.zzf
 *  com.google.android.gms.common.internal.zzf$zza
 *  com.google.android.gms.internal.zzqm
 *  com.google.android.gms.internal.zzqo
 *  com.google.android.gms.internal.zzqo$zza
 *  com.google.android.gms.internal.zzqr
 *  com.google.android.gms.internal.zzrd
 *  com.google.android.gms.internal.zzrn
 *  com.google.android.gms.internal.zzrr
 *  com.google.android.gms.internal.zzsa
 *  com.google.android.gms.internal.zzsf
 *  com.google.android.gms.internal.zzxo
 *  com.google.android.gms.internal.zzxp
 *  com.google.android.gms.internal.zzxq
 */
package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzqm;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzqr;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.internal.zzsa;
import com.google.android.gms.internal.zzsf;
import com.google.android.gms.internal.zzxo;
import com.google.android.gms.internal.zzxp;
import com.google.android.gms.internal.zzxq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    private static final Set<GoogleApiClient> xE = Collections.newSetFromMap(new WeakHashMap());

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void dumpAll(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        Set<GoogleApiClient> set = xE;
        synchronized (set) {
            String string3 = String.valueOf(string2).concat("  ");
            Iterator<GoogleApiClient> iterator = xE.iterator();
            int n2 = 0;
            while (iterator.hasNext()) {
                GoogleApiClient googleApiClient = iterator.next();
                printWriter.append(string2).append("GoogleApiClient#").println(n2);
                googleApiClient.dump(string3, fileDescriptor, printWriter, arrstring);
                ++n2;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Set<GoogleApiClient> zzarc() {
        Set<GoogleApiClient> set = xE;
        synchronized (set) {
            return xE;
        }
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long var1, @NonNull TimeUnit var3);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int n2) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    @NonNull
    public abstract ConnectionResult getConnectionResult(@NonNull Api<?> var1);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(@NonNull Api<?> var1);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(@NonNull ConnectionCallbacks var1);

    public abstract boolean isConnectionFailedListenerRegistered(@NonNull OnConnectionFailedListener var1);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(@NonNull ConnectionCallbacks var1);

    public abstract void registerConnectionFailedListener(@NonNull OnConnectionFailedListener var1);

    public abstract void stopAutoManage(@NonNull FragmentActivity var1);

    public abstract void unregisterConnectionCallbacks(@NonNull ConnectionCallbacks var1);

    public abstract void unregisterConnectionFailedListener(@NonNull OnConnectionFailedListener var1);

    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzc2) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t2) {
        throw new UnsupportedOperationException();
    }

    public void zza(zzsf zzsf2) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(@NonNull Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(zzsa zzsa2) {
        throw new UnsupportedOperationException();
    }

    public void zzard() {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t2) {
        throw new UnsupportedOperationException();
    }

    public void zzb(zzsf zzsf2) {
        throw new UnsupportedOperationException();
    }

    public <L> zzrr<L> zzs(@NonNull L l2) {
        throw new UnsupportedOperationException();
    }

    public static final class Builder {
        private Account gj;
        private String hu;
        private final Context mContext;
        private final Set<Scope> xF = new HashSet<Scope>();
        private final Set<Scope> xG = new HashSet<Scope>();
        private int xH;
        private View xI;
        private String xJ;
        private final Map<Api<?>, zzf.zza> xK = new ArrayMap();
        private final Map<Api<?>, Api.ApiOptions> xL = new ArrayMap();
        private zzrn xM;
        private int xN = -1;
        private OnConnectionFailedListener xO;
        private GoogleApiAvailability xP = GoogleApiAvailability.getInstance();
        private Api.zza<? extends zzxp, zzxq> xQ = zzxo.hh;
        private final ArrayList<ConnectionCallbacks> xR = new ArrayList();
        private final ArrayList<OnConnectionFailedListener> xS = new ArrayList();
        private boolean xT = false;
        private Looper zzajy;

        public Builder(@NonNull Context context) {
            this.mContext = context;
            this.zzajy = context.getMainLooper();
            this.hu = context.getPackageName();
            this.xJ = context.getClass().getName();
        }

        public Builder(@NonNull Context context, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzaa.zzb((Object)connectionCallbacks, (Object)"Must provide a connected listener");
            this.xR.add(connectionCallbacks);
            zzaa.zzb((Object)onConnectionFailedListener, (Object)"Must provide a connection failed listener");
            this.xS.add(onConnectionFailedListener);
        }

        private static <C extends Api.zze, O> C zza(Api.zza<C, O> zza2, Object object, Context context, Looper looper, zzf zzf2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return (C)zza2.zza(context, looper, zzf2, object, connectionCallbacks, onConnectionFailedListener);
        }

        /*
         * Enabled aggressive block sorting
         */
        private Builder zza(@NonNull zzrn zzrn2, int n2, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            boolean bl = n2 >= 0;
            zzaa.zzb((boolean)bl, (Object)"clientId must be non-negative");
            this.xN = n2;
            this.xO = onConnectionFailedListener;
            this.xM = zzrn2;
            return this;
        }

        private static <C extends Api.zzg, O> zzag zza(Api.zzh<C, O> zzh2, Object object, Context context, Looper looper, zzf zzf2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzag(context, looper, zzh2.zzaqz(), connectionCallbacks, onConnectionFailedListener, zzf2, zzh2.zzr(object));
        }

        /*
         * Enabled aggressive block sorting
         */
        private /* varargs */ <O extends Api.ApiOptions> void zza(Api<O> api, O set, int n2, Scope ... arrscope) {
            boolean bl = true;
            int n3 = 0;
            if (n2 != 1) {
                if (n2 != 2) {
                    throw new IllegalArgumentException(new StringBuilder(90).append("Invalid resolution mode: '").append(n2).append("', use a constant from GoogleApiClient.ResolutionMode").toString());
                }
                bl = false;
            }
            set = new HashSet(api.zzaqs().zzp((Object)set));
            int n4 = arrscope.length;
            n2 = n3;
            do {
                if (n2 >= n4) {
                    this.xK.put(api, new zzf.zza(set, bl));
                    return;
                }
                set.add(arrscope[n2]);
                ++n2;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        private GoogleApiClient zzarg() {
            int n2;
            zzf zzf2 = this.zzarf();
            Object object = null;
            Map map = zzf2.zzavr();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList<zzqr> arrayList = new ArrayList<zzqr>();
            Iterator iterator = this.xL.keySet().iterator();
            Object object2 = null;
            while (iterator.hasNext()) {
                Api.zzh zzh2;
                Api api = iterator.next();
                Object object3 = this.xL.get(api);
                n2 = 0;
                if (map.get(api) != null) {
                    n2 = ((zzf.zza)map.get(api)).DN ? 1 : 2;
                }
                arrayMap.put(api, n2);
                zzqr zzqr2 = new zzqr(api, n2);
                arrayList.add(zzqr2);
                if (api.zzaqw()) {
                    zzh2 = api.zzaqu();
                    if (zzh2.getPriority() == 1) {
                        object2 = api;
                    }
                    object3 = Builder.zza(zzh2, object3, this.mContext, this.zzajy, zzf2, (ConnectionCallbacks)zzqr2, (OnConnectionFailedListener)zzqr2);
                } else {
                    zzh2 = api.zzaqt();
                    if (zzh2.getPriority() == 1) {
                        object2 = api;
                    }
                    object3 = Builder.zza(zzh2, object3, this.mContext, this.zzajy, zzf2, (ConnectionCallbacks)zzqr2, (OnConnectionFailedListener)zzqr2);
                }
                arrayMap2.put(api.zzaqv(), (Api.ApiOptions)object3);
                if (object3.zzajc()) {
                    object3 = api;
                    if (object != null) {
                        object2 = String.valueOf(api.getName());
                        object = String.valueOf(object.getName());
                        throw new IllegalStateException(new StringBuilder(String.valueOf(object2).length() + 21 + String.valueOf(object).length()).append((String)object2).append(" cannot be used with ").append((String)object).toString());
                    }
                } else {
                    object3 = object;
                }
                object = object3;
            }
            if (object != null) {
                if (object2 != null) {
                    object = String.valueOf(object.getName());
                    object2 = String.valueOf(object2.getName());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(object).length() + 21 + String.valueOf(object2).length()).append((String)object).append(" cannot be used with ").append((String)object2).toString());
                }
                boolean bl = this.gj == null;
                zzaa.zza((boolean)bl, (String)"Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", (Object[])new Object[]{object.getName()});
                zzaa.zza((boolean)this.xF.equals(this.xG), (String)"Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", (Object[])new Object[]{object.getName()});
            }
            n2 = zzrd.zza(arrayMap2.values(), (boolean)true);
            return new zzrd(this.mContext, (Lock)new ReentrantLock(), this.zzajy, zzf2, this.xP, this.xQ, arrayMap, this.xR, this.xS, arrayMap2, this.xN, n2, arrayList, false);
        }

        private void zzf(GoogleApiClient googleApiClient) {
            zzqm.zza((zzrn)this.xM).zza(this.xN, googleApiClient, this.xO);
        }

        public Builder addApi(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> object) {
            zzaa.zzb(object, (Object)"Api must not be null");
            this.xL.put(object, null);
            object = object.zzaqs().zzp((Object)null);
            this.xG.addAll((Collection<Scope>)object);
            this.xF.addAll((Collection<Scope>)object);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(@NonNull Api<O> object, @NonNull O o2) {
            zzaa.zzb(object, (Object)"Api must not be null");
            zzaa.zzb(o2, (Object)"Null options are not permitted for this Api");
            this.xL.put(object, (Api.ApiOptions)o2);
            object = object.zzaqs().zzp(o2);
            this.xG.addAll((Collection<Scope>)object);
            this.xF.addAll((Collection<Scope>)object);
            return this;
        }

        public /* varargs */ <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(@NonNull Api<O> api, @NonNull O o2, Scope ... arrscope) {
            zzaa.zzb(api, (Object)"Api must not be null");
            zzaa.zzb(o2, (Object)"Null options are not permitted for this Api");
            this.xL.put(api, (Api.ApiOptions)o2);
            this.zza(api, o2, 1, arrscope);
            return this;
        }

        public /* varargs */ Builder addApiIfAvailable(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope ... arrscope) {
            zzaa.zzb(api, (Object)"Api must not be null");
            this.xL.put(api, null);
            this.zza(api, null, 1, arrscope);
            return this;
        }

        public Builder addConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
            zzaa.zzb((Object)connectionCallbacks, (Object)"Listener must not be null");
            this.xR.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
            zzaa.zzb((Object)onConnectionFailedListener, (Object)"Listener must not be null");
            this.xS.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(@NonNull Scope scope) {
            zzaa.zzb((Object)scope, (Object)"Scope must not be null");
            this.xF.add(scope);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        public GoogleApiClient build() {
            boolean bl = !this.xL.isEmpty();
            zzaa.zzb((boolean)bl, (Object)"must call addApi() to add at least one API");
            GoogleApiClient googleApiClient = this.zzarg();
            Set set = xE;
            // MONITORENTER : set
            xE.add(googleApiClient);
            // MONITOREXIT : set
            if (this.xN < 0) return googleApiClient;
            this.zzf(googleApiClient);
            return googleApiClient;
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, int n2, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return this.zza(new zzrn((Activity)fragmentActivity), n2, onConnectionFailedListener);
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return this.enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setAccountName(String string2) {
            string2 = string2 == null ? null : new Account(string2, "com.google");
            this.gj = string2;
            return this;
        }

        public Builder setGravityForPopups(int n2) {
            this.xH = n2;
            return this;
        }

        public Builder setHandler(@NonNull Handler handler) {
            zzaa.zzb((Object)handler, (Object)"Handler must not be null");
            this.zzajy = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(@NonNull View view) {
            zzaa.zzb((Object)view, (Object)"View must not be null");
            this.xI = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return this.setAccountName("<<default account>>");
        }

        public zzf zzarf() {
            zzxq zzxq2 = zzxq.aDl;
            if (this.xL.containsKey(zzxo.API)) {
                zzxq2 = (zzxq)this.xL.get(zzxo.API);
            }
            return new zzf(this.gj, this.xF, this.xK, this.xH, this.xI, this.hu, this.xJ, zzxq2);
        }
    }

    public static interface OnConnectionFailedListener {
        public void onConnectionFailed(@NonNull ConnectionResult var1);
    }

}

