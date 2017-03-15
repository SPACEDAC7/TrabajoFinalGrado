/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.ObjectAnimator
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.MediaController
 *  android.widget.MediaController$MediaPlayerControl
 *  android.widget.SeekBar
 *  android.widget.SeekBar$OnSeekBarChangeListener
 *  android.widget.TextView
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.SeekBar;
import android.widget.TextView;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.view.BaseControllerView;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.toolkit.util.DurationFormatUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;

public class PlayerControlFooterView
extends BaseControllerView {
    private static final long CONTROL_VISIBILITY_ANIMATION_DURATION = 500;
    private static final long DEFAULT_POLL_INTERVAL = 1000;
    private static final String TAG = LogUtil.makeLogTag(PlayerControlFooterView.class);
    private boolean mAllowScrubbing = true;
    private TextView mCurrentTime;
    private TextView mEndTime;
    private boolean mIsDragging;
    private boolean mIsPausedForSeek;
    private boolean mIsPlaying;
    private boolean mIsShowing;
    private boolean mIsUpdating;
    private OnSeekBarChangeListener mOnSeekBarChangeListener;
    private ImageView mPlayPauseButton;
    private SeekBar mSeekBar;

    public PlayerControlFooterView(Context context) {
        super(context);
    }

    public PlayerControlFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public PlayerControlFooterView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private ObjectAnimator animateVisibility(boolean bl) {
        float f2;
        float f3;
        if (bl) {
            this.setVisibility(0);
            f3 = 1.0f;
            f2 = 0.0f;
        } else {
            f3 = 0.0f;
            f2 = 1.0f;
        }
        this.mIsShowing = bl;
        return ObjectAnimator.ofFloat((Object)((Object)this), (String)"alpha", (float[])new float[]{f2, f3}).setDuration(500);
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
                PlayerControlFooterView.this.onPlayPauseClicked();
            }
        });
    }

    private void onPlayPauseClicked() {
        this.performPauseResumeAction();
        this.updatePlayPauseDrawablesIfNeeded();
        this.startProgressUpdates();
    }

    private void updateCounters(int n2, int n3) {
        this.mCurrentTime.setText((CharSequence)DurationFormatUtils.formatMs(n2));
        this.mEndTime.setText((CharSequence)String.format("-%s", DurationFormatUtils.formatMs(n3 - n2)));
    }

    private void updatePlayPauseDrawables() {
        if (this.mIsPlaying) {
            this.mPlayPauseButton.setImageResource(R.drawable.ic_player_pause);
            return;
        }
        this.mPlayPauseButton.setImageResource(R.drawable.ic_player_play);
    }

    private void updatePlayPauseDrawablesIfNeeded() {
        if (this.mPlayerControl == null || this.mPlayerControl.isPlaying() == this.mIsPlaying) {
            return;
        }
        this.mIsPlaying = this.mPlayerControl.isPlaying();
        this.updatePlayPauseDrawables();
    }

    public ObjectAnimator animateIn() {
        return this.animateVisibility(true);
    }

    public ObjectAnimator animateOut() {
        return this.animateVisibility(false);
    }

    @Override
    protected long getProgressPollInterval() {
        return 1000;
    }

    @Override
    public void hide() {
        this.animateOut().start();
    }

    protected void inflateView() {
        PlayerControlFooterView.inflate((Context)this.getContext(), (int)R.layout.view_player_controller, (ViewGroup)this);
    }

    @Override
    protected void initialize() {
        super.initialize();
        this.inflateView();
        this.mSeekBar = (SeekBar)UIUtil.findView((View)this, R.id.video_view_controller_progress);
        this.mEndTime = (TextView)UIUtil.findView((View)this, R.id.video_view_controller_remaining_time);
        this.mCurrentTime = (TextView)UIUtil.findView((View)this, R.id.video_view_controller_elapsed_time);
        this.mPlayPauseButton = (ImageView)UIUtil.findView((View)this, R.id.video_view_controller_play_pause);
        this.mSeekBar.setMax(1000);
        this.configureListeners();
        this.configureDrawables();
        if (this.getVisibility() != 0) {
            this.setAlpha(0.0f);
            this.mIsShowing = false;
            return;
        }
        this.mIsShowing = true;
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    @Override
    protected void onDetachedFromWindow() {
        this.clearAnimation();
        super.onDetachedFromWindow();
    }

    @Override
    protected void onProgressPolled() {
        if (this.mPlayerControl == null || !this.mPlayerControl.isPlaying() || this.mIsDragging) {
            return;
        }
        int n2 = this.mPlayerControl.getCurrentPosition();
        int n3 = this.mPlayerControl.getDuration();
        int n4 = this.mPlayerControl.getBufferPercentage();
        this.mSeekBar.setSecondaryProgress(n4 * 10);
        this.updateProgressPosition(n2, n3);
        this.updatePlayPauseDrawablesIfNeeded();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean onSetAlpha(int n2) {
        boolean bl = n2 != 0;
        this.setEnabled(bl);
        if (bl) {
            this.startProgressUpdates();
            return super.onSetAlpha(n2);
        }
        this.stopProgressUpdates();
        return super.onSetAlpha(n2);
    }

    protected void onWindowVisibilityChanged(int n2) {
        super.onWindowVisibilityChanged(n2);
        if (n2 == 0) {
            this.updatePlayPauseDrawablesIfNeeded();
        }
    }

    public void setAllowScrubbing(boolean bl) {
        if (this.mAllowScrubbing == bl) {
            return;
        }
        this.mAllowScrubbing = bl;
        if (bl) {
            this.mSeekBar.getThumb().setAlpha(255);
            this.mSeekBar.setOnTouchListener(null);
            return;
        }
        this.mSeekBar.getThumb().setAlpha(0);
        this.mSeekBar.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    public void setEnabled(boolean bl) {
        super.setEnabled(bl);
        this.mSeekBar.setEnabled(bl);
        this.mSeekBar.setClickable(bl);
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener onSeekBarChangeListener) {
        this.mOnSeekBarChangeListener = onSeekBarChangeListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setPlayerControl(@Nullable MediaController.MediaPlayerControl mediaPlayerControl) {
        super.setPlayerControl(mediaPlayerControl);
        this.mIsPlaying = mediaPlayerControl != null ? mediaPlayerControl.isPlaying() : false;
        this.updatePlayPauseDrawables();
    }

    public void setProgressDrawable(int n2) {
        Drawable drawable2 = DrawableCompat.wrap(ContextCompat.getDrawable(this.getContext(), n2));
        this.mSeekBar.setProgressDrawable(drawable2);
    }

    @Override
    public void show() {
        this.animateIn().start();
    }

    @Override
    public void startProgressUpdates() {
        if (this.mIsUpdating) {
            return;
        }
        this.updatePlayPauseDrawablesIfNeeded();
        super.startProgressUpdates();
        this.mIsUpdating = true;
    }

    @Override
    public void stopProgressUpdates() {
        if (!this.mIsUpdating) {
            return;
        }
        this.updatePlayPauseDrawablesIfNeeded();
        super.stopProgressUpdates();
        this.mIsUpdating = false;
    }

    public void updateProgressPosition(int n2, int n3) {
        if (n3 > 0) {
            int n4 = n2 * 1000 / n3;
            this.mSeekBar.setProgress(n4);
        }
        this.updateCounters(n2, n3);
    }

    private final class InternalSeekChangeListener
    implements SeekBar.OnSeekBarChangeListener {
        private int mSeekPosition;

        private InternalSeekChangeListener() {
        }

        public void onProgressChanged(SeekBar seekBar, int n2, boolean bl) {
            if (bl && PlayerControlFooterView.this.mPlayerControl != null) {
                int n3 = PlayerControlFooterView.this.mPlayerControl.getDuration();
                this.mSeekPosition = n3 * n2 / 1000;
                PlayerControlFooterView.this.updateCounters(this.mSeekPosition, n3);
            }
            if (PlayerControlFooterView.this.mOnSeekBarChangeListener != null) {
                PlayerControlFooterView.this.mOnSeekBarChangeListener.onProgressChanged(seekBar, n2, bl);
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            PlayerControlFooterView.this.mIsDragging = true;
            boolean bl = false;
            PlayerControlFooterView.this.stopProgressUpdates();
            boolean bl2 = bl;
            if (PlayerControlFooterView.this.mPlayerControl != null) {
                bl2 = bl;
                if (PlayerControlFooterView.this.mPlayerControl.isPlaying()) {
                    PlayerControlFooterView.this.mIsPausedForSeek = true;
                    bl2 = true;
                    PlayerControlFooterView.this.mPlayerControl.pause();
                }
            }
            if (PlayerControlFooterView.this.mOnSeekBarChangeListener != null && PlayerControlFooterView.this.mAllowScrubbing) {
                PlayerControlFooterView.this.mOnSeekBarChangeListener.onStartTrackingTouch(seekBar, bl2);
            }
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            boolean bl;
            PlayerControlFooterView.this.mIsDragging = false;
            boolean bl2 = bl = false;
            if (PlayerControlFooterView.this.mPlayerControl != null) {
                PlayerControlFooterView.this.mPlayerControl.seekTo(this.mSeekPosition);
                bl2 = bl;
                if (PlayerControlFooterView.this.mIsPausedForSeek) {
                    VideoTracker.getInstance().setPlayReason("scrub_end");
                    PlayerControlFooterView.this.mIsPausedForSeek = false;
                    bl2 = true;
                    PlayerControlFooterView.this.mPlayerControl.start();
                }
            }
            PlayerControlFooterView.this.startProgressUpdates();
            if (PlayerControlFooterView.this.mOnSeekBarChangeListener != null) {
                PlayerControlFooterView.this.mOnSeekBarChangeListener.onStopTrackingTouch(seekBar, bl2);
            }
        }
    }

    public static interface OnSeekBarChangeListener {
        public void onProgressChanged(SeekBar var1, int var2, boolean var3);

        public void onStartTrackingTouch(SeekBar var1, boolean var2);

        public void onStopTrackingTouch(SeekBar var1, boolean var2);
    }

}

