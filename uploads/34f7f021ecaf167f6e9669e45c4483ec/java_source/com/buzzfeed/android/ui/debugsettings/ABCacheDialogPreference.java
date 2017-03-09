/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 */
package com.buzzfeed.android.ui.debugsettings;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import com.buzzfeed.android.data.preferences.ABCacheTimeoutPreference;
import com.buzzfeed.android.data.preferences.BasePreference;
import com.buzzfeed.android.ui.debugsettings.AbstractEnumDialogPreference;

public class ABCacheDialogPreference
extends AbstractEnumDialogPreference<ABCacheTimeoutPreference.TimeOut> {
    public ABCacheDialogPreference(Context context) {
        super(context);
    }

    public ABCacheDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ABCacheDialogPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @RequiresApi(api=21)
    public ABCacheDialogPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    protected ABCacheTimeoutPreference.TimeOut[] getEnumValues() {
        return ABCacheTimeoutPreference.TimeOut.values();
    }

    @Override
    protected void initialize() {
        super.initialize();
        this.setTitle((CharSequence)"A/B Cache TimeOut");
    }

    @Override
    protected BasePreference<ABCacheTimeoutPreference.TimeOut> onCreatePreference(Context context) {
        return new ABCacheTimeoutPreference(context);
    }
}

