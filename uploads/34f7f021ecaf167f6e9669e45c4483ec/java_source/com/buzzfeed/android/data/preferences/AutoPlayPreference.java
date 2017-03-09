/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import com.buzzfeed.android.data.preferences.StringPreference;

public class AutoPlayPreference
extends StringPreference {
    public AutoPlayPreference(Context context) {
        super(context);
    }

    @Override
    protected String getDefaultValue(Context context) {
        return context.getString(2131296634);
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296906;
    }
}

