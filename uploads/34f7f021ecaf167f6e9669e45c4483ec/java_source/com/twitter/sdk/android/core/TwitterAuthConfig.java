/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  com.twitter.sdk.android.core.TwitterAuthConfig$1
 *  com.twitter.sdk.android.core.TwitterAuthToken
 *  com.twitter.sdk.android.core.internal.oauth.OAuth1aService
 */
package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import java.net.HttpURLConnection;
import java.util.Map;

public class TwitterAuthConfig
implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new 1();
    public static final int DEFAULT_AUTH_REQUEST_CODE = 140;
    private final String consumerKey;
    private final String consumerSecret;

    private TwitterAuthConfig(Parcel parcel) {
        this.consumerKey = parcel.readString();
        this.consumerSecret = parcel.readString();
    }

    public TwitterAuthConfig(String string2, String string3) {
        if (string2 == null || string3 == null) {
            throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
        }
        this.consumerKey = TwitterAuthConfig.sanitizeAttribute(string2);
        this.consumerSecret = TwitterAuthConfig.sanitizeAttribute(string3);
    }

    static String sanitizeAttribute(String string2) {
        if (string2 != null) {
            return string2.trim();
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public String getConsumerKey() {
        return this.consumerKey;
    }

    public String getConsumerSecret() {
        return this.consumerSecret;
    }

    public int getRequestCode() {
        return 140;
    }

    public void signRequest(TwitterAuthToken twitterAuthToken, HttpURLConnection httpURLConnection) {
        OAuth1aService.signRequest((TwitterAuthConfig)this, (TwitterAuthToken)twitterAuthToken, (HttpURLConnection)httpURLConnection, (Map)null);
    }

    public void signRequest(TwitterAuthToken twitterAuthToken, HttpURLConnection httpURLConnection, Map<String, String> map) {
        OAuth1aService.signRequest((TwitterAuthConfig)this, (TwitterAuthToken)twitterAuthToken, (HttpURLConnection)httpURLConnection, map);
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.consumerKey);
        parcel.writeString(this.consumerSecret);
    }
}

