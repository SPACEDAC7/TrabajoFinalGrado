/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.preference.PreferenceManager
 */
package com.buzzfeed.android.pushnotifications.tags;

import android.content.Context;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import com.buzzfeed.android.pushnotifications.tags.PushTag;
import java.util.Set;

public class TrendingTag
implements PushTag {
    private static final String PUSH_NOTIFICATION_KEY_TRENDING = "trending";
    private Context mContext;

    public TrendingTag(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public void addTag(Set<String> set) {
        String string2 = this.mContext.getResources().getString(2131296920);
        if (PreferenceManager.getDefaultSharedPreferences((Context)this.mContext).getBoolean(string2, false)) {
            set.add("trending");
            return;
        }
        set.remove("trending");
    }
}

