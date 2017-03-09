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

public final class CrashlyticsPreference
extends BooleanPreference {
    public CrashlyticsPreference(Context context) {
        super(context);
    }

    @Override
    protected Boolean getDefaultValue(Context context) {
        return context.getResources().getBoolean(2131623943);
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296908;
    }
}

