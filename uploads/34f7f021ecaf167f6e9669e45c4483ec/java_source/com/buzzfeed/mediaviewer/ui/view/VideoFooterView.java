/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.FrameLayout
 *  android.widget.ImageButton
 *  android.widget.TextView
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.toolkit.util.UIUtil;

public class VideoFooterView
extends FrameLayout {
    private View mDivider;
    private TextView mRecipeTextView;
    private ImageButton mShareButton;

    public VideoFooterView(Context context) {
        this(context, null);
    }

    public VideoFooterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoFooterView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @TargetApi(value=21)
    public VideoFooterView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    protected void inflateView() {
        VideoFooterView.inflate((Context)this.getContext(), (int)R.layout.view_footer_layout, (ViewGroup)this);
    }

    protected void initialize() {
        this.inflateView();
        this.mDivider = UIUtil.findView((View)this, R.id.divider);
        this.mShareButton = (ImageButton)UIUtil.findView((View)this, R.id.share_button);
        this.mRecipeTextView = (TextView)UIUtil.findView((View)this, R.id.recipe_button);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDividerVisible(boolean bl) {
        View view = this.mDivider;
        int n2 = bl ? 0 : 8;
        view.setVisibility(n2);
    }

    public void setRecipeButtonClickListener(@Nullable View.OnClickListener onClickListener) {
        this.mRecipeTextView.setOnClickListener(onClickListener);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setRecipeButtonVisible(boolean bl) {
        TextView textView = this.mRecipeTextView;
        int n2 = bl ? 0 : 8;
        textView.setVisibility(n2);
    }

    public void setShareButtonClickListener(@Nullable View.OnClickListener onClickListener) {
        this.mShareButton.setOnClickListener(onClickListener);
    }
}

