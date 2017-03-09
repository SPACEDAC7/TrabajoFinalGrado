/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.RelativeLayout
 *  android.widget.RelativeLayout$LayoutParams
 *  android.widget.TextView
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerView;
import com.buzzfeed.mediaviewer.ui.view.VideoHeaderView;

public class VideoContainerLandscapeView
extends VideoContainerView {
    public VideoContainerLandscapeView(Context context) {
        super(context);
    }

    public VideoContainerLandscapeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoContainerLandscapeView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    public VideoContainerLandscapeView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    private void anchorHeaderToRightOfBackButton() {
        Resources resources = this.getResources();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(1, R.id.closeButton);
        int n2 = resources.getDimensionPixelSize(R.dimen.padding_large);
        layoutParams.setMargins(0, n2, n2, 0);
        this.mHeaderView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.mFitSystemContainer.addView((View)this.mHeaderView);
        ((RelativeLayout.LayoutParams)this.mHeaderView.getTitleTextView().getLayoutParams()).topMargin = (int)TypedValue.applyDimension((int)1, (float)4.0f, (DisplayMetrics)this.getResources().getDisplayMetrics());
    }

    @Override
    protected void initialize(Context context) {
        super.initialize(context);
        this.anchorHeaderToRightOfBackButton();
        this.anchorFooterToBottom();
    }

    @Override
    protected void setupHeaderAndFooterViewsIfNeeded() {
    }
}

