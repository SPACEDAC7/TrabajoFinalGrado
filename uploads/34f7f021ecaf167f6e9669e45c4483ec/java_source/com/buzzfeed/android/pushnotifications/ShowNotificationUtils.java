/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications;

import android.os.Bundle;
import com.urbanairship.push.PushMessage;

public class ShowNotificationUtils {
    public static final String SHOW_ICON_URL = "show_icon_url";
    public static final String SHOW_ID = "show_id";
    public static final String SHOW_TITLE = "show_title";

    public static String getShowIdFromPushMessage(PushMessage pushMessage) {
        return pushMessage.getPushBundle().getString("show_id");
    }
}

