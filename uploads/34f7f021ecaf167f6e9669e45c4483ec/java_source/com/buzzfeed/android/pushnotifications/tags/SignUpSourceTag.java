/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.pushnotifications.tags;

import android.content.Context;
import com.buzzfeed.android.data.preferences.PushNotificationPreference;
import com.buzzfeed.android.pushnotifications.tags.PushTag;
import java.util.Set;

public class SignUpSourceTag
implements PushTag {
    private static final String PUSH_NOTIFICATION_KEY_SIGNEDUPFROMONBOARDING = "signedUpFromOnboarding";
    private static final String PUSH_NOTIFICATION_KEY_SIGNEDUPFROMSETTINGS = "signedUpFromSettings";
    private Context mContext;

    public SignUpSourceTag(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void addTag(Set<String> set) {
        if (!new PushNotificationPreference(this.mContext).getValue().booleanValue()) {
            set.remove("signedUpFromSettings");
            set.remove("signedUpFromOnboarding");
            return;
        } else {
            if (set.contains("signedUpFromSettings") || set.contains("signedUpFromOnboarding")) return;
            {
                set.remove("signedUpFromOnboarding");
                set.add("signedUpFromSettings");
                return;
            }
        }
    }
}

