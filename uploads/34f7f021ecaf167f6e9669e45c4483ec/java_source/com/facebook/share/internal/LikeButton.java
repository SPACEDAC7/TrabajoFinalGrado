/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 */
package com.facebook.share.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.facebook.FacebookButtonBase;
import com.facebook.R;

public class LikeButton
extends FacebookButtonBase {
    public LikeButton(Context context, boolean bl) {
        super(context, null, 0, 0, "fb_like_button_create", 0);
        this.setSelected(bl);
    }

    private void updateForLikeStatus() {
        if (this.isSelected()) {
            this.setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            this.setText((CharSequence)this.getResources().getString(R.string.com_facebook_like_button_liked));
            return;
        }
        this.setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_icon, 0, 0, 0);
        this.setText((CharSequence)this.getResources().getString(R.string.com_facebook_like_button_not_liked));
    }

    @Override
    protected void configureButton(Context context, AttributeSet attributeSet, int n2, int n3) {
        super.configureButton(context, attributeSet, n2, n3);
        this.updateForLikeStatus();
    }

    @Override
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_like;
    }

    public void setSelected(boolean bl) {
        super.setSelected(bl);
        this.updateForLikeStatus();
    }
}

