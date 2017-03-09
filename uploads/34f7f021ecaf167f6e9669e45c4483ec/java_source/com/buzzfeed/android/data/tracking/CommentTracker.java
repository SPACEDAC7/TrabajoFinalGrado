/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.util.IntentStringConverter;

public class CommentTracker {
    private Context mContext;
    private BuzzFeedTracker mTracker;

    public CommentTracker(BuzzFeedTracker buzzFeedTracker, Context context) {
        this.mTracker = buzzFeedTracker;
        this.mContext = context.getApplicationContext();
    }

    private String getString(int n2) {
        return this.mContext.getString(n2);
    }

    public void trackCommentOpenShareSheet() {
        this.mTracker.trackEvent(this.mContext.getString(2131296765), this.mContext.getString(2131296714), null);
    }

    public void trackCommentShareActivityClicked(String string2) {
        string2 = IntentStringConverter.convertIntentToApp(string2);
        this.mTracker.trackEvent(this.getString(2131296768), this.getString(2131296727), string2);
    }
}

