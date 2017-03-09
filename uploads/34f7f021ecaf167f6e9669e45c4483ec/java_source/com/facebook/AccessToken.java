/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.AccessTokenManager;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.LegacyTokenHelper;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AccessToken
implements Parcelable {
    public static final String ACCESS_TOKEN_KEY = "access_token";
    private static final String APPLICATION_ID_KEY = "application_id";
    public static final Parcelable.Creator<AccessToken> CREATOR;
    private static final int CURRENT_JSON_FORMAT = 1;
    private static final String DECLINED_PERMISSIONS_KEY = "declined_permissions";
    private static final AccessTokenSource DEFAULT_ACCESS_TOKEN_SOURCE;
    private static final Date DEFAULT_EXPIRATION_TIME;
    private static final Date DEFAULT_LAST_REFRESH_TIME;
    private static final String EXPIRES_AT_KEY = "expires_at";
    public static final String EXPIRES_IN_KEY = "expires_in";
    private static final String LAST_REFRESH_KEY = "last_refresh";
    private static final Date MAX_DATE;
    private static final String PERMISSIONS_KEY = "permissions";
    private static final String SOURCE_KEY = "source";
    private static final String TOKEN_KEY = "token";
    public static final String USER_ID_KEY = "user_id";
    private static final String VERSION_KEY = "version";
    private final String applicationId;
    private final Set<String> declinedPermissions;
    private final Date expires;
    private final Date lastRefresh;
    private final Set<String> permissions;
    private final AccessTokenSource source;
    private final String token;
    private final String userId;

    static {
        DEFAULT_EXPIRATION_TIME = AccessToken.MAX_DATE = new Date(Long.MAX_VALUE);
        DEFAULT_LAST_REFRESH_TIME = new Date();
        DEFAULT_ACCESS_TOKEN_SOURCE = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        CREATOR = new Parcelable.Creator(){

            public AccessToken createFromParcel(Parcel parcel) {
                return new AccessToken(parcel);
            }

            public AccessToken[] newArray(int n2) {
                return new AccessToken[n2];
            }
        };
    }

    AccessToken(Parcel parcel) {
        this.expires = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.permissions = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.declinedPermissions = Collections.unmodifiableSet(new HashSet(arrayList));
        this.token = parcel.readString();
        this.source = AccessTokenSource.valueOf(parcel.readString());
        this.lastRefresh = new Date(parcel.readLong());
        this.applicationId = parcel.readString();
        this.userId = parcel.readString();
    }

    /*
     * Enabled aggressive block sorting
     */
    public AccessToken(String string2, String string3, String string4, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2) {
        Validate.notNullOrEmpty(string2, "accessToken");
        Validate.notNullOrEmpty(string3, "applicationId");
        Validate.notNullOrEmpty(string4, "userId");
        if (date == null) {
            date = DEFAULT_EXPIRATION_TIME;
        }
        this.expires = date;
        collection = collection != null ? new HashSet<String>(collection) : new HashSet<String>();
        this.permissions = Collections.unmodifiableSet(collection);
        collection = collection2 != null ? new HashSet<String>(collection2) : new HashSet<String>();
        this.declinedPermissions = Collections.unmodifiableSet(collection);
        this.token = string2;
        if (accessTokenSource == null) {
            accessTokenSource = DEFAULT_ACCESS_TOKEN_SOURCE;
        }
        this.source = accessTokenSource;
        if (date2 == null) {
            date2 = DEFAULT_LAST_REFRESH_TIME;
        }
        this.lastRefresh = date2;
        this.applicationId = string3;
        this.userId = string4;
    }

    private void appendPermissions(StringBuilder stringBuilder) {
        stringBuilder.append(" permissions:");
        if (this.permissions == null) {
            stringBuilder.append("null");
            return;
        }
        stringBuilder.append("[");
        stringBuilder.append(TextUtils.join((CharSequence)", ", this.permissions));
        stringBuilder.append("]");
    }

    private static AccessToken createFromBundle(List<String> list, Bundle object, AccessTokenSource accessTokenSource, Date date, String string2) {
        String string3 = object.getString("access_token");
        date = Utility.getBundleLongAsDate((Bundle)object, "expires_in", date);
        object = object.getString("user_id");
        if (Utility.isNullOrEmpty(string3) || date == null) {
            return null;
        }
        return new AccessToken(string3, string2, (String)object, list, null, accessTokenSource, date, new Date());
    }

    static AccessToken createFromJSONObject(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt("version") > 1) {
            throw new FacebookException("Unknown AccessToken serialization format.");
        }
        String string2 = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        AccessTokenSource accessTokenSource = AccessTokenSource.valueOf(jSONObject.getString("source"));
        return new AccessToken(string2, jSONObject.getString("application_id"), jSONObject.getString("user_id"), Utility.jsonArrayToStringList(jSONArray), Utility.jsonArrayToStringList(jSONArray2), accessTokenSource, date, date2);
    }

    static AccessToken createFromLegacyCache(Bundle bundle) {
        String string2;
        List<String> list = AccessToken.getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> list2 = AccessToken.getPermissionsFromBundle(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        String string3 = string2 = LegacyTokenHelper.getApplicationId(bundle);
        if (Utility.isNullOrEmpty(string2)) {
            string3 = FacebookSdk.getApplicationId();
        }
        string2 = LegacyTokenHelper.getToken(bundle);
        Object object = Utility.awaitGetGraphMeRequestWithCache(string2);
        try {
            object = object.getString("id");
        }
        catch (JSONException var0_1) {
            return null;
        }
        return new AccessToken(string2, string3, (String)object, list, list2, LegacyTokenHelper.getSource(bundle), LegacyTokenHelper.getDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), LegacyTokenHelper.getDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    }

    public static void createFromNativeLinkingIntent(Intent intent, String string2, AccessTokenCreationCallback accessTokenCreationCallback) {
        Validate.notNull((Object)intent, "intent");
        if (intent.getExtras() == null) {
            accessTokenCreationCallback.onError(new FacebookException("No extras found on intent"));
            return;
        }
        String string3 = (intent = new Bundle(intent.getExtras())).getString("user_id");
        if (string3 == null || string3.isEmpty()) {
            Utility.getGraphMeRequestWithCacheAsync(intent.getString("access_token"), new Utility.GraphMeRequestWithCacheCallback((Bundle)intent, accessTokenCreationCallback, string2){
                final /* synthetic */ AccessTokenCreationCallback val$accessTokenCallback;
                final /* synthetic */ String val$applicationId;
                final /* synthetic */ Bundle val$extras;

                @Override
                public void onFailure(FacebookException facebookException) {
                    this.val$accessTokenCallback.onError(facebookException);
                }

                @Override
                public void onSuccess(JSONObject object) {
                    try {
                        object = object.getString("id");
                        this.val$extras.putString("user_id", (String)object);
                        this.val$accessTokenCallback.onSuccess(AccessToken.createFromBundle(null, this.val$extras, AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date(), this.val$applicationId));
                        return;
                    }
                    catch (JSONException var1_2) {
                        this.val$accessTokenCallback.onError(new FacebookException("Unable to generate access token due to missing user id"));
                        return;
                    }
                }
            });
            return;
        }
        accessTokenCreationCallback.onSuccess(AccessToken.createFromBundle(null, (Bundle)intent, AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date(), string2));
    }

    @SuppressLint(value={"FieldGetter"})
    static AccessToken createFromRefresh(AccessToken accessToken, Bundle object) {
        if (accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_WEB && accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_NATIVE && accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_SERVICE) {
            throw new FacebookException("Invalid token source: " + (Object)((Object)accessToken.source));
        }
        Date date = Utility.getBundleLongAsDate((Bundle)object, "expires_in", new Date(0));
        if (Utility.isNullOrEmpty((String)(object = object.getString("access_token")))) {
            return null;
        }
        return new AccessToken((String)object, accessToken.applicationId, accessToken.getUserId(), accessToken.getPermissions(), accessToken.getDeclinedPermissions(), accessToken.source, date, new Date());
    }

    public static AccessToken getCurrentAccessToken() {
        return AccessTokenManager.getInstance().getCurrentAccessToken();
    }

    static List<String> getPermissionsFromBundle(Bundle object, String string2) {
        if ((object = object.getStringArrayList(string2)) == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(object));
    }

    public static void setCurrentAccessToken(AccessToken accessToken) {
        AccessTokenManager.getInstance().setCurrentAccessToken(accessToken);
    }

    private String tokenToString() {
        if (this.token == null) {
            return "null";
        }
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.token;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof AccessToken)) {
            return false;
        }
        object = (AccessToken)object;
        if (!this.expires.equals(object.expires)) return false;
        if (!this.permissions.equals(object.permissions)) return false;
        if (!this.declinedPermissions.equals(object.declinedPermissions)) return false;
        if (!this.token.equals(object.token)) return false;
        if (this.source != object.source) return false;
        if (!this.lastRefresh.equals(object.lastRefresh)) return false;
        if (this.applicationId == null) {
            if (object.applicationId != null) return false;
        } else if (!this.applicationId.equals(object.applicationId)) return false;
        if (this.userId.equals(object.userId)) return true;
        return false;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public Set<String> getDeclinedPermissions() {
        return this.declinedPermissions;
    }

    public Date getExpires() {
        return this.expires;
    }

    public Date getLastRefresh() {
        return this.lastRefresh;
    }

    public Set<String> getPermissions() {
        return this.permissions;
    }

    public AccessTokenSource getSource() {
        return this.source;
    }

    public String getToken() {
        return this.token;
    }

    public String getUserId() {
        return this.userId;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int hashCode() {
        int n2;
        int n3 = this.expires.hashCode();
        int n4 = this.permissions.hashCode();
        int n5 = this.declinedPermissions.hashCode();
        int n6 = this.token.hashCode();
        int n7 = this.source.hashCode();
        int n8 = this.lastRefresh.hashCode();
        if (this.applicationId == null) {
            n2 = 0;
            do {
                return (((((((n3 + 527) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n2) * 31 + this.userId.hashCode();
                break;
            } while (true);
        }
        n2 = this.applicationId.hashCode();
        return (((((((n3 + 527) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n2) * 31 + this.userId.hashCode();
    }

    public boolean isExpired() {
        return new Date().after(this.expires);
    }

    JSONObject toJSONObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", (Object)this.token);
        jSONObject.put("expires_at", this.expires.getTime());
        jSONObject.put("permissions", (Object)new JSONArray(this.permissions));
        jSONObject.put("declined_permissions", (Object)new JSONArray(this.declinedPermissions));
        jSONObject.put("last_refresh", this.lastRefresh.getTime());
        jSONObject.put("source", (Object)this.source.name());
        jSONObject.put("application_id", (Object)this.applicationId);
        jSONObject.put("user_id", (Object)this.userId);
        return jSONObject;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{AccessToken");
        stringBuilder.append(" token:").append(this.tokenToString());
        this.appendPermissions(stringBuilder);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeLong(this.expires.getTime());
        parcel.writeStringList(new ArrayList<String>(this.permissions));
        parcel.writeStringList(new ArrayList<String>(this.declinedPermissions));
        parcel.writeString(this.token);
        parcel.writeString(this.source.name());
        parcel.writeLong(this.lastRefresh.getTime());
        parcel.writeString(this.applicationId);
        parcel.writeString(this.userId);
    }

    public static interface AccessTokenCreationCallback {
        public void onError(FacebookException var1);

        public void onSuccess(AccessToken var1);
    }

}

