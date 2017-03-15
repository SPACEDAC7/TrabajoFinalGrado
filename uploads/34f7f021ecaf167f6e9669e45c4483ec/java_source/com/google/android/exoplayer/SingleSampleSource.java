/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.SystemClock
 *  com.google.android.exoplayer.SingleSampleSource$1
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 */
package com.google.android.exoplayer;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SingleSampleSource;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class SingleSampleSource
implements SampleSource,
SampleSource.SampleSourceReader,
Loader.Callback,
Loader.Loadable {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final int INITIAL_SAMPLE_SIZE = 1;
    private static final int STATE_END_OF_STREAM = 2;
    private static final int STATE_SEND_FORMAT = 0;
    private static final int STATE_SEND_SAMPLE = 1;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final DataSource dataSource;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private final MediaFormat format;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private long pendingDiscontinuityPositionUs;
    private byte[] sampleData;
    private int sampleSize;
    private int state;
    private final Uri uri;

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat) {
        this(uri, dataSource, mediaFormat, 3);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat, int n2) {
        this(uri, dataSource, mediaFormat, n2, null, null, 0);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat, int n2, Handler handler, EventListener eventListener, int n3) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.format = mediaFormat;
        this.minLoadableRetryCount = n2;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = n3;
        this.sampleData = new byte[1];
    }

    static /* synthetic */ int access$000(SingleSampleSource singleSampleSource) {
        return singleSampleSource.eventSourceId;
    }

    static /* synthetic */ EventListener access$100(SingleSampleSource singleSampleSource) {
        return singleSampleSource.eventListener;
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private long getRetryDelayMillis(long l2) {
        return Math.min((l2 - 1) * 1000, 5000);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void maybeStartLoading() {
        if (this.loadingFinished) return;
        if (this.state == 2) return;
        if (this.loader.isLoading()) {
            return;
        }
        if (this.currentLoadableException != null) {
            if (SystemClock.elapsedRealtime() - this.currentLoadableExceptionTimestamp < this.getRetryDelayMillis(this.currentLoadableExceptionCount)) return;
            this.currentLoadableException = null;
        }
        this.loader.startLoading((Loader.Loadable)this, (Loader.Callback)this);
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    public void cancelLoad() {
    }

    @Override
    public boolean continueBuffering(int n2, long l2) {
        this.maybeStartLoading();
        return this.loadingFinished;
    }

    @Override
    public void disable(int n2) {
        this.state = 2;
    }

    @Override
    public void enable(int n2, long l2) {
        this.state = 0;
        this.pendingDiscontinuityPositionUs = Long.MIN_VALUE;
        this.clearCurrentLoadableException();
        this.maybeStartLoading();
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return -3;
        }
        return 0;
    }

    @Override
    public MediaFormat getFormat(int n2) {
        return this.format;
    }

    @Override
    public int getTrackCount() {
        return 1;
    }

    public boolean isLoadCanceled() {
        return false;
    }

    public void load() throws IOException, InterruptedException {
        int n2;
        this.sampleSize = 0;
        try {
            this.dataSource.open(new DataSpec(this.uri));
            n2 = 0;
        }
        catch (Throwable var1_2) {
            this.dataSource.close();
            throw var1_2;
        }
        while (n2 != -1) {
            this.sampleSize += n2;
            if (this.sampleSize == this.sampleData.length) {
                this.sampleData = Arrays.copyOf(this.sampleData, this.sampleData.length * 2);
            }
            n2 = this.dataSource.read(this.sampleData, this.sampleSize, this.sampleData.length - this.sampleSize);
            continue;
        }
        this.dataSource.close();
        return;
    }

    @Override
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
    }

    @Override
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override
    public void onLoadCompleted(Loader.Loadable loadable) {
        this.loadingFinished = true;
        this.clearCurrentLoadableException();
    }

    @Override
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        ++this.currentLoadableExceptionCount;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        this.notifyLoadError(iOException);
        this.maybeStartLoading();
    }

    @Override
    public boolean prepare(long l2) {
        if (this.loader == null) {
            this.loader = new Loader("Loader:" + this.format.mimeType);
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int readData(int n2, long l2, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        if (this.state == 2) {
            return -1;
        }
        if (this.state == 0) {
            mediaFormatHolder.format = this.format;
            this.state = 1;
            return -4;
        }
        boolean bl = this.state == 1;
        Assertions.checkState(bl);
        if (!this.loadingFinished) {
            return -2;
        }
        sampleHolder.timeUs = 0;
        sampleHolder.size = this.sampleSize;
        sampleHolder.flags = 1;
        sampleHolder.ensureSpaceForWrite(sampleHolder.size);
        sampleHolder.data.put(this.sampleData, 0, this.sampleSize);
        this.state = 2;
        return -3;
    }

    @Override
    public long readDiscontinuity(int n2) {
        long l2 = this.pendingDiscontinuityPositionUs;
        this.pendingDiscontinuityPositionUs = Long.MIN_VALUE;
        return l2;
    }

    @Override
    public SampleSource.SampleSourceReader register() {
        return this;
    }

    @Override
    public void release() {
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    @Override
    public void seekToUs(long l2) {
        if (this.state == 2) {
            this.pendingDiscontinuityPositionUs = l2;
            this.state = 1;
        }
    }

    public static interface EventListener {
        public void onLoadError(int var1, IOException var2);
    }

}

