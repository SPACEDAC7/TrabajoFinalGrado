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

public final class DebugTrackerPreference
extends BooleanPreference {
    public DebugTrackerPreference(Context context) {
        super(context);
    }

    @Override
    protected Boolean getDefaultValue(Context context) {
        return context.getResources().getBoolean(2131623945);
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296909;
    }
}

