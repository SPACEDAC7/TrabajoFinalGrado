/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.adjust.sdk;

import android.content.Context;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IRunActivityHandler;
import com.adjust.sdk.LogLevel;
import com.adjust.sdk.OnAttributionChangedListener;
import com.adjust.sdk.OnDeeplinkResponseListener;
import com.adjust.sdk.OnEventTrackingFailedListener;
import com.adjust.sdk.OnEventTrackingSucceededListener;
import com.adjust.sdk.OnSessionTrackingFailedListener;
import com.adjust.sdk.OnSessionTrackingSucceededListener;
import com.adjust.sdk.Util;
import java.util.List;

public class AdjustConfig {
    public static final String ENVIRONMENT_PRODUCTION = "production";
    public static final String ENVIRONMENT_SANDBOX = "sandbox";
    boolean allowSuppressLogLevel;
    String appToken;
    Context context;
    Class deepLinkComponent;
    String defaultTracker;
    Double delayStart;
    Boolean deviceKnown;
    String environment;
    boolean eventBufferingEnabled;
    ILogger logger;
    OnAttributionChangedListener onAttributionChangedListener;
    OnDeeplinkResponseListener onDeeplinkResponseListener;
    OnEventTrackingFailedListener onEventTrackingFailedListener;
    OnEventTrackingSucceededListener onEventTrackingSucceededListener;
    OnSessionTrackingFailedListener onSessionTrackingFailedListener;
    OnSessionTrackingSucceededListener onSessionTrackingSucceededListener;
    String processName;
    String pushToken;
    String referrer;
    long referrerClickTime;
    String sdkPrefix;
    boolean sendInBackground;
    List<IRunActivityHandler> sessionParametersActionsArray;
    String userAgent;

    public AdjustConfig(Context context, String string2, String string3) {
        this.init(context, string2, string3, false);
    }

    public AdjustConfig(Context context, String string2, String string3, boolean bl) {
        this.init(context, string2, string3, bl);
    }

    private boolean checkAppToken(String string2) {
        if (string2 == null) {
            this.logger.error("Missing App Token", new Object[0]);
            return false;
        }
        if (string2.length() != 12) {
            this.logger.error("Malformed App Token '%s'", string2);
            return false;
        }
        return true;
    }

    private boolean checkContext(Context context) {
        if (context == null) {
            this.logger.error("Missing context", new Object[0]);
            return false;
        }
        if (!Util.checkPermission(context, "android.permission.INTERNET")) {
            this.logger.error("Missing permission: INTERNET", new Object[0]);
            return false;
        }
        return true;
    }

    private boolean checkEnvironment(String string2) {
        if (string2 == null) {
            this.logger.error("Missing environment", new Object[0]);
            return false;
        }
        if (string2.equals("sandbox")) {
            this.logger.Assert("SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don't forget to set the environment to `production` before publishing!", new Object[0]);
            return true;
        }
        if (string2.equals("production")) {
            this.logger.Assert("PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!", new Object[0]);
            return true;
        }
        this.logger.error("Unknown environment '%s'", string2);
        return false;
    }

    private void init(Context context, String string2, String string3, boolean bl) {
        this.allowSuppressLogLevel = bl;
        this.logger = AdjustFactory.getLogger();
        this.setLogLevel(LogLevel.INFO, string3);
        if (!this.isValid(context, string2, string3)) {
            return;
        }
        this.context = context.getApplicationContext();
        this.appToken = string2;
        this.environment = string3;
        this.eventBufferingEnabled = false;
        this.sendInBackground = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isValid(Context context, String string2, String string3) {
        if (!(this.checkAppToken(string2) && this.checkEnvironment(string3) && this.checkContext(context))) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setLogLevel(LogLevel logLevel, String string2) {
        if ("production".equals(string2)) {
            logLevel = this.allowSuppressLogLevel ? LogLevel.SUPRESS : LogLevel.ASSERT;
        } else if (!this.allowSuppressLogLevel && logLevel == LogLevel.SUPRESS) {
            logLevel = LogLevel.ASSERT;
        }
        this.logger.setLogLevel(logLevel);
    }

    public boolean isValid() {
        if (this.appToken != null) {
            return true;
        }
        return false;
    }

    public void setDeepLinkComponent(Class class_) {
        this.deepLinkComponent = class_;
    }

    public void setDefaultTracker(String string2) {
        this.defaultTracker = string2;
    }

    public void setDelayStart(double d2) {
        this.delayStart = d2;
    }

    public void setDeviceKnown(boolean bl) {
        this.deviceKnown = bl;
    }

    public void setEventBufferingEnabled(Boolean bl) {
        if (bl == null) {
            this.eventBufferingEnabled = false;
            return;
        }
        this.eventBufferingEnabled = bl;
    }

    public void setLogLevel(LogLevel logLevel) {
        this.setLogLevel(logLevel, this.environment);
    }

    public void setOnAttributionChangedListener(OnAttributionChangedListener onAttributionChangedListener) {
        this.onAttributionChangedListener = onAttributionChangedListener;
    }

    public void setOnDeeplinkResponseListener(OnDeeplinkResponseListener onDeeplinkResponseListener) {
        this.onDeeplinkResponseListener = onDeeplinkResponseListener;
    }

    public void setOnEventTrackingFailedListener(OnEventTrackingFailedListener onEventTrackingFailedListener) {
        this.onEventTrackingFailedListener = onEventTrackingFailedListener;
    }

    public void setOnEventTrackingSucceededListener(OnEventTrackingSucceededListener onEventTrackingSucceededListener) {
        this.onEventTrackingSucceededListener = onEventTrackingSucceededListener;
    }

    public void setOnSessionTrackingFailedListener(OnSessionTrackingFailedListener onSessionTrackingFailedListener) {
        this.onSessionTrackingFailedListener = onSessionTrackingFailedListener;
    }

    public void setOnSessionTrackingSucceededListener(OnSessionTrackingSucceededListener onSessionTrackingSucceededListener) {
        this.onSessionTrackingSucceededListener = onSessionTrackingSucceededListener;
    }

    public void setProcessName(String string2) {
        this.processName = string2;
    }

    public void setSdkPrefix(String string2) {
        this.sdkPrefix = string2;
    }

    public void setSendInBackground(boolean bl) {
        this.sendInBackground = bl;
    }

    public void setUserAgent(String string2) {
        this.userAgent = string2;
    }
}

