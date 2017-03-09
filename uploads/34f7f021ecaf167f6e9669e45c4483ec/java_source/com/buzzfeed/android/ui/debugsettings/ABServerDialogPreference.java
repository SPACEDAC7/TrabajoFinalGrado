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
import com.buzzfeed.android.data.preferences.ABExperimentServerPreference;
import com.buzzfeed.android.data.preferences.BasePreference;
import com.buzzfeed.android.ui.debugsettings.AbstractEnumDialogPreference;
import com.buzzfeed.androidabframework.util.Environment;

public class ABServerDialogPreference
extends AbstractEnumDialogPreference<Environment> {
    public ABServerDialogPreference(Context context) {
        super(context);
    }

    public ABServerDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ABServerDialogPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @RequiresApi(api=21)
    public ABServerDialogPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    protected Environment[] getEnumValues() {
        return Environment.values();
    }

    @Override
    protected void initialize() {
        super.initialize();
        this.setTitle((CharSequence)"A/B Server");
    }

    @Override
    protected BasePreference<Environment> onCreatePreference(Context context) {
        return new ABExperimentServerPreference(context);
    }
}

