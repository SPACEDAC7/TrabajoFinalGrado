/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.LegacyTokenHelper;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;

class AccessTokenCache {
    static final String CACHED_ACCESS_TOKEN_KEY = "com.facebook.AccessTokenManager.CachedAccessToken";
    private final SharedPreferences sharedPreferences;
    private LegacyTokenHelper tokenCachingStrategy;
    private final SharedPreferencesTokenCachingStrategyFactory tokenCachingStrategyFactory;

    public AccessTokenCache() {
        this(FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new SharedPreferencesTokenCachingStrategyFactory());
    }

    AccessTokenCache(SharedPreferences sharedPreferences, SharedPreferencesTokenCachingStrategyFactory sharedPreferencesTokenCachingStrategyFactory) {
        this.sharedPreferences = sharedPreferences;
        this.tokenCachingStrategyFactory = sharedPreferencesTokenCachingStrategyFactory;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private AccessToken getCachedAccessToken() {
        AccessToken accessToken = null;
        String string2 = this.sharedPreferences.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string2 == null) return accessToken;
        try {
            return AccessToken.createFromJSONObject(new JSONObject(string2));
        }
        catch (JSONException jSONException) {
            return null;
        }
    }

    private AccessToken getLegacyAccessToken() {
        AccessToken accessToken = null;
        Bundle bundle = this.getTokenCachingStrategy().load();
        AccessToken accessToken2 = accessToken;
        if (bundle != null) {
            accessToken2 = accessToken;
            if (LegacyTokenHelper.hasTokenInformation(bundle)) {
                accessToken2 = AccessToken.createFromLegacyCache(bundle);
            }
        }
        return accessToken2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private LegacyTokenHelper getTokenCachingStrategy() {
        if (this.tokenCachingStrategy == null) {
            synchronized (this) {
                if (this.tokenCachingStrategy == null) {
                    this.tokenCachingStrategy = this.tokenCachingStrategyFactory.create();
                }
            }
        }
        return this.tokenCachingStrategy;
    }

    private boolean hasCachedAccessToken() {
        return this.sharedPreferences.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    private boolean shouldCheckLegacyToken() {
        return FacebookSdk.isLegacyTokenUpgradeSupported();
    }

    public void clear() {
        this.sharedPreferences.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (this.shouldCheckLegacyToken()) {
            this.getTokenCachingStrategy().clear();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public AccessToken load() {
        AccessToken accessToken;
        AccessToken accessToken2 = null;
        if (this.hasCachedAccessToken()) {
            return this.getCachedAccessToken();
        }
        if (!this.shouldCheckLegacyToken()) return accessToken2;
        accessToken2 = accessToken = this.getLegacyAccessToken();
        if (accessToken == null) return accessToken2;
        this.save(accessToken);
        this.getTokenCachingStrategy().clear();
        return accessToken;
    }

    public void save(AccessToken accessToken) {
        Validate.notNull(accessToken, "accessToken");
        try {
            accessToken = accessToken.toJSONObject();
            this.sharedPreferences.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.toString()).apply();
            return;
        }
        catch (JSONException var1_2) {
            return;
        }
    }

    static class SharedPreferencesTokenCachingStrategyFactory {
        SharedPreferencesTokenCachingStrategyFactory() {
        }

        public LegacyTokenHelper create() {
            return new LegacyTokenHelper(FacebookSdk.getApplicationContext());
        }
    }

}

