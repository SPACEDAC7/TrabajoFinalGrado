/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.c.a.e
 */
package com.google.ads.interactivemedia.v3.api.player;

import com.google.c.a.e;

public final class VideoProgressUpdate {
    public static final VideoProgressUpdate VIDEO_TIME_NOT_READY = new VideoProgressUpdate(-1, -1);
    private float currentTime;
    private float duration;

    public VideoProgressUpdate(long l2, long l3) {
        this.currentTime = (float)l2 / 1000.0f;
        this.duration = (float)l3 / 1000.0f;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (VideoProgressUpdate)object;
        if (Float.floatToIntBits(this.currentTime) != Float.floatToIntBits(object.currentTime)) {
            return false;
        }
        if (Float.floatToIntBits(this.duration) == Float.floatToIntBits(object.duration)) return true;
        return false;
    }

    public float getCurrentTime() {
        return this.currentTime;
    }

    public float getDuration() {
        return this.duration;
    }

    public int hashCode() {
        return e.a((Object[])new Object[]{Float.valueOf(this.currentTime), Float.valueOf(this.duration)});
    }

    public String toString() {
        float f2 = this.currentTime;
        float f3 = this.duration;
        return new StringBuilder(75).append("VideoProgressUpdate [currentTime=").append(f2).append(", duration=").append(f3).append("]").toString();
    }
}

