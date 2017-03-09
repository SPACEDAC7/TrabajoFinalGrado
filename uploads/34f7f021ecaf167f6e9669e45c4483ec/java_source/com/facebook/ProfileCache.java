/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.content.SharedPreferences;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;

final class ProfileCache {
    static final String CACHED_PROFILE_KEY = "com.facebook.ProfileManager.CachedProfile";
    static final String SHARED_PREFERENCES_NAME = "com.facebook.AccessTokenManager.SharedPreferences";
    private final SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    ProfileCache() {
    }

    void clear() {
        this.sharedPreferences.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }

    Profile load() {
        Object object = this.sharedPreferences.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (object != null) {
            try {
                object = new Profile(new JSONObject((String)object));
                return object;
            }
            catch (JSONException var1_2) {
                // empty catch block
            }
        }
        return null;
    }

    void save(Profile profile) {
        Validate.notNull(profile, "profile");
        profile = profile.toJSONObject();
        if (profile != null) {
            this.sharedPreferences.edit().putString("com.facebook.ProfileManager.CachedProfile", profile.toString()).apply();
        }
    }
}

