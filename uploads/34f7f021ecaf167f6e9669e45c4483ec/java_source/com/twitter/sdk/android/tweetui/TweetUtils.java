/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.text.TextUtils
 *  com.twitter.sdk.android.core.Callback
 *  com.twitter.sdk.android.core.models.User
 *  com.twitter.sdk.android.tweetui.LoadCallback
 *  com.twitter.sdk.android.tweetui.TweetRepository
 *  com.twitter.sdk.android.tweetui.TweetUtils$1
 *  com.twitter.sdk.android.tweetui.TweetUtils$2
 *  com.twitter.sdk.android.tweetui.TweetUtils$3
 *  com.twitter.sdk.android.tweetui.TweetUtils$4
 *  com.twitter.sdk.android.tweetui.TweetUtils$CallbackAdapter
 *  io.fabric.sdk.android.Logger
 */
package com.twitter.sdk.android.tweetui;

import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetui.LoadCallback;
import com.twitter.sdk.android.tweetui.TweetRepository;
import com.twitter.sdk.android.tweetui.TweetUi;
import com.twitter.sdk.android.tweetui.TweetUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import java.util.List;
import java.util.Locale;

public final class TweetUtils {
    static final String LOAD_TWEET_DEBUG = "loadTweet failure for Tweet Id %d.";
    private static final String PERMALINK_FORMAT = "https://twitter.com/%s/status/%d";
    private static final String TAG = "TweetUi";
    private static final String UNKNOWN_SCREEN_NAME = "twitter_unknown";

    private TweetUtils() {
    }

    static Tweet getDisplayTweet(Tweet tweet) {
        if (tweet == null || tweet.retweetedStatus == null) {
            return tweet;
        }
        return tweet.retweetedStatus;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static Uri getPermalink(String string2, long l2) {
        if (l2 <= 0) {
            return null;
        }
        if (TextUtils.isEmpty((CharSequence)string2)) {
            string2 = String.format(Locale.US, "https://twitter.com/%s/status/%d", "twitter_unknown", l2);
            do {
                return Uri.parse((String)string2);
                break;
            } while (true);
        }
        string2 = String.format(Locale.US, "https://twitter.com/%s/status/%d", string2, l2);
        return Uri.parse((String)string2);
    }

    static boolean isTweetResolvable(Tweet tweet) {
        if (tweet != null && tweet.id > 0 && tweet.user != null && !TextUtils.isEmpty((CharSequence)tweet.user.screenName)) {
            return true;
        }
        return false;
    }

    public static void loadTweet(long l2, Callback<Tweet> callback) {
        TweetUi.getInstance().getTweetRepository().loadTweet(l2, (Callback)new 1(callback, Fabric.getLogger(), callback));
    }

    @Deprecated
    public static void loadTweet(long l2, LoadCallback<Tweet> callbackAdapter) {
        callbackAdapter = new /* Unavailable Anonymous Inner Class!! */;
        TweetUtils.loadTweet(l2, new 3((Callback)callbackAdapter, Fabric.getLogger(), (Callback)callbackAdapter));
    }

    public static void loadTweets(List<Long> list, Callback<List<Tweet>> callback) {
        TweetUi.getInstance().getTweetRepository().loadTweets(list, (Callback)new 2(callback, Fabric.getLogger(), callback));
    }

    @Deprecated
    public static void loadTweets(List<Long> list, LoadCallback<List<Tweet>> callbackAdapter) {
        callbackAdapter = new /* Unavailable Anonymous Inner Class!! */;
        TweetUtils.loadTweets(list, new 4((Callback)callbackAdapter, Fabric.getLogger(), (Callback)callbackAdapter));
    }
}

