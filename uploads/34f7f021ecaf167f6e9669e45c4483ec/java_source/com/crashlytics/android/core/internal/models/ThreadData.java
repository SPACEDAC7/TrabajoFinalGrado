/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core.internal.models;

public class ThreadData {
    public static final int IMPORTANCE_CRASHED_THREAD = 4;
    public final FrameData[] frames;
    public final int importance;
    public final String name;

    public ThreadData(int n2, FrameData[] arrframeData) {
        this(null, n2, arrframeData);
    }

    public ThreadData(String string2, int n2, FrameData[] arrframeData) {
        this.name = string2;
        this.importance = n2;
        this.frames = arrframeData;
    }

    public static final class FrameData {
        public final long address;
        public final String file;
        public final int importance;
        public final long offset;
        public final String symbol;

        public FrameData(long l2, int n2) {
            this(l2, "", n2);
        }

        public FrameData(long l2, String string2, int n2) {
            this(l2, string2, "", 0, n2);
        }

        public FrameData(long l2, String string2, String string3, long l3, int n2) {
            this.address = l2;
            this.symbol = string2;
            this.file = string3;
            this.offset = l3;
            this.importance = n2;
        }
    }

}

