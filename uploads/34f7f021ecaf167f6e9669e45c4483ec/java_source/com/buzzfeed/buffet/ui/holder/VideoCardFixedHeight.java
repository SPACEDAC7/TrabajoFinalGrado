/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.ui.view.ForceAspectFrameLayout;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class VideoCardFixedHeight
extends VideoCard {
    private boolean mIsTablet;

    public VideoCardFixedHeight(View view) {
        super(view);
        this.mIsTablet = DeviceUtil.isTablet(view.getContext().getApplicationContext());
        this.configureFixedHeightVideoLayout(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void configureFixedHeightVideoLayout(View object) {
        object = (ViewGroup)UIUtil.findView((View)object, R.id.card_view);
        int n2 = UIUtil.getScreenHeight();
        int n3 = UIUtil.getActionBarHeight(object.getContext());
        int n4 = UIUtil.getStatusBarHeight(object.getContext());
        int n5 = UIUtil.findView((View)object, R.id.video_card_title_layout).getHeight();
        int n6 = UIUtil.findView((View)object, R.id.video_card_footer_layout).getHeight();
        object = (ForceAspectFrameLayout)((Object)UIUtil.findView((View)object, R.id.card_video_container));
        float f2 = this.mIsTablet ? 0.4f : 1.0f;
        object.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, Math.round((float)(n2 - (n3 + n4 + n5 + n6)) * f2)));
    }

    @Override
    protected void onConfigureContainerDimensions(float f2) {
        this.mCoverImageView.setAspectRatio(f2);
        this.updateVideoAspectRatio(f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void updateCoverImage() {
        if (this.mIsTablet) {
            super.updateCoverImage();
            return;
        } else {
            if (this.mVideoContent == null) return;
            {
                GlideUtils.loadImageStack(this.itemView.getContext(), this.mCoverImageView, this.mVideoContent.getThumbnailStack());
                return;
            }
        }
    }
}

