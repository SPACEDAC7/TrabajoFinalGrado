/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 */
package com.buzzfeed.toolkit.util;

import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;

public class Repeater {
    static final long DEFAULT_REPEAT_DELAY = 100;
    private final Handler mDelayedHandler;
    @Nullable
    private RepeatListener mListener;
    private final PollRunnable mPollRunnable;
    private long mRepeatDelay = 100;
    private boolean mRepeaterRunning = false;

    public Repeater() {
        this.mDelayedHandler = new Handler();
        this.mPollRunnable = new PollRunnable();
    }

    @VisibleForTesting
    Repeater(Handler handler) {
        this.mDelayedHandler = handler;
        this.mPollRunnable = new PollRunnable();
    }

    @VisibleForTesting
    Repeater(Handler handler, PollRunnable pollRunnable) {
        this.mDelayedHandler = handler;
        this.mPollRunnable = pollRunnable;
    }

    public boolean isRunning() {
        return this.mRepeaterRunning;
    }

    public void setRepeatDelay(long l2) {
        this.mRepeatDelay = l2;
    }

    public void setRepeatListener(@Nullable RepeatListener repeatListener) {
        this.mListener = repeatListener;
    }

    public void start() {
        if (!this.mRepeaterRunning) {
            this.mRepeaterRunning = true;
            this.mPollRunnable.performPoll();
        }
    }

    public void stop() {
        this.mDelayedHandler.removeCallbacksAndMessages((Object)null);
        this.mRepeaterRunning = false;
    }

    class PollRunnable
    implements Runnable {
        PollRunnable() {
        }

        void performPoll() {
            Repeater.this.mDelayedHandler.postDelayed((Runnable)this, Repeater.this.mRepeatDelay);
        }

        @Override
        public void run() {
            if (Repeater.this.mListener != null) {
                Repeater.this.mListener.onRepeat();
            }
            if (Repeater.this.mRepeaterRunning) {
                this.performPoll();
            }
        }
    }

    public static interface RepeatListener {
        public void onRepeat();
    }

}

