/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 */
package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.Logger;
import java.io.Serializable;
import java.util.Locale;

class FacebookTimeSpentData
implements Serializable {
    private static final long APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS = 300000;
    private static final long FIRST_TIME_LOAD_RESUME_TIME = -1;
    private static final long[] INACTIVE_SECONDS_QUANTA;
    private static final long INTERRUPTION_THRESHOLD_MILLISECONDS = 1000;
    private static final long NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION = 60000;
    private static final String TAG;
    private static final long serialVersionUID = 1;
    private String firstOpenSourceApplication;
    private int interruptionCount;
    private boolean isAppActive;
    private boolean isWarmLaunch;
    private long lastActivateEventLoggedTime;
    private long lastResumeTime;
    private long lastSuspendTime;
    private long millisecondsSpentInSession;

    static {
        TAG = AppEventsLogger.class.getCanonicalName();
        INACTIVE_SECONDS_QUANTA = new long[]{300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};
    }

    FacebookTimeSpentData() {
        this.resetSession();
    }

    private FacebookTimeSpentData(long l2, long l3, long l4, int n2) {
        this.resetSession();
        this.lastResumeTime = l2;
        this.lastSuspendTime = l3;
        this.millisecondsSpentInSession = l4;
        this.interruptionCount = n2;
    }

    private FacebookTimeSpentData(long l2, long l3, long l4, int n2, String string2) {
        this.resetSession();
        this.lastResumeTime = l2;
        this.lastSuspendTime = l3;
        this.millisecondsSpentInSession = l4;
        this.interruptionCount = n2;
        this.firstOpenSourceApplication = string2;
    }

    private static int getQuantaIndex(long l2) {
        int n2;
        for (n2 = 0; n2 < INACTIVE_SECONDS_QUANTA.length && INACTIVE_SECONDS_QUANTA[n2] < l2; ++n2) {
        }
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isColdLaunch() {
        boolean bl = !this.isWarmLaunch;
        this.isWarmLaunch = true;
        return bl;
    }

    private void logAppDeactivatedEvent(AppEventsLogger appEventsLogger, long l2) {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", this.interruptionCount);
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", FacebookTimeSpentData.getQuantaIndex(l2)));
        bundle.putString("fb_mobile_launch_source", this.firstOpenSourceApplication);
        appEventsLogger.logEvent("fb_mobile_deactivate_app", this.millisecondsSpentInSession / 1000, bundle);
        this.resetSession();
    }

    private void resetSession() {
        this.isAppActive = false;
        this.lastResumeTime = -1;
        this.lastSuspendTime = -1;
        this.interruptionCount = 0;
        this.millisecondsSpentInSession = 0;
    }

    private boolean wasSuspendedEver() {
        if (this.lastSuspendTime != -1) {
            return true;
        }
        return false;
    }

    private Object writeReplace() {
        return new SerializationProxyV2(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount, this.firstOpenSourceApplication);
    }

    /*
     * Enabled aggressive block sorting
     */
    void onResume(AppEventsLogger appEventsLogger, long l2, String string2) {
        if (this.isColdLaunch() || l2 - this.lastActivateEventLoggedTime > 300000) {
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", string2);
            appEventsLogger.logEvent("fb_mobile_activate_app", bundle);
            this.lastActivateEventLoggedTime = l2;
        }
        if (this.isAppActive) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Resume for active app");
            return;
        }
        long l3 = this.wasSuspendedEver() ? l2 - this.lastSuspendTime : 0;
        long l4 = l3;
        if (l3 < 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
            l4 = 0;
        }
        if (l4 > 60000) {
            this.logAppDeactivatedEvent(appEventsLogger, l4);
        } else if (l4 > 1000) {
            ++this.interruptionCount;
        }
        if (this.interruptionCount == 0) {
            this.firstOpenSourceApplication = string2;
        }
        this.lastResumeTime = l2;
        this.isAppActive = true;
    }

    void onSuspend(AppEventsLogger appEventsLogger, long l2) {
        long l3;
        if (!this.isAppActive) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Suspend for inactive app");
            return;
        }
        long l4 = l3 = l2 - this.lastResumeTime;
        if (l3 < 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
            l4 = 0;
        }
        this.millisecondsSpentInSession += l4;
        this.lastSuspendTime = l2;
        this.isAppActive = false;
    }

    private static class SerializationProxyV1
    implements Serializable {
        private static final long serialVersionUID = 6;
        private final int interruptionCount;
        private final long lastResumeTime;
        private final long lastSuspendTime;
        private final long millisecondsSpentInSession;

        SerializationProxyV1(long l2, long l3, long l4, int n2) {
            this.lastResumeTime = l2;
            this.lastSuspendTime = l3;
            this.millisecondsSpentInSession = l4;
            this.interruptionCount = n2;
        }

        private Object readResolve() {
            return new FacebookTimeSpentData(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount);
        }
    }

    private static class SerializationProxyV2
    implements Serializable {
        private static final long serialVersionUID = 6;
        private final String firstOpenSourceApplication;
        private final int interruptionCount;
        private final long lastResumeTime;
        private final long lastSuspendTime;
        private final long millisecondsSpentInSession;

        SerializationProxyV2(long l2, long l3, long l4, int n2, String string2) {
            this.lastResumeTime = l2;
            this.lastSuspendTime = l3;
            this.millisecondsSpentInSession = l4;
            this.interruptionCount = n2;
            this.firstOpenSourceApplication = string2;
        }

        private Object readResolve() {
            return new FacebookTimeSpentData(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount, this.firstOpenSourceApplication);
        }
    }

}

