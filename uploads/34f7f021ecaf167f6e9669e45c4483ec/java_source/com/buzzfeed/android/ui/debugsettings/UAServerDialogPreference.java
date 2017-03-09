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
import com.buzzfeed.android.data.preferences.BasePreference;
import com.buzzfeed.android.data.preferences.UAServerPreference;
import com.buzzfeed.android.ui.debugsettings.AbstractEnumDialogPreference;

public class UAServerDialogPreference
extends AbstractEnumDialogPreference<UAServerPreference.UAServer> {
    public UAServerDialogPreference(Context context) {
        super(context);
    }

    public UAServerDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UAServerDialogPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @RequiresApi(api=21)
    public UAServerDialogPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    protected UAServerPreference.UAServer[] getEnumValues() {
        return UAServerPreference.UAServer.values();
    }

    @Override
    protected void initialize() {
        super.initialize();
        this.setTitle((CharSequence)"UrbanAirship Server");
    }

    @Override
    protected BasePreference<UAServerPreference.UAServer> onCreatePreference(Context context) {
        return new UAServerPreference(context);
    }
}

