/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import com.buzzfeed.android.data.preferences.BooleanPreference;

public class LimitMobileDataPreference
extends BooleanPreference {
    public LimitMobileDataPreference(Context context) {
        super(context);
    }

    @Override
    protected Boolean getDefaultValue(Context context) {
        return true;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296914;
    }
}
