/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.ViewGroup
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.showx.showpage.ui.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.buzzfeed.showx.R;

public class InstallAppView
extends RelativeLayout {
    public InstallAppView(Context context) {
        super(context);
        this.init(context);
    }

    public InstallAppView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init(context);
    }

    public InstallAppView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init(context);
    }

    @TargetApi(value=21)
    public InstallAppView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.init(context);
    }

    private void init(Context context) {
        InstallAppView.inflate((Context)context, (int)R.layout.install_app_layout, (ViewGroup)this);
    }
}

