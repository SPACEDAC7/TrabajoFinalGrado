/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.util;

import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.toolkit.util.LogUtil;

public class DiscriminatingTracker
extends BuzzFeedTracker {
    private static String TAG = DiscriminatingTracker.class.getSimpleName();
    private static boolean sEnabled = false;
    private static DiscriminatingTracker sInstance;

    private DiscriminatingTracker() {
    }

    public static DiscriminatingTracker getInstance() {
        synchronized (DiscriminatingTracker.class) {
            if (sInstance == null) {
                sInstance = new DiscriminatingTracker();
            }
            DiscriminatingTracker discriminatingTracker = sInstance;
            return discriminatingTracker;
        }
    }

    public void enable() {
        sEnabled = true;
    }

    public boolean isEnabled() {
        return sEnabled;
    }

    @Override
    public void trackEvent(String string2, String string3, String string4, long l2) {
        String string5 = TAG + ".trackEvent";
        if (sEnabled) {
            super.trackEvent(string2, string3, string4, l2);
            return;
        }
        LogUtil.w(string5, "Application not running yet, event not tracked: category=" + string2 + ", action=" + string3 + ", label=" + string4 + ", value=" + l2);
    }
}

