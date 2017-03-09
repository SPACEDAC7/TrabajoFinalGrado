/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.net.wifi.WifiInfo
 *  android.net.wifi.WifiManager
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.telephony.TelephonyManager
 *  org.apache.http.client.HttpClient
 *  org.apache.http.conn.ClientConnectionManager
 *  org.apache.http.conn.scheme.PlainSocketFactory
 *  org.apache.http.conn.scheme.Scheme
 *  org.apache.http.conn.scheme.SchemeRegistry
 *  org.apache.http.conn.scheme.SocketFactory
 *  org.apache.http.conn.ssl.SSLSocketFactory
 *  org.apache.http.conn.ssl.X509HostnameVerifier
 *  org.apache.http.impl.client.DefaultHttpClient
 *  org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager
 */
package com.comscore.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.comscore.utils.CSLog;
import com.comscore.utils.Permissions;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

@SuppressLint(value={"NewApi"})
public class Connectivity {
    private static HttpClient a = null;

    private static HttpClient a() {
        try {
            SSLSocketFactory sSLSocketFactory = SSLSocketFactory.getSocketFactory();
            sSLSocketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            basicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", (SocketFactory)sSLSocketFactory, 443));
            sSLSocketFactory = new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager((HttpParams)basicHttpParams, schemeRegistry), (HttpParams)basicHttpParams);
            return sSLSocketFactory;
        }
        catch (Exception var0_1) {
            CSLog.e("comScore", var0_1.getMessage());
            return new DefaultHttpClient();
        }
    }

    public static String getCurrentSSID(Context context) {
        if (Permissions.check(context, "android.permission.ACCESS_WIFI_STATE").booleanValue() && ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1).isConnected() && (context = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo()) != null) {
            return context.getSSID();
        }
        return null;
    }

    public static HttpClient getHttpClient() {
        if (a == null) {
            a = Connectivity.a();
        }
        return a;
    }

    public static boolean isConnectBluetooth(Context context) {
        if (Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE").booleanValue() && Build.VERSION.SDK_INT >= 13) {
            if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(7)) != null && context.isConnected()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean isConnectEthernet(Context context) {
        if (Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE").booleanValue() && Build.VERSION.SDK_INT >= 13) {
            if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(9)) != null && context.isConnected()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean isConnectedMobile(Context context) {
        if (Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) {
            if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(0)) != null && context.isConnected()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean isConnectedWiFi(Context context) {
        if (Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) {
            if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1)) != null && context.isConnected()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean isDataConnected(Context context) {
        if (Permissions.check(context, "android.permission.READ_PHONE_STATE").booleanValue()) {
            if ((context = (TelephonyManager)context.getSystemService("phone")).getDataActivity() == 3 || context.getDataActivity() == 1 || context.getDataActivity() == 2) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean isEmulator() {
        return "sdk".equals(Build.PRODUCT);
    }
}

