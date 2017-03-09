/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageButton
 *  android.widget.LinearLayout
 */
package com.buzzfeed.spicerack.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.experiment.FixedShareBarVariant;

public class FixedShareBar
extends LinearLayout
implements View.OnClickListener {
    private ImageButton mFacebookButton;
    private FixedShareBarListener mFixedShareBarListener;
    private ImageButton mForumButton;
    private ImageButton mShareButton;

    public FixedShareBar(Context context) {
        super(context);
    }

    public FixedShareBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FixedShareBar(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onClick(View view) {
        if (this.mFixedShareBarListener == null) {
            return;
        }
        if (view == this.mForumButton) {
            this.mFixedShareBarListener.forumButtonClicked();
            return;
        }
        if (view == this.mFacebookButton) {
            this.mFixedShareBarListener.facebookButtonClicked();
            return;
        }
        if (view != this.mShareButton) return;
        this.mFixedShareBarListener.shareButtonClicked();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVariant(FixedShareBarVariant fixedShareBarVariant, FixedShareBarListener fixedShareBarListener) {
        Context context = this.getContext();
        int n2 = fixedShareBarVariant == FixedShareBarVariant.SolidButtons ? R.layout.view_fixed_share_bar_a_variant : R.layout.view_fixed_share_bar_b_variant;
        FixedShareBar.inflate((Context)context, (int)n2, (ViewGroup)this);
        this.mFixedShareBarListener = fixedShareBarListener;
        this.mForumButton = (ImageButton)this.findViewById(R.id.fixed_share_bar_button_forum);
        this.mFacebookButton = (ImageButton)this.findViewById(R.id.fixed_share_bar_button_facebook);
        this.mShareButton = (ImageButton)this.findViewById(R.id.fixed_share_bar_button_share);
        this.mForumButton.setOnClickListener((View.OnClickListener)this);
        this.mFacebookButton.setOnClickListener((View.OnClickListener)this);
        this.mShareButton.setOnClickListener((View.OnClickListener)this);
    }

    public static interface FixedShareBarListener {
        public void facebookButtonClicked();

        public void forumButtonClicked();

        public void shareButtonClicked();
    }

}

