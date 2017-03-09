/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.os.Parcelable
 */
package com.facebook;

import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.ProfileCache;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;

final class ProfileManager {
    static final String ACTION_CURRENT_PROFILE_CHANGED = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
    static final String EXTRA_NEW_PROFILE = "com.facebook.sdk.EXTRA_NEW_PROFILE";
    static final String EXTRA_OLD_PROFILE = "com.facebook.sdk.EXTRA_OLD_PROFILE";
    private static volatile ProfileManager instance;
    private Profile currentProfile;
    private final LocalBroadcastManager localBroadcastManager;
    private final ProfileCache profileCache;

    ProfileManager(LocalBroadcastManager localBroadcastManager, ProfileCache profileCache) {
        Validate.notNull(localBroadcastManager, "localBroadcastManager");
        Validate.notNull(profileCache, "profileCache");
        this.localBroadcastManager = localBroadcastManager;
        this.profileCache = profileCache;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static ProfileManager getInstance() {
        if (instance == null) {
            synchronized (ProfileManager.class) {
                if (instance == null) {
                    instance = new ProfileManager(LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()), new ProfileCache());
                }
            }
        }
        return instance;
    }

    private void sendCurrentProfileChangedBroadcast(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", (Parcelable)profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", (Parcelable)profile2);
        this.localBroadcastManager.sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCurrentProfile(Profile profile, boolean bl) {
        Profile profile2 = this.currentProfile;
        this.currentProfile = profile;
        if (bl) {
            if (profile != null) {
                this.profileCache.save(profile);
            } else {
                this.profileCache.clear();
            }
        }
        if (!Utility.areObjectsEqual(profile2, profile)) {
            this.sendCurrentProfileChangedBroadcast(profile2, profile);
        }
    }

    Profile getCurrentProfile() {
        return this.currentProfile;
    }

    boolean loadCurrentProfile() {
        boolean bl = false;
        Profile profile = this.profileCache.load();
        if (profile != null) {
            this.setCurrentProfile(profile, false);
            bl = true;
        }
        return bl;
    }

    void setCurrentProfile(Profile profile) {
        this.setCurrentProfile(profile, true);
    }
}

