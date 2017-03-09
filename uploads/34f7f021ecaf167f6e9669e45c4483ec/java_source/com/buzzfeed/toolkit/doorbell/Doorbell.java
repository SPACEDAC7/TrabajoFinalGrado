/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.toolkit.doorbell;

import android.content.Context;
import com.buzzfeed.toolkit.doorbell.StorageProvider;
import java.util.Random;
import java.util.UUID;

public class Doorbell {
    private static final long POUND_RANGE = 3000000000L;
    private static final long POUND_START = 22000000000L;
    private static Random sRandom = new Random();
    private StorageProvider mPoundStorageProvider;
    private StorageProvider mUserStorageProvider;

    public Doorbell(Context context) {
        this.mUserStorageProvider = new StorageProvider(context.getApplicationContext(), "user");
        this.mPoundStorageProvider = new StorageProvider(context.getApplicationContext(), "pound");
    }

    private static String generatePoundId() {
        return Long.toString((sRandom.nextLong() % 3000000000L + 3000000000L) % 3000000000L + 22000000000L);
    }

    private static String generateUserIdentifier() {
        return UUID.randomUUID().toString();
    }

    private String getSavedPoundIdentifier() {
        return this.mPoundStorageProvider.getIdentifier();
    }

    private String getSavedUserIdentifier() {
        return this.mUserStorageProvider.getIdentifier();
    }

    private void storeUserIdentifier(String string2) {
        this.mUserStorageProvider.saveText(string2);
    }

    private void storeUserPoundIdentifier(String string2) {
        this.mPoundStorageProvider.saveText(string2);
    }

    public String getUserIdentifier() {
        String string2;
        String string3 = string2 = this.getSavedUserIdentifier();
        if (string2 == null) {
            string3 = Doorbell.generateUserIdentifier();
            this.storeUserIdentifier(string3);
        }
        return string3;
    }

    public long getUserPoundIdentifier() {
        String string2;
        String string3 = string2 = this.getSavedPoundIdentifier();
        if (string2 == null) {
            string3 = Doorbell.generatePoundId();
            this.storeUserPoundIdentifier(string3);
        }
        return Long.parseLong(string3);
    }
}

