/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.toolkit.content.PostContent;

public class LotameEventTracker {
    private BuzzFeedTracker mTracker = BuzzFeedTracker.getInstance();

    public LotameEventTracker(BuzzFeedTracker buzzFeedTracker) {
        this.mTracker = buzzFeedTracker;
    }

    private void track(String string2, String string3) {
        this.mTracker.trackLotameEvent(string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackBuzzPageView(Context context, PostContent postContent) {
        String string2 = postContent.getCategory();
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.track(context.getString(2131296855), context.getString(2131296857) + string2);
        }
        if (postContent.isAd()) {
            this.track(context.getString(2131296855), context.getString(2131296861) + context.getString(2131296860));
        } else {
            this.track(context.getString(2131296855), context.getString(2131296861) + context.getString(2131296853));
        }
        this.track(context.getString(2131296851), context.getString(2131296862) + postContent.getAuthorDisplayName());
        this.track(context.getString(2131296859), context.getString(2131296848));
        this.track(context.getString(2131296859), context.getString(2131296856));
        this.track(context.getString(2131296859), context.getString(2131296852) + EnvironmentConfig.getEdition(context));
        this.track(context.getString(2131296854), context.getString(2131296850) + postContent.getId());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackShare(Context context, String string2, PostContent postContent) {
        String string3 = context.getString(2131296858) + string2;
        this.track(context.getString(2131296847), string3);
        string2 = postContent != null ? postContent.getCategory() : "";
        string2 = string3 + " : " + context.getString(2131296857) + string2;
        this.track(context.getString(2131296847), string2);
        string2 = string3 + " : " + context.getString(2131296857) + context.getString(2131296848);
        this.track(context.getString(2131296847), string2);
    }
}

