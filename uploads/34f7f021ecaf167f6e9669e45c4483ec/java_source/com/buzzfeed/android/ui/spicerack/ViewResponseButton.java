/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.android.ui.spicerack;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.buzzfeed.android.activity.SpicyActivity;

public class ViewResponseButton
extends RelativeLayout {
    public ViewResponseButton(Context context) {
        super(context);
        this.init();
    }

    public ViewResponseButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public ViewResponseButton(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    public ViewResponseButton(SpicyActivity spicyActivity, View.OnClickListener onClickListener) {
        super((Context)spicyActivity);
        this.init();
        this.findViewById(2131821005).setOnClickListener(onClickListener);
    }

    void init() {
        ViewResponseButton.inflate((Context)this.getContext(), (int)2130903209, (ViewGroup)this);
    }
}

