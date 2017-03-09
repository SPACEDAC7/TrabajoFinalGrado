/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.os.Handler
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageView
 *  android.widget.MediaController
 *  android.widget.MediaController$MediaPlayerControl
 *  android.widget.SeekBar
 *  android.widget.SeekBar$OnSeekBarChangeListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.vcr.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.SeekBar;
import android.widget.TextView;
import com.buzzfeed.android.vcr.R;
import com.buzzfeed.android.vcr.view.BaseControllerView;
import com.buzzfeed.toolkit.util.DurationFormatUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.google.android.exoplayer.util.Util;

public class VCRControllerView
extends BaseControllerView {
    private static final long CONTROL_AUTO_HIDE_DELAY = 3000;
    private static final long CONTROL_VISIBILITY_ANIMATION_DURATION = 500;
    private static final long DEFAULT_POLL_INTERVAL = 1000;
    private static final String TAG = LogUtil.makeLogTag(VCRControllerView.class);
    @Nullable
    private ViewGroup mAnchorView;
    private TextView mCurrentTime;
    private TextView mEndTime;
    private boolean mIsDragging;
    private boolean mIsFromXml;
    private boolean mIsPausedForSeek;
    private boolean mIsShowing = false;
    private ImageView mPlayPauseButton;
    @Nullable
    private View mRootView;
    private SeekBar mSeekBar;
    private Handler mVisibilityHandler = new Handler();

    public VCRControllerView(Context context) {
        super(context);
    }

    public VCRControllerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VCRControllerView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mIsFromXml = true;
        this.makeControllerView();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void animateVisibility(boolean bl) {
        float f2 = 1.0f;
        if (this.mIsShowing == bl) return;
        if (this.isDetachedFromAnchor()) {
            return;
        }
        float f3 = bl ? 0.0f : 1.0f;
        this.setAlpha(f3);
        this.setVisibility(0);
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate((View)this);
        f3 = bl ? f2 : 0.0f;
        viewPropertyAnimatorCompat.alpha(f3).setDuration(500).setStartDelay(0).withLayer().start();
        if (bl) {
            this.startProgressUpdates();
        } else {
            this.stopProgressUpdates();
        }
        this.mIsShowing = bl;
    }

    private void attachToAnchorView() {
        if (this.mAnchorView == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        this.setVisibility(4);
        this.mAnchorView.addView((View)this, (ViewGroup.LayoutParams)layoutParams);
    }

    private void cancelHide() {
        this.mVisibilityHandler.removeCallbacksAndMessages((Object)null);
    }

    private void configureDrawables() {
        Drawable drawable2 = DrawableCompat.wrap(ContextCompat.getDrawable(this.getContext(), R.drawable.ic_player_knob));
        DrawableCompat.setTintList(drawable2, ContextCompat.getColorStateList(this.getContext(), R.color.buzzfeed_dark_pink));
        this.mSeekBar.setThumb(drawable2);
    }

    private void configureListeners() {
        this.mSeekBar.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener)new InternalSeekChangeListener());
        this.mPlayPauseButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                VCRControllerView.this.onPlayPauseClicked();
            }
        });
    }

    private boolean isDetachedFromAnchor() {
        if (!this.mIsFromXml && this.mAnchorView == null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void makeControllerView() {
        Context context = this.getContext();
        int n2 = R.layout.video_view_controller;
        VCRControllerView vCRControllerView = this.mIsFromXml ? this : null;
        this.mRootView = VCRControllerView.inflate((Context)context, (int)n2, (ViewGroup)vCRControllerView);
        this.mSeekBar = (SeekBar)UIUtil.findView(this.mRootView, R.id.video_view_controller_progress);
        this.mEndTime = (TextView)UIUtil.findView(this.mRootView, R.id.video_view_controller_remaining_time);
        this.mCurrentTime = (TextView)UIUtil.findView(this.mRootView, R.id.video_view_controller_elapsed_time);
        this.mPlayPauseButton = (ImageView)UIUtil.findView(this.mRootView, R.id.video_view_controller_play_pause);
        this.mSeekBar.setMax(1000);
        this.configureListeners();
        this.configureDrawables();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void maybeDetachFromAnchorView() {
        if (this.mAnchorView != null) {
            try {
                this.mAnchorView.removeView((View)this);
            }
            catch (IllegalArgumentException var1_1) {
                LogUtil.w(TAG, "Controls already removed from anchor.");
            }
            this.mIsShowing = false;
            this.stopProgressUpdates();
        }
    }

    private void onPlayPauseClicked() {
        this.show();
        this.performPauseResumeAction();
        this.startProgressUpdates();
    }

    private void updateCounters(int n2, int n3) {
        this.mCurrentTime.setText((CharSequence)DurationFormatUtils.formatMs(n2));
        this.mEndTime.setText((CharSequence)String.format("-%s", DurationFormatUtils.formatMs(n3 - n2)));
    }

    private void updatePlayPauseDrawables() {
        if (this.mRootView == null || this.mPlayerControl == null) {
            return;
        }
        if (this.mPlayerControl.isPlaying()) {
            this.mPlayPauseButton.setImageResource(R.drawable.ic_player_pause);
            return;
        }
        this.mPlayPauseButton.setImageResource(R.drawable.ic_player_play);
    }

    private void updateProgressPosition(int n2, int n3) {
        if (n3 > 0) {
            n2 = n2 * 1000 / n3;
            this.mSeekBar.setProgress(n2);
        }
    }

    @Override
    protected long getProgressPollInterval() {
        return 1000;
    }

    @Override
    public void hide() {
        this.hideDelayed(0);
    }

    public void hideDelayed(long l2) {
        this.cancelHide();
        this.mVisibilityHandler.postDelayed(new Runnable(){

            @Override
            public void run() {
                VCRControllerView.this.animateVisibility(false);
            }
        }, l2);
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    @Override
    protected void onDetachedFromWindow() {
        this.cancelHide();
        this.clearAnimation();
        super.onDetachedFromWindow();
    }

    @Override
    protected void onProgressPolled() {
        if (this.mRootView == null || this.mPlayerControl == null || this.mIsDragging) {
            return;
        }
        int n2 = this.mPlayerControl.getCurrentPosition();
        int n3 = this.mPlayerControl.getDuration();
        int n4 = this.mPlayerControl.getBufferPercentage();
        this.mSeekBar.setSecondaryProgress(n4 * 10);
        this.updateProgressPosition(n2, n3);
        this.updateCounters(n2, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAnchorView(@Nullable ViewGroup viewGroup) {
        if (this.mIsFromXml) {
            LogUtil.e(TAG, "Unable to set anchor. View was inflated from XML.");
            return;
        } else {
            if (Util.areEqual((Object)this.mAnchorView, (Object)viewGroup)) return;
            {
                this.clearAnimation();
                this.maybeDetachFromAnchorView();
                this.mAnchorView = viewGroup;
                if (this.mAnchorView == null) return;
                {
                    viewGroup = new FrameLayout.LayoutParams(-1, -1);
                    this.removeAllViews();
                    this.makeControllerView();
                    this.addView(this.mRootView, (ViewGroup.LayoutParams)viewGroup);
                    this.attachToAnchorView();
                    return;
                }
            }
        }
    }

    @Override
    public void show() {
        this.show(3000);
    }

    public void show(long l2) {
        this.animateVisibility(true);
        if (l2 > 0) {
            this.hideDelayed(l2);
            return;
        }
        this.cancelHide();
    }

    @Override
    public void startProgressUpdates() {
        super.startProgressUpdates();
        this.updatePlayPauseDrawables();
    }

    @Override
    public void stopProgressUpdates() {
        super.stopProgressUpdates();
        this.updatePlayPauseDrawables();
    }

    private final class InternalSeekChangeListener
    implements SeekBar.OnSeekBarChangeListener {
        private int mSeekPosition;

        private InternalSeekChangeListener() {
        }

        public void onProgressChanged(SeekBar seekBar, int n2, boolean bl) {
            if (!bl || VCRControllerView.this.mPlayerControl == null) {
                return;
            }
            int n3 = VCRControllerView.this.mPlayerControl.getDuration();
            this.mSeekPosition = n3 * n2 / 1000;
            VCRControllerView.this.updateCounters(this.mSeekPosition, n3);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            VCRControllerView.this.mIsDragging = true;
            VCRControllerView.this.stopProgressUpdates();
            if (VCRControllerView.this.mPlayerControl != null && VCRControllerView.this.mPlayerControl.isPlaying()) {
                VCRControllerView.this.mIsPausedForSeek = true;
                VCRControllerView.this.mPlayerControl.pause();
            }
            VCRControllerView.this.cancelHide();
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            VCRControllerView.this.mIsDragging = false;
            if (VCRControllerView.this.mPlayerControl != null) {
                VCRControllerView.this.mPlayerControl.seekTo(this.mSeekPosition);
                if (VCRControllerView.this.mIsPausedForSeek) {
                    VCRControllerView.this.mIsPausedForSeek = false;
                    VCRControllerView.this.mPlayerControl.start();
                }
            }
            VCRControllerView.this.startProgressUpdates();
            VCRControllerView.this.hideDelayed(3000);
        }
    }

}

