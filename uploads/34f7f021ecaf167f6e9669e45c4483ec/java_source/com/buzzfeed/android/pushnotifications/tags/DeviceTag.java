/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.pushnotifications.tags;

import com.buzzfeed.android.pushnotifications.tags.PushTag;
import com.buzzfeed.toolkit.util.DeviceUtil;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

public class DeviceTag
implements PushTag {
    private static final String PUSH_NOTIFICATION_KEY_COUNTRY_PREFIX = "country_";
    private static final String PUSH_NOTIFICATION_KEY_LANGUAGE_PREFIX = "language_";

    @Override
    public void addTag(Set<String> set) {
        set.add(DeviceUtil.getDeviceName());
        set.add(TimeZone.getDefault().getDisplayName(true, 1, Locale.getDefault()));
        set.add(TimeZone.getDefault().getDisplayName(true, 0, Locale.getDefault()));
        set.add("language_" + Locale.getDefault().getLanguage());
        set.add("country_" + Locale.getDefault().getCountry());
    }
}

