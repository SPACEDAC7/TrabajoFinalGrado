/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package com.adjust.sdk;

import android.net.Uri;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AttributionResponseData;
import com.adjust.sdk.EventResponseData;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SessionResponseData;

public interface IActivityHandler {
    public void addSessionCallbackParameter(String var1, String var2);

    public void addSessionPartnerParameter(String var1, String var2);

    public void finishedTrackingActivity(ResponseData var1);

    public void init(AdjustConfig var1);

    public boolean isEnabled();

    public void launchAttributionResponseTasks(AttributionResponseData var1);

    public void launchEventResponseTasks(EventResponseData var1);

    public void launchSessionResponseTasks(SessionResponseData var1);

    public void onPause();

    public void onResume();

    public void readOpenUrl(Uri var1, long var2);

    public void removeSessionCallbackParameter(String var1);

    public void removeSessionPartnerParameter(String var1);

    public void resetSessionCallbackParameters();

    public void resetSessionPartnerParameters();

    public void sendFirstPackages();

    public void sendReferrer(String var1, long var2);

    public void setAskingAttribution(boolean var1);

    public void setEnabled(boolean var1);

    public void setOfflineMode(boolean var1);

    public void setPushToken(String var1);

    public void teardown(boolean var1);

    public void trackEvent(AdjustEvent var1);

    public boolean updateAttributionI(AdjustAttribution var1);
}

