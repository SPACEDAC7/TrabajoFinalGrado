/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package com.adjust.sdk;

import android.net.Uri;
import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IRunActivityHandler;
import java.util.ArrayList;
import java.util.List;

public class AdjustInstance {
    private ActivityHandler activityHandler;
    private String pushToken;
    private String referrer;
    private long referrerClickTime;
    private List<IRunActivityHandler> sessionParametersActionsArray;

    private boolean checkActivityHandler() {
        if (this.activityHandler == null) {
            AdjustInstance.getLogger().error("Adjust not initialized correctly", new Object[0]);
            return false;
        }
        return true;
    }

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }

    public void addSessionCallbackParameter(final String string2, final String string3) {
        if (this.activityHandler != null) {
            this.activityHandler.addSessionCallbackParameter(string2, string3);
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.addSessionCallbackParameterI(string2, string3);
            }
        });
    }

    public void addSessionPartnerParameter(final String string2, final String string3) {
        if (this.activityHandler != null) {
            this.activityHandler.addSessionPartnerParameter(string2, string3);
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.addSessionPartnerParameterI(string2, string3);
            }
        });
    }

    public void appWillOpenUrl(Uri uri) {
        if (!this.checkActivityHandler()) {
            return;
        }
        long l2 = System.currentTimeMillis();
        this.activityHandler.readOpenUrl(uri, l2);
    }

    public String getAdid() {
        if (!this.checkActivityHandler()) {
            return null;
        }
        return this.activityHandler.getAdid();
    }

    public AdjustAttribution getAttribution() {
        if (!this.checkActivityHandler()) {
            return null;
        }
        return this.activityHandler.getAttribution();
    }

    public boolean isEnabled() {
        if (!this.checkActivityHandler()) {
            return false;
        }
        return this.activityHandler.isEnabled();
    }

    public void onCreate(AdjustConfig adjustConfig) {
        if (this.activityHandler != null) {
            AdjustInstance.getLogger().error("Adjust already initialized", new Object[0]);
            return;
        }
        adjustConfig.referrer = this.referrer;
        adjustConfig.referrerClickTime = this.referrerClickTime;
        adjustConfig.sessionParametersActionsArray = this.sessionParametersActionsArray;
        adjustConfig.pushToken = this.pushToken;
        this.activityHandler = ActivityHandler.getInstance(adjustConfig);
    }

    public void onPause() {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.onPause();
    }

    public void onResume() {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.onResume();
    }

    public void removeSessionCallbackParameter(final String string2) {
        if (this.activityHandler != null) {
            this.activityHandler.removeSessionCallbackParameter(string2);
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.removeSessionCallbackParameterI(string2);
            }
        });
    }

    public void removeSessionPartnerParameter(final String string2) {
        if (this.activityHandler != null) {
            this.activityHandler.removeSessionPartnerParameter(string2);
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.removeSessionPartnerParameterI(string2);
            }
        });
    }

    public void resetSessionCallbackParameters() {
        if (this.activityHandler != null) {
            this.activityHandler.resetSessionCallbackParameters();
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.resetSessionCallbackParametersI();
            }
        });
    }

    public void resetSessionPartnerParameters() {
        if (this.activityHandler != null) {
            this.activityHandler.resetSessionPartnerParameters();
            return;
        }
        if (this.sessionParametersActionsArray == null) {
            this.sessionParametersActionsArray = new ArrayList<IRunActivityHandler>();
        }
        this.sessionParametersActionsArray.add(()new IRunActivityHandler(){

            @Override
            public void run(ActivityHandler activityHandler) {
                activityHandler.resetSessionPartnerParametersI();
            }
        });
    }

    public void sendFirstPackages() {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.sendFirstPackages();
    }

    public void sendReferrer(String string2) {
        long l2 = System.currentTimeMillis();
        if (this.activityHandler == null) {
            this.referrer = string2;
            this.referrerClickTime = l2;
            return;
        }
        this.activityHandler.sendReferrer(string2, l2);
    }

    public void setEnabled(boolean bl) {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.setEnabled(bl);
    }

    public void setOfflineMode(boolean bl) {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.setOfflineMode(bl);
    }

    public void setPushToken(String string2) {
        this.pushToken = string2;
        if (this.activityHandler != null) {
            this.activityHandler.setPushToken(string2);
        }
    }

    public void teardown(boolean bl) {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.teardown(bl);
        this.activityHandler = null;
    }

    public void trackEvent(AdjustEvent adjustEvent) {
        if (!this.checkActivityHandler()) {
            return;
        }
        this.activityHandler.trackEvent(adjustEvent);
    }

}

