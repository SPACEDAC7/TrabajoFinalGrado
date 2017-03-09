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
            var7_1 = false;
            var6_2 = false;
            var10_3 = null;
            var9_7 = null;
            var8_9 = var10_3;
            var11_10 = this.a;
            var8_9 = var10_3;
            if (!this.b()) break block27;
            var8_9 = var10_3;
            var8_9 = var10_3 = this.a((URL)var11_10);
            var9_7 = var10_3;
            var4_11 = var7_1;
            try {
                var3_12 = var10_3.getResponseCode();
            }
            catch (Throwable var10_4) {
                var9_7 = var8_9;
                var8_9 = var10_4;
lbl122: // 2 sources:
                do {
                    if (var9_7 == null) throw var8_9;
                    var9_7.disconnect();
                    throw var8_9;
                    break;
                } while (true);
            }
lbl18: // 3 sources:
            do {
                block30 : {
                    block29 : {
                        block28 : {
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            var11_10 = var10_3.getHeaderField("Content-Type");
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            var12_13 = var10_3.getHeaderField("Content-Length");
                            if (var3_12 != 200) break block28;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (!Utils.isNotEmpty((String)var11_10)) break block28;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (var11_10.indexOf("image/") != 0) break block28;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (!Utils.isNotEmpty(var12_13)) break block28;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (Integer.parseInt(var12_13) > 0) break block29;
                        }
                        var5_14 = var6_2;
                        if (var3_12 == 204) {
                            var5_14 = var6_2;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (!Utils.isNotEmpty(var12_13)) break block30;
                            var5_14 = var6_2;
                            var8_9 = var10_3;
                            var9_7 = var10_3;
                            var4_11 = var7_1;
                            if (Integer.parseInt(var12_13) != 0) break block30;
                        }
                        ** GOTO lbl73
                    }
                    var4_11 = true;
                    var5_14 = true;
                    var8_9 = var10_3;
                    var9_7 = var10_3;
                    this.d.getKeepAlive().reset();
                }
                var5_14 = var4_11 = var5_14;
                if (var10_3 == null) return var5_14;
                var10_3.disconnect();
                return var4_11;
                break;
            } while (true);
        }
        var2_15 = 0;
        var1_16 = 0;
        do {
            var3_12 = var1_16;
            var10_3 = var9_7;
            if (var11_10 == null) ** GOTO lbl18
            var3_12 = var1_16;
            var10_3 = var9_7;
            if (var2_15 >= 5) ** continue;
            var8_9 = var9_7;
            var4_11 = var7_1;
            var8_9 = var10_3 = this.a((URL)var11_10);
            var9_7 = var10_3;
            var4_11 = var7_1;
            var10_3.setInstanceFollowRedirects(false);
            var8_9 = var10_3;
            var9_7 = var10_3;
            var4_11 = var7_1;
            var1_16 = var10_3.getResponseCode();
            var8_9 = var10_3;
            var9_7 = var10_3;
            var4_11 = var7_1;
            var11_10 = this.a((URL)var11_10, var1_16, var10_3.getHeaderField("Location"));
            ++var2_15;
            var9_7 = var10_3;
        } while (true);
        catch (Exception var9_8) {
            var4_11 = false;
            var8_9 = null;
lbl113: // 3 sources:
            CSLog.e(this, "Exception sending measurement:" + var9_7.getLocalizedMessage());
            CSLog.printStackTrace((Exception)var9_7);
            var5_14 = var4_11;
            if (var8_9 == null) return var5_14;
            var8_9.disconnect();
            return var4_11;
        }
        {
            catch (Throwable var10_5) {
                var9_7 = var8_9;
                var8_9 = var10_5;
                ** continue;
            }
        }
        catch (Exception var10_6) {
            var8_9 = var9_7;
            var9_7 = var10_6;
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
        catch (NullPointerException var2_2) {
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

