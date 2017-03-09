/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.pushnotifications.tags;

import android.content.Context;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.pushnotifications.tags.PushTag;
import java.util.Set;

public class AuthenticationTag
implements PushTag {
    private static final String PUSH_NOTIFICATION_KEY_SIGNEDIN = "signedIn";
    private static final String PUSH_NOTIFICATION_KEY_SIGNEDOUT = "signedOut";
    private Context mContext;

    public AuthenticationTag(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public void addTag(Set<String> set) {
        if (BuzzUser.getInstance(this.mContext).isLogin()) {
            set.remove("signedOut");
            set.add("signedIn");
            return;
        }
        set.remove("signedIn");
        set.add("signedOut");
    }
}

