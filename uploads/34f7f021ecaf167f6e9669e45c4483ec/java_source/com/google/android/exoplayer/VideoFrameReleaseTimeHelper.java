/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.view.Display
 *  android.view.WindowManager
 *  com.google.android.exoplayer.VideoFrameReleaseTimeHelper$VSyncSampler
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer.VideoFrameReleaseTimeHelper;

/*
 * Exception performing whole class analysis ignored.
 */
@TargetApi(value=16)
public final class VideoFrameReleaseTimeHelper {
    private static final long CHOREOGRAPHER_SAMPLE_DELAY_MILLIS = 500;
    private static final long MAX_ALLOWED_DRIFT_NS = 20000000;
    private static final int MIN_FRAMES_FOR_ADJUSTMENT = 6;
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    private long adjustedLastFrameTimeNs;
    private long frameCount;
    private boolean haveSync;
    private long lastFramePresentationTimeUs;
    private long pendingAdjustedFrameTimeNs;
    private long syncFramePresentationTimeNs;
    private long syncUnadjustedReleaseTimeNs;
    private final boolean useDefaultDisplayVsync;
    private final long vsyncDurationNs;
    private final long vsyncOffsetNs;
    private final VSyncSampler vsyncSampler;

    public VideoFrameReleaseTimeHelper() {
        this(-1.0f, false);
    }

    private VideoFrameReleaseTimeHelper(float f2, boolean bl) {
        this.useDefaultDisplayVsync = bl;
        if (bl) {
            this.vsyncSampler = VSyncSampler.getInstance();
            this.vsyncDurationNs = (long)(1.0E9 / (double)f2);
            this.vsyncOffsetNs = this.vsyncDurationNs * 80 / 100;
            return;
        }
        this.vsyncSampler = null;
        this.vsyncDurationNs = -1;
        this.vsyncOffsetNs = -1;
    }

    public VideoFrameReleaseTimeHelper(Context context) {
        this(VideoFrameReleaseTimeHelper.getDefaultDisplayRefreshRate(context), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static long closestVsync(long l2, long l3, long l4) {
        long l5 = l3 + l4 * ((l2 - l3) / l4);
        if (l2 <= l5) {
            l3 = l5 - l4;
        } else {
            l3 = l5;
            l5 += l4;
        }
        if (l5 - l2 < l2 - l3) {
            return l5;
        }
        return l3;
    }

    private static float getDefaultDisplayRefreshRate(Context context) {
        return ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }

    private boolean isDriftTooLarge(long l2, long l3) {
        long l4 = this.syncFramePresentationTimeNs;
        if (Math.abs(l3 - this.syncUnadjustedReleaseTimeNs - (l2 - l4)) > 20000000) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public long adjustReleaseTime(long l2, long l3) {
        long l4;
        long l5;
        long l6 = l5 = l2 * 1000;
        long l7 = l4 = l3;
        long l8 = l6;
        if (this.haveSync) {
            if (l2 != this.lastFramePresentationTimeUs) {
                ++this.frameCount;
                this.adjustedLastFrameTimeNs = this.pendingAdjustedFrameTimeNs;
            }
            if (this.frameCount >= 6) {
                l7 = (l5 - this.syncFramePresentationTimeNs) / this.frameCount;
                l8 = this.adjustedLastFrameTimeNs + l7;
                if (this.isDriftTooLarge(l8, l3)) {
                    this.haveSync = false;
                    l8 = l6;
                    l7 = l4;
                } else {
                    l7 = this.syncUnadjustedReleaseTimeNs + l8 - this.syncFramePresentationTimeNs;
                }
            } else {
                l7 = l4;
                l8 = l6;
                if (this.isDriftTooLarge(l5, l3)) {
                    this.haveSync = false;
                    l7 = l4;
                    l8 = l6;
                }
            }
        }
        if (!this.haveSync) {
            this.syncFramePresentationTimeNs = l5;
            this.syncUnadjustedReleaseTimeNs = l3;
            this.frameCount = 0;
            this.haveSync = true;
            this.onSynced();
        }
        this.lastFramePresentationTimeUs = l2;
        this.pendingAdjustedFrameTimeNs = l8;
        if (this.vsyncSampler != null && this.vsyncSampler.sampledVsyncTimeNs != 0) {
            return VideoFrameReleaseTimeHelper.closestVsync(l7, this.vsyncSampler.sampledVsyncTimeNs, this.vsyncDurationNs) - this.vsyncOffsetNs;
        }
        return l7;
    }

    public void disable() {
        if (this.useDefaultDisplayVsync) {
            this.vsyncSampler.removeObserver();
        }
    }

    public void enable() {
        this.haveSync = false;
        if (this.useDefaultDisplayVsync) {
            this.vsyncSampler.addObserver();
        }
    }

    protected void onSynced() {
    }
}

