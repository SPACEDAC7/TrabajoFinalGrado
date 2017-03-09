/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.preference.PreferenceManager
 */
package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.comscore.analytics.comScore;
import com.comscore.applications.EventType;
import com.comscore.utils.CSLog;
import java.net.URLDecoder;
import java.util.HashMap;

public class InstallReferrerReceiver
extends BroadcastReceiver {
    public static final String CS_NONE = "CS_NONE";
    public static final String CS_REFERRER_PREF_KEY = "CS_REFERRER_PREF_KEY";
    public static final String REFERRER_LABEL = "ns_ap_referrer";
    private static final String a = "InstallReferrerReceiver";

    private void a(String string2, Context context) {
        context = PreferenceManager.getDefaultSharedPreferences((Context)context).edit();
        context.putString("CS_REFERRER_PREF_KEY", string2);
        context.commit();
        CSLog.d("InstallReferrerReceiver", "Stored data");
    }

    public static HashMap<String, String> retrieveReferrerLabels(Context context) {
        Object object = PreferenceManager.getDefaultSharedPreferences((Context)context);
        if (object.contains("CS_REFERRER_PREF_KEY")) {
            context = object.edit();
            object = object.getString("CS_REFERRER_PREF_KEY", "CS_NONE");
            CSLog.d(comScore.getAppName().toString(), "referrer was set as: '" + (String)object + "'");
            context.remove("CS_REFERRER_PREF_KEY");
            context.commit();
            if (object != null && object.length() > 0 && !object.equals("CS_NONE")) {
                return InstallReferrerReceiver.splitReferrer((String)object);
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static HashMap<String, String> splitReferrer(String arrstring) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (arrstring != null && arrstring.length() > 0) {
            for (String string2 : arrstring.split("&")) {
                int n2 = string2.indexOf("=");
                if (n2 >= 0) {
                    hashMap.put(string2.substring(0, n2), string2.substring(n2 + 1));
                    continue;
                }
                hashMap.put("ns_ap_referrer", string2);
            }
            if (hashMap.size() > 0 && !hashMap.containsKey("ns_ap_referrer")) {
                hashMap.put("ns_ap_referrer", "1");
            }
        }
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public void onReceive(Context context, Intent object) {
        String string2;
        CSLog.d("InstallReferrerReceiver", "onReceive()");
        String string3 = string2 = "CS_NONE";
        if (object != null) {
            string3 = string2;
            String string4 = string2;
            try {
                if (object.getAction().equals("com.android.vending.INSTALL_REFERRER")) {
                    string4 = string2;
                    object = object.getStringExtra("referrer");
                    string3 = string2;
                    if (object != null) {
                        string4 = string2;
                        string4 = string3 = URLDecoder.decode((String)object, "UTF-8");
                        context.getSharedPreferences("referrer", 0).edit().putString("referrer", string3).commit();
                    }
                }
            }
            catch (Exception var2_3) {
                CSLog.e("InstallReferrerReceiver", "onReceive()" + var2_3.getMessage());
                string3 = string4;
            }
        }
        CSLog.d("InstallReferrerReceiver", "Received referrer: '" + string3 + "'");
        if (string3 == "CS_NONE") return;
        object = comScore.getCore();
        if (object != null && object.getAppContext() != null && object.getColdStartCount() > 0) {
            object.notify(EventType.HIDDEN, InstallReferrerReceiver.splitReferrer(string3), true);
            return;
        }
        this.a(string3, context);
    }
}

