/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 */
package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.OnDeviceIdsRead;
import com.adjust.sdk.Util;

public class Adjust {
    private static AdjustInstance defaultInstance;

    private Adjust() {
    }

    public static void addSessionCallbackParameter(String string2, String string3) {
        Adjust.getDefaultInstance().addSessionCallbackParameter(string2, string3);
    }

    public static void addSessionPartnerParameter(String string2, String string3) {
        Adjust.getDefaultInstance().addSessionPartnerParameter(string2, string3);
    }

    public static void appWillOpenUrl(Uri uri) {
        Adjust.getDefaultInstance().appWillOpenUrl(uri);
    }

    public static String getAdid() {
        return Adjust.getDefaultInstance().getAdid();
    }

    public static AdjustAttribution getAttribution() {
        return Adjust.getDefaultInstance().getAttribution();
    }

    public static AdjustInstance getDefaultInstance() {
        synchronized (Adjust.class) {
            if (defaultInstance == null) {
                defaultInstance = new AdjustInstance();
            }
            AdjustInstance adjustInstance = defaultInstance;
            return adjustInstance;
        }
    }

    public static void getGoogleAdId(Context context, OnDeviceIdsRead onDeviceIdsRead) {
        Util.getGoogleAdId(context, onDeviceIdsRead);
    }

    public static boolean isEnabled() {
        return Adjust.getDefaultInstance().isEnabled();
    }

    public static void onCreate(AdjustConfig adjustConfig) {
        Adjust.getDefaultInstance().onCreate(adjustConfig);
    }

    public static void onPause() {
        Adjust.getDefaultInstance().onPause();
    }

    public static void onResume() {
        Adjust.getDefaultInstance().onResume();
    }

    public static void removeSessionCallbackParameter(String string2) {
        Adjust.getDefaultInstance().removeSessionCallbackParameter(string2);
    }

    public static void removeSessionPartnerParameter(String string2) {
        Adjust.getDefaultInstance().removeSessionPartnerParameter(string2);
    }

    public static void resetSessionCallbackParameters() {
        Adjust.getDefaultInstance().resetSessionCallbackParameters();
    }

    public static void resetSessionPartnerParameters() {
        Adjust.getDefaultInstance().resetSessionPartnerParameters();
    }

    public static void sendFirstPackages() {
        Adjust.getDefaultInstance().sendFirstPackages();
    }

    public static void setEnabled(boolean bl) {
        Adjust.getDefaultInstance().setEnabled(bl);
    }

    public static void setOfflineMode(boolean bl) {
        Adjust.getDefaultInstance().setOfflineMode(bl);
    }

    public static void setPushToken(String string2) {
        Adjust.getDefaultInstance().setPushToken(string2);
    }

    public static void setReferrer(String string2) {
        Adjust.getDefaultInstance().sendReferrer(string2);
    }

    public static void trackEvent(AdjustEvent adjustEvent) {
        Adjust.getDefaultInstance().trackEvent(adjustEvent);
    }
}

