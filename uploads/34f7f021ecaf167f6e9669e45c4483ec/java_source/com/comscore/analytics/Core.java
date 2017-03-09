/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.AssetManager
 *  android.content.res.Resources
 */
package com.comscore.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.comscore.analytics.ApplicationState;
import com.comscore.analytics.Core$UserInteractionTask;
import com.comscore.analytics.SessionState;
import com.comscore.analytics.a;
import com.comscore.analytics.aa;
import com.comscore.analytics.ab;
import com.comscore.analytics.ac;
import com.comscore.analytics.ad;
import com.comscore.analytics.ae;
import com.comscore.analytics.af;
import com.comscore.analytics.ag;
import com.comscore.analytics.ah;
import com.comscore.analytics.b;
import com.comscore.analytics.c;
import com.comscore.analytics.comScore;
import com.comscore.analytics.d;
import com.comscore.analytics.e;
import com.comscore.analytics.f;
import com.comscore.analytics.g;
import com.comscore.analytics.h;
import com.comscore.analytics.i;
import com.comscore.analytics.j;
import com.comscore.analytics.k;
import com.comscore.analytics.l;
import com.comscore.analytics.m;
import com.comscore.analytics.n;
import com.comscore.analytics.o;
import com.comscore.analytics.p;
import com.comscore.analytics.q;
import com.comscore.analytics.r;
import com.comscore.analytics.s;
import com.comscore.analytics.t;
import com.comscore.analytics.u;
import com.comscore.analytics.v;
import com.comscore.analytics.w;
import com.comscore.analytics.x;
import com.comscore.analytics.y;
import com.comscore.analytics.z;
import com.comscore.applications.ApplicationMeasurement;
import com.comscore.applications.EventType;
import com.comscore.applications.KeepAlive;
import com.comscore.measurement.Measurement;
import com.comscore.measurement.MeasurementDispatcher;
import com.comscore.utils.CSLog;
import com.comscore.utils.CacheFlusher;
import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.Constants;
import com.comscore.utils.CustomExceptionHandler;
import com.comscore.utils.Date;
import com.comscore.utils.DispatchQueue;
import com.comscore.utils.OfflineMeasurementsCache;
import com.comscore.utils.Storage;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.Utils;
import com.comscore.utils.id.IdHelper;
import com.comscore.utils.task.TaskExecutor;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicInteger;

public class Core {
    protected static final long x = 300;
    protected AtomicInteger A = new AtomicInteger(0);
    protected AtomicInteger B = new AtomicInteger(0);
    protected long C;
    protected long D;
    protected long E;
    protected long F;
    protected long G;
    protected long H;
    protected long I;
    protected long J;
    protected long K;
    protected SessionState L = SessionState.INACTIVE;
    protected long M;
    protected long N;
    protected long O;
    protected int P;
    protected int Q;
    protected int R;
    protected long S;
    protected long T;
    protected long U;
    protected int V;
    protected long W;
    protected long X;
    protected Runnable Y;
    protected String Z;
    OfflineMeasurementsCache a;
    String aa;
    Context ab;
    protected final HashMap<String, String> ac = new HashMap();
    protected final HashMap<String, String> ad = new HashMap();
    boolean ae = true;
    protected long af = 0;
    protected boolean ag = false;
    protected Thread.UncaughtExceptionHandler ah = Thread.getDefaultUncaughtExceptionHandler();
    boolean ai;
    TransmissionMode aj;
    TransmissionMode ak;
    String[] al;
    private IdHelper am;
    private boolean an = true;
    private boolean ao;
    Storage b;
    KeepAlive c;
    CacheFlusher d;
    @Deprecated
    DispatchQueue e;
    TaskExecutor f;
    MeasurementDispatcher g;
    ConnectivityChangeReceiver h;
    protected Runnable i;
    protected Runnable j;
    protected long k;
    protected boolean l = true;
    protected boolean m = true;
    boolean n = false;
    AtomicInteger o = new AtomicInteger();
    long p;
    AtomicInteger q = new AtomicInteger(0);
    long r;
    long s;
    String t;
    String u;
    boolean v = true;
    String w;
    protected ApplicationState y = ApplicationState.INACTIVE;
    protected AtomicInteger z = new AtomicInteger(0);

    public Core() {
        this.reset();
    }

    private void A() {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("lastApplicationAccumulationTimestamp");
        arrayList.add("lastSessionAccumulationTimestamp");
        this.a("lastActivityTime", arrayList);
        this.a("ns_ap_fg", "foregroundTransitionsCount");
        this.a("installTime", "installId");
        this.a("ns_ap_ver", "previousVersion");
    }

    static /* synthetic */ IdHelper a(Core core) {
        return core.am;
    }

    private String a(String string2, Properties object, boolean bl) {
        if (object != null && (object = object.getProperty(string2)) != null) {
            this.b.set(string2, (String)object);
            return object;
        }
        if (bl && this.b.has(string2).booleanValue()) {
            return this.b.get(string2);
        }
        return null;
    }

    static /* synthetic */ void a(Core core, TransmissionMode transmissionMode) {
        core.a(transmissionMode);
    }

    static /* synthetic */ void a(Core core, String string2) {
        core.b(string2);
    }

    static /* synthetic */ void a(Core core, String string2, String string3) {
        core.b(string2, string3);
    }

    private void a(TransmissionMode transmissionMode) {
        if (!this.an) {
            return;
        }
        this.aj = transmissionMode;
    }

    static /* synthetic */ boolean a(Core core, boolean bl) {
        core.an = bl;
        return bl;
    }

    static /* synthetic */ void b(Core core, TransmissionMode transmissionMode) {
        core.b(transmissionMode);
    }

