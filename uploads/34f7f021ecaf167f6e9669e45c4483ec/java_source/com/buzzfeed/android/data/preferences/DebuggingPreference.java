/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import android.content.res.Resources;
import com.buzzfeed.android.data.preferences.BooleanPreference;

public final class DebuggingPreference
extends BooleanPreference {
    public DebuggingPreference(Context context) {
        super(context);
    }

    @Override
    protected Boolean getDefaultValue(Context context) {
        return context.getResources().getBoolean(2131623944);
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296910;
    }
}

