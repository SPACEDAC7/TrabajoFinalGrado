/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.wifi.WifiInfo
 *  android.net.wifi.WifiManager
 *  android.text.TextUtils
 */
package com.adjust.sdk.plugin;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Locale;

public class MacAddressUtil {
    public static String getMacAddress(Context object) {
        if ((object = MacAddressUtil.getRawMacAddress((Context)object)) == null) {
            return null;
        }
        return MacAddressUtil.removeSpaceString(object.toUpperCase(Locale.US));
    }

    private static String getRawMacAddress(Context object) {
        String string2 = MacAddressUtil.loadAddress("wlan0");
        if (string2 != null) {
            return string2;
        }
        string2 = MacAddressUtil.loadAddress("eth0");
        if (string2 != null) {
            return string2;
        }
        try {
            object = ((WifiManager)object.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (object != null) {
                return object;
            }
        }
        catch (Exception var0_1) {
            // empty catch block
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static String loadAddress(String charSequence) {
        try {
            Object object = "/sys/class/net/" + charSequence + "/address";
            charSequence = new StringBuilder(1000);
            object = new BufferedReader(new FileReader((String)object), 1024);
            char[] arrc = new char[1024];
            do {
                int n2;
                if ((n2 = object.read(arrc)) == -1) {
                    object.close();
                    return charSequence.toString();
                }
                charSequence.append(String.valueOf(arrc, 0, n2));
            } while (true);
        }
        catch (IOException var0_1) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String removeSpaceString(String string2) {
        String string3;
        if (string2 == null) {
            return null;
        }
        string2 = string3 = string2.replaceAll("\\s", "");
        if (!TextUtils.isEmpty((CharSequence)string3)) return string2;
        return null;
    }
}

