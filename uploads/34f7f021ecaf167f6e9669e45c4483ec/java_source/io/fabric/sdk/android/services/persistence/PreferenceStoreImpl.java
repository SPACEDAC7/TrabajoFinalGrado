/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Build
 *  android.os.Build$VERSION
 *  io.fabric.sdk.android.services.persistence.PreferenceStore
 */
package io.fabric.sdk.android.services.persistence;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.persistence.PreferenceStore;

public class PreferenceStoreImpl
implements PreferenceStore {
    private final Context context;
    private final String preferenceName;
    private final SharedPreferences sharedPreferences;

    public PreferenceStoreImpl(Context context, String string2) {
        if (context == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.context = context;
        this.preferenceName = string2;
        this.sharedPreferences = this.context.getSharedPreferences(this.preferenceName, 0);
    }

    @Deprecated
    public PreferenceStoreImpl(Kit kit) {
        this(kit.getContext(), kit.getClass().getName());
    }

    public SharedPreferences.Editor edit() {
        return this.sharedPreferences.edit();
    }

    public SharedPreferences get() {
        return this.sharedPreferences;
    }

    @TargetApi(value=9)
    public boolean save(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
            return true;
        }
        return editor.commit();
    }
}

