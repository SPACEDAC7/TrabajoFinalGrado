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
import com.buzzfeed.android.data.preferences.StringPreference;

public final class TestAdsPreference
extends StringPreference {
    public TestAdsPreference(Context context) {
        super(context);
    }

    @Override
    protected String getDefaultValue(Context context) {
        return Integer.toString(context.getResources().getInteger(2131689484));
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296924;
    }
}

