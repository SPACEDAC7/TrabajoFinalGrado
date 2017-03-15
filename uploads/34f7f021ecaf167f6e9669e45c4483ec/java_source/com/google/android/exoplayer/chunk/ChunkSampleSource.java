/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.SystemClock
 *  com.google.android.exoplayer.chunk.BaseMediaChunk
 *  com.google.android.exoplayer.chunk.Chunk
 *  com.google.android.exoplayer.chunk.ChunkOperationHolder
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$1
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$2
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$3
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$4
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$5
 *  com.google.android.exoplayer.chunk.ChunkSampleSource$6
 *  com.google.android.exoplayer.chunk.ChunkSource
 *  com.google.android.exoplayer.chunk.MediaChunk
 *  com.google.android.exoplayer.extractor.DefaultTrackOutput
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 */
package com.google.android.exoplayer.chunk;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.chunk.BaseChunkSampleSourceEventListener;
import com.google.android.exoplayer.chunk.BaseMediaChunk;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultTrackOutput;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class ChunkSampleSource
implements SampleSource,
SampleSource.SampleSourceReader,
Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private static final int STATE_ENABLED = 3;
    private static final int STATE_IDLE = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_PREPARED = 2;
    private final int bufferSizeContribution;
    private final ChunkSource chunkSource;
    private long currentLoadStartTimeMs;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final ChunkOperationHolder currentLoadableHolder;
    private DrmInitData downstreamDrmInitData;
    private Format downstreamFormat;
    private MediaFormat downstreamMediaFormat;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private long lastPerformedBufferOperation;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private Loader loader;
    private boolean loadingFinished;
    private final LinkedList<BaseMediaChunk> mediaChunks;
    private final int minLoadableRetryCount;
    private boolean pendingDiscontinuity;
    private long pendingResetPositionUs;
    private final List<BaseMediaChunk> readOnlyMediaChunks;
    protected final DefaultTrackOutput sampleQueue;
    private int state;

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int n2) {
        this(chunkSource, loadControl, n2, null, null, 0);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int n2, Handler handler, EventListener eventListener, int n3) {
        this(chunkSource, loadControl, n2, handler, eventListener, n3, 3);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int n2, Handler handler, EventListener eventListener, int n3, int n4) {
        this.chunkSource = chunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = n2;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = n3;
        this.minLoadableRetryCount = n4;
        this.currentLoadableHolder = new ChunkOperationHolder();
        this.mediaChunks = new LinkedList();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        this.sampleQueue = new DefaultTrackOutput(loadControl.getAllocator());
        this.state = 0;
        this.pendingResetPositionUs = Long.MIN_VALUE;
    }

    static /* synthetic */ int access$000(ChunkSampleSource chunkSampleSource) {
        return chunkSampleSource.eventSourceId;
    }

    static /* synthetic */ EventListener access$100(ChunkSampleSource chunkSampleSource) {
        return chunkSampleSource.eventListener;
    }

    private void clearCurrentLoadable() {
        this.currentLoadableHolder.chunk = null;
        this.clearCurrentLoadableException();
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private boolean discardUpstreamMediaChunks(int n2) {
        if (this.mediaChunks.size() <= n2) {
            return false;
        }
        long l2 = 0;
        long l3 = this.mediaChunks.getLast().endTimeUs;
        BaseMediaChunk baseMediaChunk = null;
        while (this.mediaChunks.size() > n2) {
            baseMediaChunk = this.mediaChunks.removeLast();
            l2 = baseMediaChunk.startTimeUs;
            this.loadingFinished = false;
        }
        this.sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex());
        this.notifyUpstreamDiscarded(l2, l3);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doChunkOperation() {
        this.currentLoadableHolder.endOfStream = false;
        this.currentLoadableHolder.queueSize = this.readOnlyMediaChunks.size();
        ChunkSource chunkSource = this.chunkSource;
        List<BaseMediaChunk> list = this.readOnlyMediaChunks;
        long l2 = this.pendingResetPositionUs != Long.MIN_VALUE ? this.pendingResetPositionUs : this.downstreamPositionUs;
        chunkSource.getChunkOperation(list, l2, this.currentLoadableHolder);
        this.loadingFinished = this.currentLoadableHolder.endOfStream;
    }

    private long getNextLoadPositionUs() {
        if (this.isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -1;
        }
        return this.mediaChunks.getLast().endTimeUs;
    }

    private long getRetryDelayMillis(long l2) {
        return Math.min((l2 - 1) * 1000, 5000);
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private boolean isPendingReset() {
        if (this.pendingResetPositionUs != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void maybeStartLoading() {
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (chunk == null) {
            return;
        }
        this.currentLoadStartTimeMs = SystemClock.elapsedRealtime();
        if (this.isMediaChunk(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk)chunk;
            baseMediaChunk.init(this.sampleQueue);
            this.mediaChunks.add(baseMediaChunk);
            if (this.isPendingReset()) {
                this.pendingResetPositionUs = Long.MIN_VALUE;
            }
            this.notifyLoadStarted(baseMediaChunk.dataSpec.length, baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs);
        } else {
            this.notifyLoadStarted(chunk.dataSpec.length, chunk.type, chunk.trigger, chunk.format, -1, -1);
        }
        this.loader.startLoading((Loader.Loadable)chunk, (Loader.Callback)this);
    }

    private void notifyDownstreamFormatChanged(Format format, int n2, long l2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyLoadCanceled(long l2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyLoadCompleted(long l2, int n2, int n3, Format format, long l3, long l4, long l5, long l6) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyLoadStarted(long l2, int n2, int n3, Format format, long l3, long l4) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyUpstreamDiscarded(long l2, long l3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void restartFrom(long l2) {
        this.pendingResetPositionUs = l2;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        this.clearCurrentLoadable();
        this.updateLoadControl();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void resumeFromBackOff() {
        this.currentLoadableException = null;
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (!this.isMediaChunk(chunk)) {
            this.doChunkOperation();
            this.discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == chunk) {
                this.loader.startLoading((Loader.Loadable)chunk, (Loader.Callback)this);
                return;
            }
            this.notifyLoadCanceled(chunk.bytesLoaded());
            this.maybeStartLoading();
            return;
        }
        if (chunk == this.mediaChunks.getFirst()) {
            this.loader.startLoading((Loader.Loadable)chunk, (Loader.Callback)this);
            return;
        }
        BaseMediaChunk baseMediaChunk = this.mediaChunks.removeLast();
        boolean bl = chunk == baseMediaChunk;
        Assertions.checkState(bl);
        this.doChunkOperation();
        this.mediaChunks.add(baseMediaChunk);
        if (this.currentLoadableHolder.chunk == chunk) {
            this.loader.startLoading((Loader.Loadable)chunk, (Loader.Callback)this);
            return;
        }
        this.notifyLoadCanceled(chunk.bytesLoaded());
        this.discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
        this.clearCurrentLoadableException();
        this.maybeStartLoading();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateLoadControl() {
        var6_1 = SystemClock.elapsedRealtime();
        var4_2 = this.getNextLoadPositionUs();
        var1_3 = this.currentLoadableException != null;
        var8_4 = this.loader.isLoading() != false || var1_3 != false;
        var2_5 = var4_2;
        if (var8_4) ** GOTO lbl19
        if (this.currentLoadableHolder.chunk == null && var4_2 != -1) ** GOTO lbl-1000
        var2_5 = var4_2;
        if (var6_1 - this.lastPerformedBufferOperation > 2000) lbl-1000: // 2 sources:
        {
            this.lastPerformedBufferOperation = var6_1;
            this.doChunkOperation();
            var9_6 = this.discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == null) {
                var2_5 = -1;
            } else {
                var2_5 = var4_2;
                if (var9_6) {
                    var2_5 = this.getNextLoadPositionUs();
                }
            }
        }
lbl19: // 7 sources:
        var8_4 = this.loadControl.update(this, this.downstreamPositionUs, var2_5, var8_4);
        if (var1_3) {
            if (var6_1 - this.currentLoadableExceptionTimestamp < this.getRetryDelayMillis(this.currentLoadableExceptionCount)) return;
            this.resumeFromBackOff();
            return;
        }
        if (this.loader.isLoading() != false) return;
        if (var8_4 == false) return;
        this.maybeStartLoading();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean continueBuffering(int n2, long l2) {
        boolean bl = false;
        boolean bl2 = this.state == 3;
        Assertions.checkState(bl2);
        this.downstreamPositionUs = l2;
        this.chunkSource.continueBuffering(l2);
        this.updateLoadControl();
        if (this.loadingFinished) return true;
        bl2 = bl;
        if (this.sampleQueue.isEmpty()) return bl2;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void disable(int n2) {
        boolean bl = true;
        boolean bl2 = this.state == 3;
        Assertions.checkState(bl2);
        this.enabledTrackCount = n2 = this.enabledTrackCount - 1;
        bl2 = n2 == 0 ? bl : false;
        Assertions.checkState(bl2);
        this.state = 2;
        try {
            this.chunkSource.disable(this.mediaChunks);
            this.loadControl.unregister(this);
        }
        catch (Throwable var2_4) {
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
                throw var2_4;
            }
            this.sampleQueue.clear();
            this.mediaChunks.clear();
            this.clearCurrentLoadable();
            this.loadControl.trimAllocator();
            throw var2_4;
        }
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        this.clearCurrentLoadable();
        this.loadControl.trimAllocator();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void enable(int n2, long l2) {
        boolean bl = true;
        boolean bl2 = this.state == 2;
        Assertions.checkState(bl2);
        int n3 = this.enabledTrackCount;
        this.enabledTrackCount = n3 + 1;
        bl2 = n3 == 0 ? bl : false;
        Assertions.checkState(bl2);
        this.state = 3;
        this.chunkSource.enable(n2);
        this.loadControl.register(this, this.bufferSizeContribution);
        this.downstreamFormat = null;
        this.downstreamMediaFormat = null;
        this.downstreamDrmInitData = null;
        this.downstreamPositionUs = l2;
        this.lastSeekPositionUs = l2;
        this.pendingDiscontinuity = false;
        this.restartFrom(l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public long getBufferedPositionUs() {
        long l2;
        boolean bl = this.state == 3;
        Assertions.checkState(bl);
        if (this.isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3;
        }
        long l3 = l2 = this.sampleQueue.getLargestParsedTimestampUs();
        if (l2 != Long.MIN_VALUE) return l3;
        return this.downstreamPositionUs;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public MediaFormat getFormat(int n2) {
        boolean bl = this.state == 2 || this.state == 3;
        Assertions.checkState(bl);
        return this.chunkSource.getFormat(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int getTrackCount() {
        boolean bl = this.state == 2 || this.state == 3;
        Assertions.checkState(bl);
        return this.chunkSource.getTrackCount();
    }

    @Override
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
        if (this.currentLoadableHolder.chunk == null) {
            this.chunkSource.maybeThrowError();
        }
    }

    @Override
    public void onLoadCanceled(Loader.Loadable loadable) {
        this.notifyLoadCanceled(this.currentLoadableHolder.chunk.bytesLoaded());
        this.clearCurrentLoadable();
        if (this.state == 3) {
            this.restartFrom(this.pendingResetPositionUs);
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        this.clearCurrentLoadable();
        this.loadControl.trimAllocator();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onLoadCompleted(Loader.Loadable loadable) {
        long l2 = SystemClock.elapsedRealtime();
        long l3 = l2 - this.currentLoadStartTimeMs;
        loadable = this.currentLoadableHolder.chunk;
        this.chunkSource.onChunkLoadCompleted((Chunk)loadable);
        if (this.isMediaChunk((Chunk)loadable)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk)loadable;
            this.notifyLoadCompleted(loadable.bytesLoaded(), baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs, l2, l3);
        } else {
            this.notifyLoadCompleted(loadable.bytesLoaded(), loadable.type, loadable.trigger, loadable.format, -1, -1, l2, l3);
        }
        this.clearCurrentLoadable();
        this.updateLoadControl();
    }

    @Override
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        ++this.currentLoadableExceptionCount;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        this.notifyLoadError(iOException);
        this.chunkSource.onChunkLoadError(this.currentLoadableHolder.chunk, (Exception)iOException);
        this.updateLoadControl();
    }

    protected void onSampleRead(MediaChunk mediaChunk, SampleHolder sampleHolder) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean prepare(long l2) {
        boolean bl = this.state == 1 || this.state == 2;
        Assertions.checkState(bl);
        if (this.state == 2) {
            return true;
        }
        if (!this.chunkSource.prepare()) {
            return false;
        }
        if (this.chunkSource.getTrackCount() > 0) {
            this.loader = new Loader("Loader:" + this.chunkSource.getFormat((int)0).mimeType);
        }
        this.state = 2;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int readData(int n2, long l2, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        boolean bl = this.state == 3;
        Assertions.checkState(bl);
        this.downstreamPositionUs = l2;
        if (this.pendingDiscontinuity || this.isPendingReset()) {
            return -2;
        }
        n2 = !this.sampleQueue.isEmpty() ? 1 : 0;
        BaseMediaChunk baseMediaChunk = this.mediaChunks.getFirst();
        while (n2 != 0 && this.mediaChunks.size() > 1 && this.mediaChunks.get(1).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
            this.mediaChunks.removeFirst();
            baseMediaChunk = this.mediaChunks.getFirst();
        }
        Object object = baseMediaChunk.format;
        if (!object.equals(this.downstreamFormat)) {
            this.notifyDownstreamFormatChanged((Format)object, baseMediaChunk.trigger, baseMediaChunk.startTimeUs);
        }
        this.downstreamFormat = object;
        if (n2 != 0 || baseMediaChunk.isMediaFormatFinal) {
            object = baseMediaChunk.getMediaFormat();
            DrmInitData drmInitData = baseMediaChunk.getDrmInitData();
            if (!object.equals(this.downstreamMediaFormat) || !Util.areEqual(this.downstreamDrmInitData, drmInitData)) {
                mediaFormatHolder.format = object;
                mediaFormatHolder.drmInitData = drmInitData;
                this.downstreamMediaFormat = object;
                this.downstreamDrmInitData = drmInitData;
                return -4;
            }
            this.downstreamMediaFormat = object;
            this.downstreamDrmInitData = drmInitData;
        }
        if (n2 == 0) {
            if (this.loadingFinished) {
                return -1;
            }
            return -2;
        }
        if (!this.sampleQueue.getSample(sampleHolder)) {
            return -2;
        }
        n2 = sampleHolder.timeUs < this.lastSeekPositionUs ? 1 : 0;
        int n3 = sampleHolder.flags;
        n2 = n2 != 0 ? 134217728 : 0;
        sampleHolder.flags = n2 | n3;
        this.onSampleRead((MediaChunk)baseMediaChunk, sampleHolder);
        return -3;
    }

    @Override
    public long readDiscontinuity(int n2) {
        if (this.pendingDiscontinuity) {
            this.pendingDiscontinuity = false;
            return this.lastSeekPositionUs;
        }
        return Long.MIN_VALUE;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public SampleSource.SampleSourceReader register() {
        boolean bl = this.state == 0;
        Assertions.checkState(bl);
        this.state = 1;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void release() {
        boolean bl = this.state != 3;
        Assertions.checkState(bl);
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
        this.state = 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void seekToUs(long l2) {
        boolean bl = this.state == 3;
        Assertions.checkState(bl);
        long l3 = this.isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = l2;
        this.lastSeekPositionUs = l2;
        if (l3 == l2) {
            return;
        }
        boolean bl2 = !this.isPendingReset() && this.sampleQueue.skipToKeyframeBefore(l2);
        if (bl2) {
            bl2 = !this.sampleQueue.isEmpty();
            while (bl2 && this.mediaChunks.size() > 1 && this.mediaChunks.get(1).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
                this.mediaChunks.removeFirst();
            }
        } else {
            this.restartFrom(l2);
        }
        this.pendingDiscontinuity = true;
    }

    protected final long usToMs(long l2) {
        return l2 / 1000;
    }

    public static interface EventListener
    extends BaseChunkSampleSourceEventListener {
    }

}

