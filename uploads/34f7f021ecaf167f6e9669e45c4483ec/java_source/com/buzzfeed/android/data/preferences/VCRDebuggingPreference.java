/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import com.buzzfeed.android.data.preferences.BooleanPreference;

public class VCRDebuggingPreference
extends BooleanPreference {
    public VCRDebuggingPreference(Context context) {
        super(context);
    }

    @Override
    protected Boolean getDefaultValue(Context context) {
        return false;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296929;
    }
}

