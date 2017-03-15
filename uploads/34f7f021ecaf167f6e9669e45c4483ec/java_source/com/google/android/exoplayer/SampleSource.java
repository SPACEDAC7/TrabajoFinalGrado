/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import java.io.IOException;

public interface SampleSource {
    public static final int END_OF_STREAM = -1;
    public static final int FORMAT_READ = -4;
    public static final int NOTHING_READ = -2;
    public static final long NO_DISCONTINUITY = Long.MIN_VALUE;
    public static final int SAMPLE_READ = -3;

    public SampleSourceReader register();

    public static interface SampleSourceReader {
        public boolean continueBuffering(int var1, long var2);

        public void disable(int var1);

        public void enable(int var1, long var2);

        public long getBufferedPositionUs();

        public MediaFormat getFormat(int var1);

        public int getTrackCount();

        public void maybeThrowError() throws IOException;

        public boolean prepare(long var1);

        public int readData(int var1, long var2, MediaFormatHolder var4, SampleHolder var5);

        public long readDiscontinuity(int var1);

        public void release();

        public void seekToUs(long var1);
    }

}

