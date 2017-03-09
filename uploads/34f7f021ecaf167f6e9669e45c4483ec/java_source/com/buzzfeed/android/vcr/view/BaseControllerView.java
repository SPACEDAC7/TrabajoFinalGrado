/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.widget.FrameLayout
 *  android.widget.MediaController
 *  android.widget.MediaController$MediaPlayerControl
 */
package com.buzzfeed.android.vcr.view;

import android.content.Context;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.MediaController;
import com.buzzfeed.toolkit.util.Repeater;

public abstract class BaseControllerView
extends FrameLayout {
    private ClickListener mClickListener;
    @Nullable
    protected MediaController.MediaPlayerControl mPlayerControl;
    private Repeater mProgressUpdater = new Repeater();

    public BaseControllerView(Context context) {
        super(context);
        this.initialize();
    }

    public BaseControllerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseControllerView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @IntRange(from=50, to=1000)
    protected abstract long getProgressPollInterval();

    public abstract void hide();

    protected void initialize() {
        this.mProgressUpdater.setRepeatDelay(this.getProgressPollInterval());
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mProgressUpdater.setRepeatListener(new Repeater.RepeatListener(){

            @Override
            public void onRepeat() {
                BaseControllerView.this.onProgressPolled();
            }
        });
    }

    protected void onDetachedFromWindow() {
        this.stopProgressUpdates();
        this.mProgressUpdater.setRepeatListener(null);
        super.onDetachedFromWindow();
    }

    protected abstract void onProgressPolled();

    /*
     * Enabled aggressive block sorting
     */
    protected void performPauseResumeAction() {
        if (this.mPlayerControl == null) return;
        {
            if (this.mPlayerControl.isPlaying()) {
                this.mPlayerControl.pause();
                if (this.mClickListener == null) return;
                {
                    this.mClickListener.onPauseClicked();
                    return;
                }
            } else {
                this.mPlayerControl.start();
                if (this.mClickListener == null) return;
                {
                    this.mClickListener.onPlayClicked();
                    return;
                }
            }
        }
    }

    public void setClickListener(ClickListener clickListener) {
        this.mClickListener = clickListener;
    }

    public void setPlayerControl(@Nullable MediaController.MediaPlayerControl mediaPlayerControl) {
        this.mPlayerControl = mediaPlayerControl;
        this.startProgressUpdates();
    }

    public abstract void show();

    public void startProgressUpdates() {
        if (!this.mProgressUpdater.isRunning()) {
            this.mProgressUpdater.start();
            this.onProgressPolled();
        }
    }

    public void stopProgressUpdates() {
        if (this.mProgressUpdater.isRunning()) {
            this.mProgressUpdater.stop();
        }
    }

    public static interface ClickListener {
        public void onPauseClicked();

        public void onPlayClicked();
    }

}