    static /* synthetic */ void b(Core core, String string2) {
        core.c(string2);
    }

    private void b(TransmissionMode transmissionMode) {
        if (!this.an) {
            return;
        }
        this.ak = transmissionMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(String string2) {
        if (!this.an || this.am == null) {
            return;
        }
        this.am.setPublisherSecret(string2);
        this.am.generateIds();
    }

    private void b(String string2, String string3) {
        if (!this.an) {
            return;
        }
        this.ac.put(string2, string3);
    }

    static /* synthetic */ boolean b(Core core) {
        return core.an;
    }

    static /* synthetic */ boolean b(Core core, boolean bl) {
        core.ao = bl;
        return bl;
    }

    static /* synthetic */ void c(Core core, String string2) {
        core.d(string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void c(String string2) {
        if (!this.an) {
            return;
        }
        this.aa = string2;
        if (this.b == null) return;
        this.b.set("appName", this.aa);
    }

    static /* synthetic */ boolean c(Core core) {
        return core.ao;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void d(String string2) {
        if (!this.an) {
            return;
        }
        String string3 = this.isSecure() ? "https://sb.scorecardresearch.com/p2?" : "http://b.scorecardresearch.com/p2?";
        this.a(string3);
        this.b("c2", string2);
    }

    @Deprecated
    public static Core getInstance() {
        return comScore.getCore();
    }

    protected Measurement a(EventType eventType, HashMap<String, String> hashMap, String string2) {
        return ApplicationMeasurement.newApplicationMeasurement(this, eventType, hashMap, string2);
    }

    protected IdHelper a(Context context, Storage storage) {
        return new IdHelper(context, storage, this);
    }

    protected void a() {
        this.b = this.b();
        this.g = this.e();
        this.a(this.b);
        this.e = this.c();
        this.c = this.f();
        this.a = this.g();
        this.d = this.h();
        this.h = this.i();
        this.j();
        this.am = this.a(this.ab, this.b);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void a(int n2, boolean bl) {
        if (!this.an) {
            return;
        }
        this.w();
        int n3 = n2;
        if (n2 < 60) {
            n3 = 60;
        }
        this.l = bl;
        this.k = n3 * 1000;
        if (this.y == ApplicationState.FOREGROUND) {
            this.v();
            return;
        }
        if (this.y != ApplicationState.BACKGROUND_UX_ACTIVE) return;
        if (this.l) return;
        this.v();
    }

    protected void a(ApplicationState applicationState) {
        CSLog.d(this, "Leaving application state: " + (Object)((Object)applicationState));
        switch (ab.a[applicationState.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.h.start();
                this.c.start(3000);
                this.ab.registerReceiver((BroadcastReceiver)this.h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.d.start();
                return;
            }
            case 2: {
                this.w();
                return;
            }
            case 3: 
        }
        this.setCurrentActivityName(null);
        this.w();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void a(ApplicationState applicationState, ApplicationState applicationState2) {
        if (!this.an || applicationState2 == ApplicationState.INACTIVE || !this.isAutoStartEnabled() || this.n) {
            return;
        }
        this.notify(EventType.START, this.ad, false);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(SessionState sessionState) {
        if (!this.an) {
            return;
        }
        CSLog.d(this, "Leaving session state: " + (Object)((Object)sessionState));
        long l2 = Date.unixTime();
        switch (ab.b[sessionState.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                if (this.Y != null) {
                    this.f.removeEnqueuedTask(this.Y);
                    this.Y = null;
                }
                this.U = l2;
            }
            case 2: {
                this.T = l2;
            }
            case 3: {
                this.S = l2;
                return;
            }
            case 4: 
        }
        if (this.p()) return;
        long l3 = this.M;
        this.M = l2 - this.X + l3;
    }

    protected void a(SessionState sessionState, SessionState sessionState2) {
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void a(EventType eventType, HashMap<String, String> hashMap) {
        if (!this.an) {
            return;
        }
        if (this.z()) {
            this.x();
            return;
        }
        this.y();
        if (!this.n && eventType != EventType.START) {
            this.g.sendMeasurmement(this.a(EventType.START, new HashMap<String, String>(), this.Z), false);
        }
        if (eventType == EventType.CLOSE) return;
        this.g.sendMeasurmement(this.a(eventType, Utils.mapOfStrings(hashMap), this.Z), false);
    }

    protected void a(Storage storage) {
        this.A();
        this.g.loadEventData();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void a(String var1_1) {
        if (!this.an) {
            return;
        }
        var3_2 = var1_1.indexOf(63);
        if (var3_2 < 0) ** GOTO lbl10
        var5_3 = var1_1;
        if (var3_2 >= var1_1.length() - 1) ** GOTO lbl21
        var5_3 = var1_1.substring(var3_2 + 1).split("&");
        var4_4 = var5_3.length;
        ** GOTO lbl12
lbl10: // 1 sources:
        var5_3 = (String)var1_1 + '?';
        ** GOTO lbl21
lbl12: // 4 sources:
        for (var2_5 = 0; var2_5 < var4_4; ++var2_5) {
            var6_6 = var5_3[var2_5].split("=");
            if (var6_6.length == 2) {
                this.setLabel(var6_6[0], var6_6[1], false);
                continue;
            }
            if (var6_6.length != 1) continue;
            this.setLabel("name", var6_6[0], false);
        }
        var5_3 = var1_1.substring(0, var3_2 + 1);
lbl21: // 3 sources:
        this.Z = var5_3;
    }

    void a(String string2, String string3) {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string3);
        this.a(string2, arrayList);
    }

    void a(String string2, ArrayList<String> object) {
        object = object.iterator();
        while (object.hasNext()) {
            String string3 = (String)object.next();
            String string4 = this.b.get(string2);
            String string5 = this.b.get(string3);
            if (!Utils.isNotEmpty(string4) || !Utils.isEmpty(string5)) continue;
            this.b.set(string3, string4);
        }
        this.b.remove(string2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(boolean var1_1) {
        if (!this.an) {
            return;
        }
        var2_2 = Date.unixTime();
        var4_3 = var2_2 - this.K;
        switch (ab.a[this.y.ordinal()]) {
            case 3: {
                this.G += var4_3;
                this.C = var4_3 + this.C;
                ** break;
            }
            case 2: {
                this.F += var4_3;
                this.D = var4_3 + this.D;
            }
lbl13: // 3 sources:
            default: {
                ** GOTO lbl18
            }
            case 1: 
        }
        this.H += var4_3;
        this.E = var4_3 + this.E;
lbl18: // 2 sources:
        this.K = var2_2;
        if (var1_1 == false) return;
        this.b.set("lastApplicationAccumulationTimestamp", Long.toString(this.K));
        this.b.set("foregroundTransitionsCount", Long.toString(this.B.get()));
        this.b.set("accumulatedForegroundTime", Long.toString(this.G));
        this.b.set("accumulatedBackgroundTime", Long.toString(this.F));
        this.b.set("accumulatedInactiveTime", Long.toString(this.H));
        this.b.set("totalForegroundTime", Long.toString(this.C));
        this.b.set("totalBackgroundTime", Long.toString(this.D));
        this.b.set("totalInactiveTime", Long.toString(this.E));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void allowLiveTransmission(TransmissionMode transmissionMode, boolean bl) {
        if (!this.an) {
            return;
        }
        if (transmissionMode == null) return;
        if (!bl) {
            this.a(transmissionMode);
            return;
        }
        if (this.f == null) return;
        if (this.getLiveTransmissionMode() == transmissionMode) return;
        this.f.execute((Runnable)new i(this, transmissionMode), bl);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void allowOfflineTransmission(TransmissionMode transmissionMode, boolean bl) {
        if (!this.an) {
            return;
        }
        if (transmissionMode == null) return;
        if (!bl) {
            this.b(transmissionMode);
            return;
        }
        if (this.f == null) return;
        if (this.getOfflineTransmissionMode() == transmissionMode) return;
        this.f.execute((Runnable)new j(this, transmissionMode), bl);
    }

    protected Storage b() {
        return new Storage(this.ab);
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected void b(ApplicationState applicationState) {
        block8 : {
            if (!this.an) {
                return;
            }
            CSLog.d(this, "Entering application state: " + (Object)((Object)applicationState));
            switch (ab.a[applicationState.ordinal()]) {
                default: {
                    return;
                }
                case 1: {
                    this.h.stop();
                    this.c.stop();
                    this.d.stop();
                    this.ab.unregisterReceiver((BroadcastReceiver)this.h);
                    break block8;
                }
                case 2: {
                    if (this.l) return;
                    this.v();
                    return;
                }
                case 3: 
            }
            this.v();
            this.B.getAndIncrement();
            return;
            catch (IllegalArgumentException illegalArgumentException) {}
        }
        this.w();
    }

    protected void b(SessionState sessionState) {
        if (!this.an) {
            return;
        }
        CSLog.d(this, "Entering session state: " + (Object)((Object)sessionState));
        switch (ab.b[sessionState.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.q();
                this.o();
            }
            case 2: {
                this.r();
            }
            case 3: 
        }
        this.p();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void b(boolean bl) {
        if (!this.an) {
            return;
        }
        long l2 = Date.unixTime();
        long l3 = l2 - this.X;
        switch (ab.b[this.L.ordinal()]) {
            default: {
                break;
            }
            case 1: {
                this.O += l3;
                this.U = l2;
            }
            case 2: {
                this.N += l3;
                this.T = l2;
            }
            case 3: {
                this.M = l3 + this.M;
                this.S = l2;
            }
        }
        this.X = l2;
        if (!bl) return;
        this.b.set("lastSessionAccumulationTimestamp", Long.toString(this.X));
        this.b.set("lastApplicationSessionTimestamp", Long.toString(this.S));
        this.b.set("lastUserSessionTimestamp", Long.toString(this.T));
        this.b.set("lastActiveUserSessionTimestamp", Long.toString(this.U));
        this.b.set("accumulatedApplicationSessionTime", Long.toString(this.M));
        this.b.set("accumulatedActiveUserSessionTime", Long.toString(this.O));
        this.b.set("accumulatedUserSessionTime", Long.toString(this.N));
        this.b.set("activeUserSessionCount", Long.toString(this.R));
        this.b.set("userSessionCount", Long.toString(this.Q));
        this.b.set("lastUserInteractionTimestamp", Long.toString(this.W));
        this.b.set("userInteractionCount", Integer.toString(this.V));
        this.b.set("previousGenesis", Long.toString(this.J));
        this.b.set("genesis", Long.toString(this.I));
        this.b.set("applicationSessionCountKey", Integer.toString(this.P));
    }

    @Deprecated
    protected DispatchQueue c() {
        return new DispatchQueue(this);
    }

    void c(boolean bl) {
        this.ae = bl;
    }

    protected TaskExecutor d() {
        return new TaskExecutor(this);
    }

    protected void d(boolean bl) {
        if (!this.an) {
            return;
        }
        this.n = bl;
    }

    public void disableAutoUpdate() {
        if (!this.an) {
            return;
        }
        this.w();
        this.l = true;
        this.k = -1;
    }

    protected MeasurementDispatcher e() {
        return new MeasurementDispatcher(this);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void enableAutoUpdate(int n2, boolean bl, boolean bl2) {
        if (!this.an) {
            return;
        }
        if (!bl2) {
            this.a(n2, bl);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new x(this, n2, bl), bl2);
    }

    protected KeepAlive f() {
        return new KeepAlive(this, 86400000);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void flush(boolean bl) {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new v(this), bl);
    }

    protected OfflineMeasurementsCache g() {
        return new OfflineMeasurementsCache(this);
    }

    public int getActiveUserSessionCountDelta(boolean bl) {
        int n2 = -1;
        if (this.R >= 0) {
            int n3;
            n2 = n3 = this.R;
            if (bl) {
                n2 = n3;
                if (this.an) {
                    this.R = 0;
                    this.b.set("activeUserSessionCount", Integer.toString(this.R));
                    n2 = n3;
                }
            }
        }
        return n2;
    }

    public long getActiveUserSessionTimeDelta(boolean bl) {
        long l2 = this.O;
        if (bl && this.an) {
            this.O = 0;
            this.b.set("accumulatedActiveUserSessionTime", Long.toString(this.O));
        }
        return l2;
    }

    public Context getAppContext() {
        return this.ab;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String getAppName() {
        if (this.aa != null) {
            if (this.aa.length() != 0) return this.aa;
        }
        if (this.ab == null) return this.aa;
        Object object = this.ab.getPackageName();
        PackageManager packageManager = this.ab.getPackageManager();
        try {
            object = packageManager.getApplicationLabel(packageManager.getApplicationInfo((String)object, 0));
            if (object == null) return this.aa;
            this.setAppName(object.toString(), false);
            return this.aa;
        }
        catch (PackageManager.NameNotFoundException nameNotFoundException) {
            this.aa = this.b.get("appName");
            return this.aa;
        }
    }

    public int getApplicationSessionCountDelta(boolean bl) {
        int n2 = this.P;
        if (bl && this.an) {
            this.P = 0;
            this.b.set("applicationSessionCountKey", Integer.toString(this.P));
        }
        return n2;
    }

    public long getApplicationSessionTimeDelta(boolean bl) {
        long l2 = this.M;
        if (bl && this.an) {
            this.M = 0;
            this.b.set("accumulatedApplicationSessionTime", Long.toString(this.M));
        }
        return l2;
    }

    public ApplicationState getApplicationState() {
        return this.y;
    }

    public String getAutoStartLabel(String string2) {
        return this.ad.get(string2);
    }

    public HashMap<String, String> getAutoStartLabels() {
        return this.ad;
    }

    public long getAutoUpdateInterval() {
        return this.k;
    }

    public long getBackgroundTimeDelta(boolean bl) {
        long l2 = this.F;
        if (bl && this.an) {
            this.F = 0;
            this.b.set("accumulatedBackgroundTime", Long.toString(this.F));
        }
        return l2;
    }

    public long getBackgroundTotalTime(boolean bl) {
        long l2 = this.D;
        if (bl && this.an) {
            this.D = 0;
            this.b.set("totalBackgroundTime", Long.toString(this.D));
        }
        return l2;
    }

    public CacheFlusher getCacheFlusher() {
        return this.d;
    }

    public long getCacheFlushingInterval() {
        return this.af;
    }

    public int getCacheMaxBatchFiles() {
        if (this.a != null) {
            return this.a.getCacheMaxBatchFiles();
        }
        return 100;
    }

    public int getCacheMaxFlushesInARow() {
        if (this.a != null) {
            return this.a.getCacheMaxPosts();
        }
        return 10;
    }

    public int getCacheMaxMeasurements() {
        if (this.a != null) {
            return this.a.getCacheMaxMeasurements();
        }
        return 2000;
    }

    public long getCacheMeasurementExpiry() {
        if (this.a != null) {
            return this.a.getCacheMeasurementExpiry();
        }
        return 31;
    }

    public long getCacheMinutesToRetry() {
        if (this.a != null) {
            return this.a.getCacheWaitMinutes();
        }
        return 30;
    }

    public int getColdStartCount() {
        return this.q.get();
    }

    public long getColdStartId() {
        return this.p;
    }

    public ConnectivityChangeReceiver getConnectivityReceiver() {
        return this.h;
    }

    public String getCrossPublisherId() {
        if (this.am == null) {
            return null;
        }
        return this.am.getCrossPublisherId();
    }

    public String getCurrentActivityName() {
        return this.w;
    }

    public String getCurrentVersion() {
        return this.t;
    }

    public String getCustomerC2() {
        return this.getLabels().get("c2");
    }

    public boolean getErrorHandlingEnabled() {
        return this.ag;
    }

    public long getFirstInstallId() {
        return this.s;
    }

    public long getForegroundTimeDelta(boolean bl) {
        long l2 = this.G;
        if (bl && this.an) {
            this.G = 0;
            this.b.set("accumulatedForegroundTime", Long.toString(this.G));
        }
        return l2;
    }

    public long getForegroundTotalTime(boolean bl) {
        long l2 = this.C;
        if (bl && this.an) {
            this.C = 0;
            this.b.set("totalForegroundTime", Long.toString(this.C));
        }
        return l2;
    }

    public int getForegroundTransitionsCountDelta(boolean bl) {
        int n2 = this.B.get();
        if (bl && this.an) {
            this.B.set(0);
            this.b.set("foregroundTransitionsCount", Long.toString(this.B.get()));
        }
        return n2;
    }

    public long getGenesis() {
        return this.I;
    }

    public IdHelper getIdHelper() {
        return this.am;
    }

    public long getInactiveTimeDelta(boolean bl) {
        long l2 = this.H;
        if (bl && this.an) {
            this.H = 0;
            this.b.set("accumulatedInactiveTime", Long.toString(this.H));
        }
        return l2;
    }

    public long getInactiveTotalTime(boolean bl) {
        long l2 = this.E;
        if (bl && this.an) {
            this.E = 0;
            this.b.set("totalInactiveTime", Long.toString(this.E));
        }
        return l2;
    }

    public long getInstallId() {
        return this.r;
    }

    public KeepAlive getKeepAlive() {
        return this.c;
    }

    public String getLabel(String string2) {
        return this.ac.get(string2);
    }

    public HashMap<String, String> getLabels() {
        return this.ac;
    }

    public TransmissionMode getLiveTransmissionMode() {
        return this.aj;
    }

    public MeasurementDispatcher getMeasurementDispatcher() {
        return this.g;
    }

    public String[] getMeasurementLabelOrder() {
        return this.al;
    }

    public OfflineMeasurementsCache getOfflineCache() {
        return this.a;
    }

    public TransmissionMode getOfflineTransmissionMode() {
        return this.ak;
    }

    public String getPixelURL() {
        return this.Z;
    }

    public long getPreviousGenesis() {
        return this.J;
    }

    public String getPreviousVersion() {
        String string2 = this.u;
        if (this.u != null && this.u.length() > 0) {
            this.b.remove("previousVersion");
            this.u = null;
        }
        return string2;
    }

    public String getPublisherSecret() {
        if (this.am == null) {
            return "";
        }
        return this.am.getPublisherSecret();
    }

    public DispatchQueue getQueue() {
        return this.e;
    }

    public int getRunsCount() {
        return this.o.get();
    }

    @Deprecated
    public String getSalt() {
        return this.getPublisherSecret();
    }

    public SessionState getSessionState() {
        return this.L;
    }

    public Storage getStorage() {
        return this.b;
    }

    public TaskExecutor getTaskExecutor() {
        return this.f;
    }

    public int getUserInteractionCount(boolean bl) {
        int n2 = this.V;
        if (bl && this.an) {
            this.V = 0;
            this.b.set("userInteractionCount", Integer.toString(this.V));
        }
        return n2;
    }

    public int getUserSessionCountDelta(boolean bl) {
        int n2 = -1;
        if (this.Q >= 0) {
            int n3;
            n2 = n3 = this.Q;
            if (bl) {
                n2 = n3;
                if (this.an) {
                    this.Q = 0;
                    this.b.set("userSessionCount", Integer.toString(this.Q));
                    n2 = n3;
                }
            }
        }
        return n2;
    }

    public long getUserSessionTimeDelta(boolean bl) {
        long l2 = this.N;
        if (bl && this.an) {
            this.N = 0;
            this.b.set("accumulatedUserSessionTime", Long.toString(this.N));
        }
        return l2;
    }

    public String getVersion() {
        return "3.1508.28";
    }

    public String getVisitorId() {
        if (this.am == null) {
            return null;
        }
        return this.am.getVisitorId();
    }

    protected CacheFlusher h() {
        return new CacheFlusher(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean handleColdStart() {
        if (!this.an || this.n) {
            return false;
        }
        this.n = true;
        this.q.getAndIncrement();
        this.b.set("coldStartCount", String.valueOf(this.q));
        this.p = Date.unixTime();
        return true;
    }

    protected ConnectivityChangeReceiver i() {
        return new ConnectivityChangeReceiver(this);
    }

    public void incrementRunsCount() {
        if (!this.an) {
            return;
        }
        this.o.getAndIncrement();
        this.b.set("runs", Long.toString(this.o.get()));
    }

    public boolean isAutoStartEnabled() {
        return this.v;
    }

    public boolean isAutoUpdateEnabled() {
        if (this.k > 0) {
            return true;
        }
        return false;
    }

    public boolean isEnabled() {
        return this.an;
    }

    public boolean isKeepAliveEnabled() {
        return this.ae;
    }

    public boolean isSecure() {
        return this.ai;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void j() {
        this.K = Utils.getLong(this.b.get("lastApplicationAccumulationTimestamp"), -1);
        this.X = Utils.getLong(this.b.get("lastSessionAccumulationTimestamp"), -1);
        this.S = Utils.getLong(this.b.get("lastApplicationSessionTimestamp"), -1);
        this.T = Utils.getLong(this.b.get("lastUserSessionTimestamp"), -1);
        this.U = Utils.getLong(this.b.get("lastActiveUserSessionTimestamp"), -1);
        this.B.set(Utils.getInteger(this.b.get("foregroundTransitionsCount")));
        this.G = Utils.getLong(this.b.get("accumulatedForegroundTime"));
        this.F = Utils.getLong(this.b.get("accumulatedBackgroundTime"));
        this.H = Utils.getLong(this.b.get("accumulatedInactiveTime"));
        this.C = Utils.getLong(this.b.get("totalForegroundTime"));
        this.D = Utils.getLong(this.b.get("totalBackgroundTime"));
        this.E = Utils.getLong(this.b.get("totalInactiveTime"));
        this.M = Utils.getLong(this.b.get("accumulatedApplicationSessionTime"));
        this.O = Utils.getLong(this.b.get("accumulatedActiveUserSessionTime"));
        this.N = Utils.getLong(this.b.get("accumulatedUserSessionTime"));
        this.R = Utils.getInteger(this.b.get("activeUserSessionCount"), -1);
        this.Q = Utils.getInteger(this.b.get("userSessionCount"), -1);
        this.W = Utils.getLong(this.b.get("lastUserInteractionTimestamp"), -1);
        this.V = Utils.getInteger(this.b.get("userInteractionCount"), 0);
        this.P = Utils.getInteger(this.b.get("applicationSessionCountKey"), 0);
        this.t = this.k();
        this.J = Utils.getLong(this.b.get("previousGenesis"), 0);
        this.I = Utils.getLong(this.b.get("genesis"), -1);
        if (this.I < 0) {
            this.I = Date.unixTime();
            this.J = 0;
            this.S = this.I;
            ++this.P;
        } else {
            if (!this.p()) {
                this.M += Date.unixTime() - this.X;
                this.b.set("accumulatedApplicationSessionTime", Long.toString(this.M));
            }
            this.S = this.I;
        }
        this.s = Utils.getLong(this.b.get("firstInstallId"), -1);
        if (this.s < 0) {
            this.s = this.I;
            this.r = this.I;
            this.b.set("currentVersion", this.t);
            this.b.set("firstInstallId", String.valueOf(this.s));
            this.b.set("installId", String.valueOf(this.r));
        } else {
            String string2;
            if (this.b.has("previousVersion").booleanValue()) {
                this.u = this.b.get("previousVersion");
            }
            if (!(string2 = this.b.get("currentVersion")).equals(this.t)) {
                this.u = string2;
                this.b.set("previousVersion", this.u);
                this.r = this.I;
                this.b.set("installId", String.valueOf(this.r));
            } else {
                this.r = Utils.getLong(this.b.get("installId"), -1);
            }
            this.b.set("currentVersion", this.t);
        }
        this.b.set("genesis", Long.toString(this.I));
        this.b.set("previousGenesis", Long.toString(this.J));
        long l2 = Date.unixTime();
        if (this.K >= 0) {
            long l3 = l2 - this.K;
            this.H += l3;
            this.b.set("accumulatedInactiveTime", Long.toString(this.H));
            this.E = l3 + this.E;
            this.b.set("totalInactiveTime", Long.toString(this.E));
        }
        this.K = l2;
        this.X = l2;
        this.b.set("lastApplicationAccumulationTimestamp", Long.toString(this.K));
        this.b.set("lastSessionAccumulationTimestamp", Long.toString(this.X));
        this.b.set("lastApplicationSessionTimestamp", Long.toString(this.S));
        if (!this.b.has("runs").booleanValue()) {
            this.b.set("runs", "0");
        }
        this.o.set(Utils.getInteger(this.b.get("runs")));
        this.q.set(Utils.getInteger(this.b.get("coldStartCount")));
    }

    protected String k() {
        String string2 = this.ab.getPackageName();
        try {
            string2 = this.ab.getPackageManager().getPackageInfo((String)string2, (int)0).versionName;
            return string2;
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            return "0";
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected void l() {
        if (this.ab == null) return;
        var5_1 = this.ab.getResources().getAssets();
        try {
            var6_3 = var5_1.open("comScore.properties");
            var5_1 = new Properties();
            var5_1.load((InputStream)var6_3);
            Constants.DEBUG = Utils.getBoolean(this.a("Debug", (Properties)var5_1, false));
            this.ai = Utils.getBoolean(this.a("Secure", (Properties)var5_1, false));
            var6_3 = this.a("PublisherSecret", (Properties)var5_1, true);
            if (var6_3 != null) {
                this.b((String)var6_3);
            }
            if ((var6_3 = this.a("AppName", (Properties)var5_1, true)) != null) {
                this.c((String)var6_3);
            }
            if ((var6_3 = this.a("CustomerC2", (Properties)var5_1, false)) != null) {
                this.d((String)var6_3);
            }
            if ((var6_3 = this.a("PixelURL", (Properties)var5_1, false)) != null) {
                this.a((String)var6_3);
            }
            if ((var6_3 = this.a("OfflineURL", (Properties)var5_1, false)) != null) {
                this.a.setUrl((String)var6_3);
            }
            if ((var6_3 = this.a("LiveTransmissionMode", (Properties)var5_1, false)) == null) ** GOTO lbl26
            this.aj = TransmissionMode.valueOf(var6_3.toUpperCase(Locale.getDefault()));
            {
                catch (IllegalArgumentException var6_4) {
                    this.aj = TransmissionMode.DEFAULT;
                }
lbl26: // 3 sources:
                if ((var6_3 = this.a("OfflineTransmissionMode", (Properties)var5_1, false)) == null) ** GOTO lbl33
                try {
                    this.ak = TransmissionMode.valueOf(var6_3.toUpperCase(Locale.getDefault()));
                }
                catch (IllegalArgumentException var6_5) {
                    this.ak = TransmissionMode.DEFAULT;
                }
lbl33: // 3 sources:
                this.ae = Utils.getBoolean(this.a("KeepAliveEnabled", (Properties)var5_1, false), true);
                var1_6 = Utils.getInteger(this.a("CacheMaxSize", (Properties)var5_1, false), -1);
                if (var1_6 >= 0) {
                    this.a.setCacheMaxMeasurements(var1_6);
                }
                if ((var1_6 = Utils.getInteger(this.a("CacheMaxBatchSize", (Properties)var5_1, false), -1)) >= 0) {
                    this.a.setCacheMaxBatchFiles(var1_6);
                }
                if ((var1_6 = Utils.getInteger(this.a("CacheMaxFlushesInARow", (Properties)var5_1, false), -1)) >= 0) {
                    this.a.setCacheMaxPosts(var1_6);
                }
                if ((var1_6 = Utils.getInteger(this.a("CacheMinutesToRetry", (Properties)var5_1, false), -1)) >= 0) {
                    this.a.setCacheWaitMinutes(var1_6);
                }
                if ((var1_6 = Utils.getInteger(this.a("CacheExpiryInDays", (Properties)var5_1, false), -1)) >= 0) {
                    this.a.setCacheMeasurementExpiry(var1_6);
                }
                if ((var2_7 = Utils.getLong(this.a("CacheFlushingInterval", (Properties)var5_1, false), -1)) >= 0) {
                    this.af = var2_7;
                    if (this.d != null) {
                        this.d.update();
                    }
                }
                this.setErrorHandlingEnabled(Utils.getBoolean(this.a("ErrorHandlingEnabled", (Properties)var5_1, false)));
                this.v = Utils.getBoolean(this.a("AutoStartEnabled", (Properties)var5_1, false), true);
                var4_8 = Utils.getBoolean(this.a("AutoUpdateInForegroundOnly", (Properties)var5_1, false), true);
                var1_6 = Utils.getInteger(this.a("AutoUpdateInterval", (Properties)var5_1, false), -1);
                if (var1_6 < 60) return;
            }
        }
lbl54: // 3 sources:
        catch (IOException var5_2) {
            if (Constants.DEBUG == false) return;
            CSLog.printStackTrace(var5_2);
            return;
        }
        {
            ** try [egrp 3[TRYBLOCK] [29 : 527->547)] { 
lbl59: // 1 sources:
            this.a(var1_6, var4_8);
            return;
        }
    }

    protected Context m() {
        return this.ab;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void n() {
        if (!this.an) {
            return;
        }
        if (this.f.containsTask(this.j)) {
            this.f.removeEnqueuedTask(this.j);
            this.j = null;
        }
        long l2 = Date.unixTime();
        ApplicationState applicationState = this.z.get() > 0 ? ApplicationState.FOREGROUND : (this.A.get() > 0 ? ApplicationState.BACKGROUND_UX_ACTIVE : ApplicationState.INACTIVE);
        SessionState sessionState = l2 - this.W < 300000 ? SessionState.ACTIVE_USER : (this.A.get() > 0 ? SessionState.USER : (this.z.get() > 0 ? SessionState.APPLICATION : SessionState.INACTIVE));
        ApplicationState applicationState2 = this.y;
        SessionState sessionState2 = this.L;
        if (applicationState == applicationState2) {
            if (sessionState == sessionState2) return;
        }
        this.j = new af(this, applicationState2, applicationState, sessionState2, sessionState);
        if (this.m && applicationState != ApplicationState.FOREGROUND) {
            this.f.execute(this.j, 300);
            return;
        }
        this.j.run();
        this.j = null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void notify(EventType eventType, HashMap<String, String> hashMap, boolean bl) {
        if (!this.an) {
            return;
        }
        if (!bl) {
            this.a(eventType, hashMap);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new z(this, eventType, hashMap), bl);
    }

    protected void o() {
        if (!this.an) {
            return;
        }
        if (this.Y != null) {
            this.f.removeEnqueuedTask(this.Y);
            this.Y = null;
        }
        this.Y = new Core$UserInteractionTask(this);
        this.f.execute(this.Y, 300000);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onEnterForeground() {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new ac(this), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onExitForeground() {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new ad(this), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onUserInteraction() {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new ae(this), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onUxActive() {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new l(this), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onUxInactive() {
        if (!this.an || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new w(this), true);
    }

    protected boolean p() {
        boolean bl = false;
        if (!this.an) {
            return false;
        }
        long l2 = Date.unixTime();
        if (l2 - this.S > 1800000) {
            this.J = this.I;
            this.I = l2;
            ++this.P;
            bl = true;
        }
        this.S = l2;
        return bl;
    }

    protected void q() {
        if (!this.an) {
            return;
        }
        long l2 = Date.unixTime();
        if (l2 - this.U >= 300000) {
            ++this.R;
        }
        this.U = l2;
    }

    protected void r() {
        if (!this.an) {
            return;
        }
        long l2 = Date.unixTime();
        if (l2 - this.T >= 300000) {
            ++this.Q;
        }
        this.T = l2;
    }

    public void reset() {
        this.aj = TransmissionMode.DEFAULT;
        this.ak = TransmissionMode.DEFAULT;
        this.ai = false;
        this.al = Constants.LABELS_ORDER;
        this.y = ApplicationState.INACTIVE;
        this.L = SessionState.INACTIVE;
        this.n = false;
        this.o.set(0);
        this.p = -1;
        this.q.set(0);
        this.s = -1;
        this.r = -1;
        this.t = null;
        this.u = null;
        this.z.set(0);
        this.A.set(0);
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.M = 0;
        this.O = 0;
        this.N = 0;
        this.I = -1;
        this.J = 0;
        this.R = -1;
        this.Q = -1;
        this.V = 0;
        this.W = -1;
        this.K = -1;
        this.X = -1;
        this.S = -1;
        this.T = -1;
        this.U = -1;
        this.r = -1;
        this.s = -1;
        this.disableAutoUpdate();
        if (this.j != null) {
            this.f.removeEnqueuedTask(this.j);
            this.j = null;
        }
        if (this.Y != null) {
            this.f.removeEnqueuedTask(this.Y);
            this.Y = null;
        }
        if (this.c != null) {
            this.c.cancel();
        }
        if (this.d != null) {
            this.d.stop();
        }
        if (this.f != null) {
            this.f.removeAllEnqueuedTasks();
        }
        if (this.b != null) {
            this.b.close();
        }
    }

    public void resetVisitorId() {
        this.f.execute((Runnable)new a(this), true);
    }

    protected void s() {
        this.a(true);
    }

    public void setAppContext(Context context) {
        if (this.ab != null || context == null) {
            return;
        }
        this.ab = context;
        this.f = this.d();
        this.f.execute((Runnable)new ag(this), true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setAppName(String string2, boolean bl) {
        if (!this.an) {
            return;
        }
        if (!bl) {
            this.c(string2);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new e(this, string2), bl);
    }

    public void setAutoStartEnabled(boolean bl, boolean bl2) {
        if (!this.an) {
            return;
        }
        this.f.execute((Runnable)new n(this, bl), bl2);
    }

    public void setAutoStartLabel(String string2, String string3) {
        if (!this.an) {
            return;
        }
        this.ad.put(string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAutoStartLabels(HashMap<String, String> hashMap) {
        if (!this.an || hashMap == null) {
            return;
        }
        this.ad.putAll(Utils.mapOfStrings(hashMap));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheFlushingInterval(long l2, boolean bl) {
        if (!this.an || this.f == null || this.af == l2) {
            return;
        }
        this.f.execute((Runnable)new t(this, l2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMaxBatchFiles(int n2, boolean bl) {
        if (!this.an || this.f == null || this.a == null) {
            return;
        }
        this.f.execute((Runnable)new p(this, n2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMaxFlushesInARow(int n2, boolean bl) {
        if (!this.an || this.f == null || this.a == null) {
            return;
        }
        this.f.execute((Runnable)new q(this, n2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMaxMeasurements(int n2, boolean bl) {
        if (!this.an || this.f == null || this.a == null) {
            return;
        }
        this.f.execute((Runnable)new o(this, n2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMeasurementExpiry(int n2, boolean bl) {
        if (!this.an || this.f == null || this.a == null) {
            return;
        }
        this.f.execute((Runnable)new s(this, n2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMinutesToRetry(int n2, boolean bl) {
        if (!this.an || this.f == null || this.a == null) {
            return;
        }
        this.f.execute((Runnable)new r(this, n2), bl);
    }

    public void setCurrentActivityName(String string2) {
        this.w = string2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setCustomerC2(String string2, boolean bl) {
        if (!this.an) {
            return;
        }
        if (string2 == null) return;
        if (string2.length() == 0) return;
        if (!bl) {
            this.d(string2);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new h(this, string2), bl);
    }

    public void setDebug(boolean bl) {
        if (!this.an) {
            return;
        }
        this.f.execute((Runnable)new m(this, bl), true);
    }

    public void setEnabled(boolean bl) {
        this.f.execute((Runnable)new aa(this, bl), true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setErrorHandlingEnabled(boolean bl) {
        if (!this.an) {
            return;
        }
        this.ag = bl;
        if (bl) {
            Thread.setDefaultUncaughtExceptionHandler(new CustomExceptionHandler(this));
            return;
        }
        if (Thread.getDefaultUncaughtExceptionHandler() == this.ah) return;
        Thread.setDefaultUncaughtExceptionHandler(this.ah);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setKeepAliveEnabled(boolean bl, boolean bl2) {
        if (!this.an) {
            return;
        }
        if (!bl2) {
            this.c(bl);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new c(this, bl), bl2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setLabel(String string2, String string3, boolean bl) {
        if (!this.an) {
            return;
        }
        if (!bl) {
            this.b(string2, string3);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new g(this, string2, string3), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setLabels(HashMap<String, String> hashMap, boolean bl) {
        if (!this.an || hashMap == null || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new f(this, hashMap), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setMeasurementLabelOrder(String[] arrstring, boolean bl) {
        if (!this.an || this.f == null || arrstring == this.al || arrstring == null || arrstring.length <= 0) {
            return;
        }
        this.f.execute((Runnable)new u(this, arrstring), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setOfflineURL(String string2) {
        if (!this.an || string2 == null || string2.length() == 0 || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new b(this, string2), true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setPixelURL(String string2, boolean bl) {
        if (!this.an) {
            return;
        }
        if (string2 == null) return;
        if (string2.length() == 0) return;
        if (!bl) {
            this.a(string2);
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new ah(this, string2), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPublisherSecret(String string2, boolean bl) {
        if (!this.an || string2 == null || string2.length() == 0 || this.f == null) {
            return;
        }
        this.f.execute((Runnable)new d(this, string2), bl);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setSecure(boolean bl, boolean bl2) {
        if (!this.an) {
            return;
        }
        if (!bl2) {
            this.ai = bl;
            return;
        }
        if (this.f == null) return;
        this.f.execute((Runnable)new k(this, bl), bl2);
    }

    protected void t() {
        this.b(true);
    }

    protected OfflineMeasurementsCache u() {
        return this.a;
    }

    public void update() {
        this.update(true);
    }

    public void update(boolean bl) {
        if (!this.an) {
            return;
        }
        if (this.f.containsTask(this.j)) {
            this.f.removeEnqueuedTask(this.j);
            this.j.run();
            this.j = null;
        }
        this.a(bl);
        this.b(bl);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void v() {
        if (!this.an) {
            return;
        }
        this.w();
        if (this.k < 60000) return;
        this.i = new y(this);
        this.f.execute(this.i, this.k, true, this.k);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void w() {
        if (!this.an || this.i == null) {
            return;
        }
        this.f.removeEnqueuedTask(this.i);
        this.i = null;
    }

    protected void x() {
    }

    protected void y() {
    }

    boolean z() {
        if (this.ab == null || this.am.isPublisherSecretEmpty() || this.Z == null || this.Z.length() == 0) {
            return true;
        }
        return false;
    }
}

