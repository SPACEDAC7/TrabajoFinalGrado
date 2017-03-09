/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.DeviceUtil;

public class NetworkUtil {
    private static final String HTTPS_SCHEME = "https";
    private static final String HTTP_SCHEME = "http";

    public static String convertHttpToHttps(@NonNull String string2) {
        if (string2.startsWith("https")) {
            return string2;
        }
        return string2.replaceFirst("http", "https");
    }

    public static ConnectionType getConnectionType(Context context) {
        if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnectedOrConnecting()) {
            if (context.getType() == 1) {
                return ConnectionType.WiFi;
            }
            return ConnectionType.Mobile;
        }
        return ConnectionType.None;
    }

    public static String getDefaultUserAgent(Context object) {
        object = String.format(object.getString(R.string.http_user_agent), DeviceUtil.getVersionCode((Context)object));
        return System.getProperty("http.agent") + " " + (String)object;
    }

    public static boolean isConnectedToNetwork(Context context) {
        if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static boolean isConnectedToWifi(Context context) {
        if (NetworkUtil.getConnectionType(context) == ConnectionType.WiFi) {
            return true;
        }
        return false;
    }

    public static enum ConnectionType {
        None,
        WiFi,
        Mobile;
        

        private ConnectionType() {
        }
    }

}

