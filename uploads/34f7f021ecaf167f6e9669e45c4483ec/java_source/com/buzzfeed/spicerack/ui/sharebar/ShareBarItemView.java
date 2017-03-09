/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 */
package com.buzzfeed.spicerack.ui.sharebar;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.sharebar.ShareBarItem;
import com.buzzfeed.toolkit.util.UIUtil;

public class ShareBarItemView
extends FrameLayout {
    public ShareBarItemView(Context context) {
        super(context);
        this.init();
    }

    public ShareBarItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public ShareBarItemView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    private void init() {
        ShareBarItemView.inflate((Context)this.getContext(), (int)R.layout.view_share_bar_item, (ViewGroup)this);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void populateFrom(ShareBarItem shareBarItem, boolean bl, boolean bl2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.getResources().getDimensionPixelSize(R.dimen.share_bar_height), 1.0f);
        int n2 = bl ? 0 : this.getResources().getDimensionPixelSize(R.dimen.share_bar_margin_half);
        int n3 = bl2 ? 0 : this.getResources().getDimensionPixelSize(R.dimen.share_bar_margin_half);
        layoutParams.setMargins(n2, 0, n3, 0);
        this.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.setBackgroundResource(shareBarItem.getBackgroundDrawableResource());
        ((ImageView)UIUtil.findView((View)this, R.id.view_share_bar_item_image)).setImageResource(shareBarItem.getImageResource());
    }
}

