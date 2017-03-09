/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

public class UserMetaData {
    public static final UserMetaData EMPTY = new UserMetaData();
    public final String email;
    public final String id;
    public final String name;

    public UserMetaData() {
        this(null, null, null);
    }

    public UserMetaData(String string2, String string3, String string4) {
        this.id = string2;
        this.name = string3;
        this.email = string4;
    }

    public boolean isEmpty() {
        if (this.id == null && this.name == null && this.email == null) {
            return true;
        }
        return false;
    }
}

