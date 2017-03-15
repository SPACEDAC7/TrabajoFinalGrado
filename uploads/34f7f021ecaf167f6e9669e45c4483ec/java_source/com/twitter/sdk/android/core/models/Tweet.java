/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.twitter.sdk.android.core.models.Card
 *  com.twitter.sdk.android.core.models.Coordinates
 *  com.twitter.sdk.android.core.models.Identifiable
 *  com.twitter.sdk.android.core.models.Place
 *  com.twitter.sdk.android.core.models.TweetEntities
 *  com.twitter.sdk.android.core.models.User
 */
package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.Coordinates;
import com.twitter.sdk.android.core.models.Identifiable;
import com.twitter.sdk.android.core.models.Place;
import com.twitter.sdk.android.core.models.TweetEntities;
import com.twitter.sdk.android.core.models.User;
import java.util.List;

public class Tweet
implements Identifiable {
    public static final long INVALID_ID = -1;
    @SerializedName(value="card")
    public final Card card;
    @SerializedName(value="coordinates")
    public final Coordinates coordinates;
    @SerializedName(value="created_at")
    public final String createdAt;
    @SerializedName(value="current_user_retweet")
    public final Object currentUserRetweet;
    @SerializedName(value="entities")
    public final TweetEntities entities;
    @SerializedName(value="extended_entities")
    public final TweetEntities extendedEtities;
    @SerializedName(value="favorite_count")
    public final Integer favoriteCount;
    @SerializedName(value="favorited")
    public final boolean favorited;
    @SerializedName(value="filter_level")
    public final String filterLevel;
    @SerializedName(value="id")
    public final long id;
    @SerializedName(value="id_str")
    public final String idStr;
    @SerializedName(value="in_reply_to_screen_name")
    public final String inReplyToScreenName;
    @SerializedName(value="in_reply_to_status_id")
    public final long inReplyToStatusId;
    @SerializedName(value="in_reply_to_status_id_str")
    public final String inReplyToStatusIdStr;
    @SerializedName(value="in_reply_to_user_id")
    public final long inReplyToUserId;
    @SerializedName(value="in_reply_to_user_id_str")
    public final String inReplyToUserIdStr;
    @SerializedName(value="lang")
    public final String lang;
    @SerializedName(value="place")
    public final Place place;
    @SerializedName(value="possibly_sensitive")
    public final boolean possiblySensitive;
    @SerializedName(value="retweet_count")
    public final int retweetCount;
    @SerializedName(value="retweeted")
    public final boolean retweeted;
    @SerializedName(value="retweeted_status")
    public final Tweet retweetedStatus;
    @SerializedName(value="scopes")
    public final Object scopes;
    @SerializedName(value="source")
    public final String source;
    @SerializedName(value="text")
    public final String text;
    @SerializedName(value="truncated")
    public final boolean truncated;
    @SerializedName(value="user")
    public final User user;
    @SerializedName(value="withheld_copyright")
    public final boolean withheldCopyright;
    @SerializedName(value="withheld_in_countries")
    public final List<String> withheldInCountries;
    @SerializedName(value="withheld_scope")
    public final String withheldScope;

    @Deprecated
    public Tweet(Coordinates coordinates, String string2, Object object, TweetEntities tweetEntities, TweetEntities tweetEntities2, Integer n2, boolean bl, String string3, long l2, String string4, String string5, long l3, String string6, long l4, String string7, String string8, Place place, boolean bl2, Object object2, int n3, boolean bl3, Tweet tweet, String string9, String string10, boolean bl4, User user, boolean bl5, List<String> list, String string11) {
        this(coordinates, string2, object, tweetEntities, tweetEntities2, n2, bl, string3, l2, string4, string5, l3, string6, l4, string7, string8, place, bl2, object2, n3, bl3, tweet, string9, string10, bl4, user, bl5, list, string11, null);
    }

    public Tweet(Coordinates coordinates, String string2, Object object, TweetEntities tweetEntities, TweetEntities tweetEntities2, Integer n2, boolean bl, String string3, long l2, String string4, String string5, long l3, String string6, long l4, String string7, String string8, Place place, boolean bl2, Object object2, int n3, boolean bl3, Tweet tweet, String string9, String string10, boolean bl4, User user, boolean bl5, List<String> list, String string11, Card card) {
        this.coordinates = coordinates;
        this.createdAt = string2;
        this.currentUserRetweet = object;
        this.entities = tweetEntities;
        this.extendedEtities = tweetEntities2;
        this.favoriteCount = n2;
        this.favorited = bl;
        this.filterLevel = string3;
        this.id = l2;
        this.idStr = string4;
        this.inReplyToScreenName = string5;
        this.inReplyToStatusId = l3;
        this.inReplyToStatusIdStr = string6;
        this.inReplyToUserId = l4;
        this.inReplyToUserIdStr = string7;
        this.lang = string8;
        this.place = place;
        this.possiblySensitive = bl2;
        this.scopes = object2;
        this.retweetCount = n3;
        this.retweeted = bl3;
        this.retweetedStatus = tweet;
        this.source = string9;
        this.text = string10;
        this.truncated = bl4;
        this.user = user;
        this.withheldCopyright = bl5;
        this.withheldInCountries = list;
        this.withheldScope = string11;
        this.card = card;
    }

    @Deprecated
    public Tweet(Coordinates coordinates, String string2, Object object, TweetEntities tweetEntities, Integer n2, boolean bl, String string3, long l2, String string4, String string5, long l3, String string6, long l4, String string7, String string8, Place place, boolean bl2, Object object2, int n3, boolean bl3, Tweet tweet, String string9, String string10, boolean bl4, User user, boolean bl5, List<String> list, String string11) {
        this(coordinates, string2, object, tweetEntities, null, n2, bl, string3, l2, string4, string5, l3, string6, l4, string7, string8, place, bl2, object2, n3, bl3, tweet, string9, string10, bl4, user, bl5, list, string11);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        if (!(object instanceof Tweet)) return false;
        object = (Tweet)object;
        if (this.id != object.id) return false;
        return true;
    }

    public long getId() {
        return this.id;
    }

    public int hashCode() {
        return (int)this.id;
    }
}

