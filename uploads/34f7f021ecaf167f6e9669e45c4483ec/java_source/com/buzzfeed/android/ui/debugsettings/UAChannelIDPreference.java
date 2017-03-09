/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.preference.Preference
 *  android.util.AttributeSet
 */
package com.buzzfeed.android.ui.debugsettings;

import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;

public class UAChannelIDPreference
extends Preference {
    private String mChannelId;

    public UAChannelIDPreference(Context context) {
        super(context);
        this.initialize();
    }

    public UAChannelIDPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public UAChannelIDPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @RequiresApi(api=21)
    public UAChannelIDPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    private void initialize() {
        this.setTitle((CharSequence)"UA Channel ID");
        this.mChannelId = UAirship.shared().getPushManager().getChannelId();
        this.setSummary((CharSequence)this.mChannelId);
    }

    private void shareChannelId() {
        Context context = this.getContext();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", "Urban Airship channel id : " + this.mChannelId);
        intent.setType("text/plain");
        context.startActivity(Intent.createChooser((Intent)intent, (CharSequence)"UA Share Channel Id"));
    }

    protected void onClick() {
        super.onClick();
        this.shareChannelId();
    }
}

