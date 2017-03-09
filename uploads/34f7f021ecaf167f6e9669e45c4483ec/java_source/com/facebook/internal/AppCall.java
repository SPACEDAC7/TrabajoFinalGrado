/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 */
package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

public class AppCall {
    private static AppCall currentPendingCall;
    private UUID callId;
    private int requestCode;
    private Intent requestIntent;

    public AppCall(int n2) {
        this(n2, UUID.randomUUID());
    }

    public AppCall(int n2, UUID uUID) {
        this.callId = uUID;
        this.requestCode = n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static AppCall finishPendingCall(UUID object, int n2) {
        synchronized (AppCall.class) {
            AppCall appCall;
            block5 : {
                appCall = AppCall.getCurrentPendingCall();
                if (appCall == null) return null;
                if (!appCall.getCallId().equals(object)) return null;
                int n3 = appCall.getRequestCode();
                if (n3 == n2) break block5;
                return null;
            }
            AppCall.setCurrentPendingCall(null);
            return appCall;
        }
    }

    public static AppCall getCurrentPendingCall() {
        return currentPendingCall;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean setCurrentPendingCall(AppCall appCall) {
        synchronized (AppCall.class) {
            AppCall appCall2 = AppCall.getCurrentPendingCall();
            currentPendingCall = appCall;
            if (appCall2 == null) return false;
            return true;
        }
    }

    public UUID getCallId() {
        return this.callId;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public Intent getRequestIntent() {
        return this.requestIntent;
    }

    public boolean setPending() {
        return AppCall.setCurrentPendingCall(this);
    }

    public void setRequestCode(int n2) {
        this.requestCode = n2;
    }

    public void setRequestIntent(Intent intent) {
        this.requestIntent = intent;
    }
}

