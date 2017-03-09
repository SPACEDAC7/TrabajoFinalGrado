/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import com.buzzfeed.android.data.preferences.StringPreference;

public final class ServerPreference
extends StringPreference {
    public ServerPreference(Context context) {
        super(context);
    }

    @Override
    protected String getDefaultValue(Context context) {
        return context.getString(2131296675);
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296922;
    }
}

