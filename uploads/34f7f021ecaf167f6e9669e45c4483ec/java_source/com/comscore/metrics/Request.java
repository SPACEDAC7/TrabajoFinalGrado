/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.metrics;

import android.content.Context;
import android.os.Build;
import com.comscore.analytics.Core;
import com.comscore.applications.KeepAlive;
import com.comscore.measurement.Measurement;
import com.comscore.metrics.a;
import com.comscore.utils.CSLog;
import com.comscore.utils.Connectivity;
import com.comscore.utils.Date;
import com.comscore.utils.OfflineMeasurementsCache;
import com.comscore.utils.Permissions;
import com.comscore.utils.Storage;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.Utils;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class Request {
    public static final boolean REDIRECTION_SUPPORTED;
    protected URL a;
    protected Proxy b;
    private Measurement c;
    private Core d;
    private Storage e;

    /*
     * Enabled aggressive block sorting
     */
    static {
        int n2 = Build.VERSION.SDK_INT;
        boolean bl = n2 < 11 || n2 > 13;
        REDIRECTION_SUPPORTED = bl;
    }

    public Request(Core core, Measurement measurement) {
        this.d = core;
        this.e = core.getStorage();
        this.c = measurement;
        this.a = this.process();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Proxy a(String string2) {
        int n2 = string2.indexOf(58);
        if (n2 != -1) {
            String string3 = string2.substring(0, n2);
            n2 = Integer.parseInt(string2.substring(n2 + 1));
            string2 = string3;
            do {
                return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, n2));
                break;
            } while (true);
        }
        n2 = 80;
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, n2));
    }

    private boolean c() {
        this.d();
        boolean bl = this.a();
        if (!bl) {
            this.e();
        }
        return bl;
    }

    private void d() {
        TransmissionMode transmissionMode = this.d.getOfflineTransmissionMode();
        if (transmissionMode == TransmissionMode.DEFAULT || transmissionMode == TransmissionMode.WIFIONLY && Connectivity.isConnectedWiFi(this.d.getAppContext()) || transmissionMode == TransmissionMode.PIGGYBACK) {
            this.d.getOfflineCache().flush();
        }
    }

    private void e() {
        CSLog.e(this, "Measurement was not transmitted: " + this.c.retrieveLabelsAsString(this.d.getMeasurementLabelOrder()));
        this.d.getOfflineCache().saveEvent(this.c);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected HttpURLConnection a(URL object) {
        object = this.b != null ? (HttpURLConnection)object.openConnection(this.b) : (HttpURLConnection)object.openConnection();
        object.setRequestProperty("Connection", "Close");
        return object;
    }

    protected URL a(URL uRL, int n2, String object) {
        switch (n2) {
            default: {
                return null;
            }
            case 300: 
            case 301: 
            case 302: 
            case 303: 
            case 305: 
        }
        if (object == null) {
            return null;
        }
        if (n2 == 305) {
            n2 = 0;
            if (object.startsWith(uRL.getProtocol() + ':')) {
                n2 = uRL.getProtocol().length() + 1;
            }
            int n3 = n2;
            if (object.startsWith("//", n2)) {
                n3 = n2 + 2;
            }
            this.b = Request.a(object.substring(n3));
            return uRL;
        }
        object = new URL(uRL, (String)object);
        if (!uRL.getProtocol().equals(object.getProtocol())) {
            return null;
        }
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected boolean a() {
        block27 : {
            var12_1 = false;
            var11_2 = false;
            var3_3 = null;
            var2_7 = null;
            var1_9 = var3_3;
            var4_10 = this.a;
            var1_9 = var3_3;
            if (!this.b()) break block27;
            var1_9 = var3_3;
            var1_9 = var3_3 = this.a((URL)var4_10);
            var2_7 = var3_3;
            var9_11 = var12_1;
            try {
                var8_12 = var3_3.getResponseCode();
            }
            catch (Throwable var3_4) {
                var2_7 = var1_9;
                var1_9 = var3_4;
lbl122: // 2 sources:
                do {
                    if (var2_7 == null) throw var1_9;
                    var2_7.disconnect();
                    throw var1_9;
                    break;
                } while (true);
            }
lbl18: // 3 sources:
            do {
                block30 : {
                    block29 : {
                        block28 : {
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            var4_10 = var3_3.getHeaderField("Content-Type");
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            var5_13 = var3_3.getHeaderField("Content-Length");
                            if (var8_12 != 200) break block28;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (!Utils.isNotEmpty((String)var4_10)) break block28;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (var4_10.indexOf("image/") != 0) break block28;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (!Utils.isNotEmpty(var5_13)) break block28;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (Integer.parseInt(var5_13) > 0) break block29;
                        }
                        var10_14 = var11_2;
                        if (var8_12 == 204) {
                            var10_14 = var11_2;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (!Utils.isNotEmpty(var5_13)) break block30;
                            var10_14 = var11_2;
                            var1_9 = var3_3;
                            var2_7 = var3_3;
                            var9_11 = var12_1;
                            if (Integer.parseInt(var5_13) != 0) break block30;
                        }
                        ** GOTO lbl73
                    }
                    var9_11 = true;
                    var10_14 = true;
                    var1_9 = var3_3;
                    var2_7 = var3_3;
                    this.d.getKeepAlive().reset();
                }
                var10_14 = var9_11 = var10_14;
                if (var3_3 == null) return var10_14;
                var3_3.disconnect();
                return var9_11;
                break;
            } while (true);
        }
        var7_15 = 0;
        var6_16 = 0;
        do {
            var8_12 = var6_16;
            var3_3 = var2_7;
            if (var4_10 == null) ** GOTO lbl18
            var8_12 = var6_16;
            var3_3 = var2_7;
            if (var7_15 >= 5) ** continue;
            var1_9 = var2_7;
            var9_11 = var12_1;
            var1_9 = var3_3 = this.a((URL)var4_10);
            var2_7 = var3_3;
            var9_11 = var12_1;
            var3_3.setInstanceFollowRedirects(false);
            var1_9 = var3_3;
            var2_7 = var3_3;
            var9_11 = var12_1;
            var6_16 = var3_3.getResponseCode();
            var1_9 = var3_3;
            var2_7 = var3_3;
            var9_11 = var12_1;
            var4_10 = this.a((URL)var4_10, var6_16, var3_3.getHeaderField("Location"));
            ++var7_15;
            var2_7 = var3_3;
        } while (true);
        catch (Exception var2_8) {
            var9_11 = false;
            var1_9 = null;
lbl113: // 3 sources:
            CSLog.e(this, "Exception sending measurement:" + var2_7.getLocalizedMessage());
            CSLog.printStackTrace((Exception)var2_7);
            var10_14 = var9_11;
            if (var1_9 == null) return var10_14;
            var1_9.disconnect();
            return var9_11;
        }
        {
            catch (Throwable var3_5) {
                var2_7 = var1_9;
                var1_9 = var3_5;
                ** continue;
            }
        }
        catch (Exception var3_6) {
            var1_9 = var2_7;
            var2_7 = var3_6;
            ** GOTO lbl113
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Boolean availableConnection() {
        try {
            Object object = this.d.getAppContext();
            boolean bl = true;
            if (Connectivity.isEmulator()) {
                object = "emu";
            } else if (Connectivity.isConnectedWiFi((Context)object)) {
                object = "wifi";
            } else if (Connectivity.isConnectedMobile((Context)object)) {
                object = "wwan";
            } else if (Connectivity.isConnectBluetooth((Context)object)) {
                object = "bth";
            } else if (Connectivity.isConnectEthernet((Context)object)) {
                object = "eth";
            } else {
                object = "unknown";
                bl = false;
            }
            this.c.setLabel("ns_radio", (String)object);
            return bl;
        }
        catch (NullPointerException var1_2) {
            return false;
        }
    }

    protected boolean b() {
        return REDIRECTION_SUPPORTED;
    }

    public URL process() {
        return this.process(this.c.getPixelURL());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public URL process(String object) {
        this.availableConnection();
        String string2 = object.concat(this.c.retrieveLabelsAsString(this.d.getMeasurementLabelOrder()));
        if (string2.length() > 4096 && string2.indexOf("&") > 0) {
            int n2 = string2.substring(0, 4088).lastIndexOf("&");
            try {
                object = URLEncoder.encode(string2.substring(n2 + 1), "UTF-8").replace("+", "%20");
            }
            catch (UnsupportedEncodingException var1_2) {
                object = "0";
            }
            object = string2.substring(0, n2) + "&ns_cut=" + (String)object;
        } else {
            object = string2;
        }
        if (object.length() > 4096) {
            object = object.substring(0, 4096);
        }
        try {
            return new URL((String)object);
        }
        catch (MalformedURLException var1_3) {
            return null;
        }
    }

    public boolean send() {
        Context context = this.d.getAppContext();
        boolean bl = Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE");
        TransmissionMode transmissionMode = this.d.getLiveTransmissionMode();
        this.e.set("lastMeasurementProcessedTimestamp", String.valueOf(Date.unixTime()));
        switch (a.a[transmissionMode.ordinal()]) {
            default: {
                return false;
            }
            case 1: {
                this.e();
                return false;
            }
            case 2: {
                this.e();
                return false;
            }
            case 3: {
                if (!bl || this.availableConnection().booleanValue()) {
                    return this.c();
                }
                this.e();
                return false;
            }
            case 4: {
                if (!bl || Connectivity.isEmulator() || Connectivity.isConnectedWiFi(context) || Connectivity.isConnectEthernet(context)) {
                    return this.c();
                }
                this.e();
                return false;
            }
            case 5: 
        }
        if (!bl || Connectivity.isEmulator() || Connectivity.isConnectedWiFi(context) || Connectivity.isDataConnected(context)) {
            return this.c();
        }
        this.e();
        return false;
    }
}

