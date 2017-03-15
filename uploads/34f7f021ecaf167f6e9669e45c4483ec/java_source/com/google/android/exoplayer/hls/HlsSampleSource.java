/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.SystemClock
 *  com.google.android.exoplayer.chunk.Chunk
 *  com.google.android.exoplayer.chunk.ChunkOperationHolder
 *  com.google.android.exoplayer.hls.HlsExtractorWrapper
 *  com.google.android.exoplayer.hls.HlsSampleSource$1
 *  com.google.android.exoplayer.hls.HlsSampleSource$2
 *  com.google.android.exoplayer.hls.HlsSampleSource$3
 *  com.google.android.exoplayer.hls.HlsSampleSource$4
 *  com.google.android.exoplayer.hls.HlsSampleSource$5
 *  com.google.android.exoplayer.hls.TsChunk
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 */
package com.google.android.exoplayer.hls;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.chunk.BaseChunkSampleSourceEventListener;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsExtractorWrapper;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.hls.TsChunk;
import com.google.android.exoplayer.hls.Variant;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;

public final class HlsSampleSource
implements SampleSource,
SampleSource.SampleSourceReader,
Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private static final int PRIMARY_TYPE_AUDIO = 2;
    private static final int PRIMARY_TYPE_NONE = 0;
    private static final int PRIMARY_TYPE_TEXT = 1;
    private static final int PRIMARY_TYPE_VIDEO = 3;
    private final int bufferSizeContribution;
    private final ChunkOperationHolder chunkOperationHolder;
    private final HlsChunkSource chunkSource;
    private int[] chunkSourceTrackIndices;
    private long currentLoadStartTimeMs;
    private Chunk currentLoadable;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private TsChunk currentTsLoadable;
    private Format downstreamFormat;
    private MediaFormat[] downstreamMediaFormats;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private boolean[] extractorTrackEnabledStates;
    private int[] extractorTrackIndices;
    private final LinkedList<HlsExtractorWrapper> extractors;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private boolean loadControlRegistered;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private boolean[] pendingDiscontinuities;
    private long pendingResetPositionUs;
    private boolean prepared;
    private TsChunk previousTsLoadable;
    private int remainingReleaseCount;
    private int trackCount;
    private boolean[] trackEnabledStates;
    private MediaFormat[] trackFormats;

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int n2) {
        this(hlsChunkSource, loadControl, n2, null, null, 0);
    }

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int n2, Handler handler, EventListener eventListener, int n3) {
        this(hlsChunkSource, loadControl, n2, handler, eventListener, n3, 3);
    }

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int n2, Handler handler, EventListener eventListener, int n3, int n4) {
        this.chunkSource = hlsChunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = n2;
        this.minLoadableRetryCount = n4;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = n3;
        this.pendingResetPositionUs = Long.MIN_VALUE;
        this.extractors = new LinkedList();
        this.chunkOperationHolder = new ChunkOperationHolder();
    }

    static /* synthetic */ int access$000(HlsSampleSource hlsSampleSource) {
        return hlsSampleSource.eventSourceId;
    }

    static /* synthetic */ EventListener access$100(HlsSampleSource hlsSampleSource) {
        return hlsSampleSource.eventListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void buildTracks(HlsExtractorWrapper hlsExtractorWrapper) {
        int n2;
        String string2;
        int n3;
        int n4;
        int n5 = 0;
        int n6 = -1;
        int n7 = hlsExtractorWrapper.getTrackCount();
        for (n2 = 0; n2 < n7; ++n2) {
            int n8;
            string2 = hlsExtractorWrapper.getMediaFormat((int)n2).mimeType;
            n3 = MimeTypes.isVideo(string2) ? 3 : (MimeTypes.isAudio(string2) ? 2 : (MimeTypes.isText(string2) ? 1 : 0));
            if (n3 > n5) {
                n4 = n2;
                n8 = n3;
            } else {
                n4 = n6;
                n8 = n5;
                if (n3 == n5) {
                    n4 = n6;
                    n8 = n5;
                    if (n6 != -1) {
                        n4 = -1;
                        n8 = n5;
                    }
                }
            }
            n6 = n4;
            n5 = n8;
        }
        n5 = this.chunkSource.getTrackCount();
        n3 = n6 != -1 ? 1 : 0;
        this.trackCount = n7;
        if (n3 != 0) {
            this.trackCount += n5 - 1;
        }
        this.trackFormats = new MediaFormat[this.trackCount];
        this.trackEnabledStates = new boolean[this.trackCount];
        this.pendingDiscontinuities = new boolean[this.trackCount];
        this.downstreamMediaFormats = new MediaFormat[this.trackCount];
        this.chunkSourceTrackIndices = new int[this.trackCount];
        this.extractorTrackIndices = new int[this.trackCount];
        this.extractorTrackEnabledStates = new boolean[n7];
        long l2 = this.chunkSource.getDurationUs();
        n2 = 0;
        n3 = 0;
        while (n2 < n7) {
            Object object;
            MediaFormat mediaFormat = hlsExtractorWrapper.getMediaFormat(n2).copyWithDurationUs(l2);
            string2 = null;
            if (MimeTypes.isAudio(mediaFormat.mimeType)) {
                string2 = this.chunkSource.getMuxedAudioLanguage();
            } else if ("application/eia-608".equals(mediaFormat.mimeType)) {
                string2 = this.chunkSource.getMuxedCaptionLanguage();
            }
            if (n2 != n6) {
                this.extractorTrackIndices[n3] = n2;
                this.chunkSourceTrackIndices[n3] = -1;
                object = this.trackFormats;
                n4 = n3 + 1;
                object[n3] = mediaFormat.copyWithLanguage(string2);
                n3 = n4;
            } else {
                for (n4 = 0; n4 < n5; ++n4, ++n3) {
                    this.extractorTrackIndices[n3] = n2;
                    this.chunkSourceTrackIndices[n3] = n4;
                    object = this.chunkSource.getFixedTrackVariant(n4);
                    MediaFormat[] arrmediaFormat = this.trackFormats;
                    object = object == null ? mediaFormat.copyAsAdaptive(null) : HlsSampleSource.copyWithFixedTrackInfo(mediaFormat, object.format, string2);
                    arrmediaFormat[n3] = object;
                }
            }
            ++n2;
        }
    }

    private void clearCurrentLoadable() {
        this.currentTsLoadable = null;
        this.currentLoadable = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private void clearState() {
        for (int i2 = 0; i2 < this.extractors.size(); ++i2) {
            this.extractors.get(i2).clear();
        }
        this.extractors.clear();
        this.clearCurrentLoadable();
        this.previousTsLoadable = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static MediaFormat copyWithFixedTrackInfo(MediaFormat mediaFormat, Format format, String string2) {
        int n2 = format.width == -1 ? -1 : format.width;
        int n3 = format.height == -1 ? -1 : format.height;
        if (format.language == null) {
            return mediaFormat.copyWithFixedTrackInfo(format.id, format.bitrate, n2, n3, string2);
        }
        string2 = format.language;
        return mediaFormat.copyWithFixedTrackInfo(format.id, format.bitrate, n2, n3, string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void discardSamplesForDisabledTracks(HlsExtractorWrapper hlsExtractorWrapper, long l2) {
        if (!hlsExtractorWrapper.isPrepared()) {
            return;
        }
        int n2 = 0;
        while (n2 < this.extractorTrackEnabledStates.length) {
            if (!this.extractorTrackEnabledStates[n2]) {
                hlsExtractorWrapper.discardUntil(n2, l2);
            }
            ++n2;
        }
    }

    private HlsExtractorWrapper getCurrentExtractor() {
        HlsExtractorWrapper hlsExtractorWrapper = this.extractors.getFirst();
        while (this.extractors.size() > 1 && !this.haveSamplesForEnabledTracks(hlsExtractorWrapper)) {
            this.extractors.removeFirst().clear();
            hlsExtractorWrapper = this.extractors.getFirst();
        }
        return hlsExtractorWrapper;
    }

    private long getNextLoadPositionUs() {
        if (this.isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished || this.prepared && this.enabledTrackCount == 0) {
            return -1;
        }
        if (this.currentTsLoadable != null) {
            return this.currentTsLoadable.endTimeUs;
        }
        return this.previousTsLoadable.endTimeUs;
    }

    private long getRetryDelayMillis(long l2) {
        return Math.min((l2 - 1) * 1000, 5000);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean haveSamplesForEnabledTracks(HlsExtractorWrapper hlsExtractorWrapper) {
        if (!hlsExtractorWrapper.isPrepared()) {
            return false;
        }
        int n2 = 0;
        while (n2 < this.extractorTrackEnabledStates.length) {
            if (this.extractorTrackEnabledStates[n2] && hlsExtractorWrapper.hasSamples(n2)) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    private boolean isPendingReset() {
        if (this.pendingResetPositionUs != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    private boolean isTsChunk(Chunk chunk) {
        return chunk instanceof TsChunk;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void maybeStartLoading() {
        long l2 = SystemClock.elapsedRealtime();
        long l3 = this.getNextLoadPositionUs();
        boolean bl = this.currentLoadableException != null;
        boolean bl2 = this.loader.isLoading() || bl;
        bl2 = this.loadControl.update(this, this.downstreamPositionUs, l3, bl2);
        if (bl) {
            if (l2 - this.currentLoadableExceptionTimestamp < this.getRetryDelayMillis(this.currentLoadableExceptionCount)) return;
            {
                this.currentLoadableException = null;
                this.loader.startLoading((Loader.Loadable)this.currentLoadable, (Loader.Callback)this);
            }
            return;
        }
        if (this.loader.isLoading() || !bl2 || this.prepared && this.enabledTrackCount == 0) return;
        HlsChunkSource hlsChunkSource = this.chunkSource;
        TsChunk tsChunk = this.previousTsLoadable;
        l3 = this.pendingResetPositionUs != Long.MIN_VALUE ? this.pendingResetPositionUs : this.downstreamPositionUs;
        hlsChunkSource.getChunkOperation(tsChunk, l3, this.chunkOperationHolder);
        bl2 = this.chunkOperationHolder.endOfStream;
        hlsChunkSource = this.chunkOperationHolder.chunk;
        this.chunkOperationHolder.clear();
        if (bl2) {
            this.loadingFinished = true;
            this.loadControl.update(this, this.downstreamPositionUs, -1, false);
            return;
        }
        if (hlsChunkSource == null) return;
        this.currentLoadStartTimeMs = l2;
        this.currentLoadable = hlsChunkSource;
        if (this.isTsChunk(this.currentLoadable)) {
            hlsChunkSource = (TsChunk)this.currentLoadable;
            if (this.isPendingReset()) {
                this.pendingResetPositionUs = Long.MIN_VALUE;
            }
            tsChunk = hlsChunkSource.extractorWrapper;
            if (this.extractors.isEmpty() || this.extractors.getLast() != tsChunk) {
                tsChunk.init(this.loadControl.getAllocator());
                this.extractors.addLast((HlsExtractorWrapper)tsChunk);
            }
            this.notifyLoadStarted(hlsChunkSource.dataSpec.length, hlsChunkSource.type, hlsChunkSource.trigger, hlsChunkSource.format, hlsChunkSource.startTimeUs, hlsChunkSource.endTimeUs);
            this.currentTsLoadable = hlsChunkSource;
        } else {
            this.notifyLoadStarted(this.currentLoadable.dataSpec.length, this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1, -1);
        }
        this.loader.startLoading((Loader.Loadable)this.currentLoadable, (Loader.Callback)this);
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

    private void restartFrom(long l2) {
        this.pendingResetPositionUs = l2;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.clearState();
        this.maybeStartLoading();
    }

    private void seekToInternal(long l2) {
        this.lastSeekPositionUs = l2;
        this.downstreamPositionUs = l2;
        Arrays.fill(this.pendingDiscontinuities, true);
        this.chunkSource.seek();
        this.restartFrom(l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setTrackEnabledState(int n2, boolean bl) {
        boolean bl2 = false;
        int n3 = 1;
        boolean bl3 = this.trackEnabledStates[n2] != bl;
        Assertions.checkState(bl3);
        int n4 = this.extractorTrackIndices[n2];
        bl3 = bl2;
        if (this.extractorTrackEnabledStates[n4] != bl) {
            bl3 = true;
        }
        Assertions.checkState(bl3);
        this.trackEnabledStates[n2] = bl;
        this.extractorTrackEnabledStates[n4] = bl;
        n4 = this.enabledTrackCount;
        n2 = bl ? n3 : -1;
        this.enabledTrackCount = n4 + n2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean continueBuffering(int n2, long l2) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[n2]);
        this.downstreamPositionUs = l2;
        if (!this.extractors.isEmpty()) {
            this.discardSamplesForDisabledTracks(this.getCurrentExtractor(), this.downstreamPositionUs);
        }
        this.maybeStartLoading();
        if (this.loadingFinished) {
            return true;
        }
        if (this.isPendingReset()) return false;
        if (this.extractors.isEmpty()) {
            return false;
        }
        int n3 = 0;
        while (n3 < this.extractors.size()) {
            HlsExtractorWrapper hlsExtractorWrapper = this.extractors.get(n3);
            if (!hlsExtractorWrapper.isPrepared()) {
                return false;
            }
            if (hlsExtractorWrapper.hasSamples(this.extractorTrackIndices[n2])) return true;
            ++n3;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void disable(int n2) {
        Assertions.checkState(this.prepared);
        this.setTrackEnabledState(n2, false);
        if (this.enabledTrackCount != 0) return;
        this.chunkSource.reset();
        this.downstreamPositionUs = Long.MIN_VALUE;
        if (this.loadControlRegistered) {
            this.loadControl.unregister(this);
            this.loadControlRegistered = false;
        }
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.clearState();
        this.loadControl.trimAllocator();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void enable(int n2, long l2) {
        Assertions.checkState(this.prepared);
        this.setTrackEnabledState(n2, true);
        this.downstreamMediaFormats[n2] = null;
        this.pendingDiscontinuities[n2] = false;
        this.downstreamFormat = null;
        boolean bl = this.loadControlRegistered;
        if (!this.loadControlRegistered) {
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (this.chunkSource.isLive()) {
            l2 = 0;
        }
        if ((n2 = this.chunkSourceTrackIndices[n2]) != -1 && n2 != this.chunkSource.getSelectedTrackIndex()) {
            this.chunkSource.selectTrack(n2);
            this.seekToInternal(l2);
            return;
        }
        if (this.enabledTrackCount != 1) return;
        {
            this.lastSeekPositionUs = l2;
            if (bl && this.downstreamPositionUs == l2) {
                this.maybeStartLoading();
                return;
            }
        }
        this.downstreamPositionUs = l2;
        this.restartFrom(l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public long getBufferedPositionUs() {
        long l2;
        Assertions.checkState(this.prepared);
        boolean bl = this.enabledTrackCount > 0;
        Assertions.checkState(bl);
        if (this.isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3;
        }
        long l3 = l2 = this.extractors.getLast().getLargestParsedTimestampUs();
        if (this.extractors.size() > 1) {
            l3 = Math.max(l2, this.extractors.get(this.extractors.size() - 2).getLargestParsedTimestampUs());
        }
        l2 = l3;
        if (l3 != Long.MIN_VALUE) return l2;
        return this.downstreamPositionUs;
    }

    @Override
    public MediaFormat getFormat(int n2) {
        Assertions.checkState(this.prepared);
        return this.trackFormats[n2];
    }

    @Override
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackCount;
    }

    @Override
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
        if (this.currentLoadable == null) {
            this.chunkSource.maybeThrowError();
        }
    }

    @Override
    public void onLoadCanceled(Loader.Loadable loadable) {
        this.notifyLoadCanceled(this.currentLoadable.bytesLoaded());
        if (this.enabledTrackCount > 0) {
            this.restartFrom(this.pendingResetPositionUs);
            return;
        }
        this.clearState();
        this.loadControl.trimAllocator();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onLoadCompleted(Loader.Loadable loadable) {
        boolean bl = true;
        boolean bl2 = loadable == this.currentLoadable;
        Assertions.checkState(bl2);
        long l2 = SystemClock.elapsedRealtime();
        long l3 = l2 - this.currentLoadStartTimeMs;
        this.chunkSource.onChunkLoadCompleted(this.currentLoadable);
        if (this.isTsChunk(this.currentLoadable)) {
            bl2 = this.currentLoadable == this.currentTsLoadable ? bl : false;
            Assertions.checkState(bl2);
            this.previousTsLoadable = this.currentTsLoadable;
            this.notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentTsLoadable.type, this.currentTsLoadable.trigger, this.currentTsLoadable.format, this.currentTsLoadable.startTimeUs, this.currentTsLoadable.endTimeUs, l2, l3);
        } else {
            this.notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1, -1, l2, l3);
        }
        this.clearCurrentLoadable();
        this.maybeStartLoading();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        if (this.chunkSource.onChunkLoadError(this.currentLoadable, iOException)) {
            if (this.previousTsLoadable == null && !this.isPendingReset()) {
                this.pendingResetPositionUs = this.lastSeekPositionUs;
            }
            this.clearCurrentLoadable();
        } else {
            this.currentLoadableException = iOException;
            ++this.currentLoadableExceptionCount;
            this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        }
        this.notifyLoadError(iOException);
        this.maybeStartLoading();
    }

    @Override
    public boolean prepare(long l2) {
        if (this.prepared) {
            return true;
        }
        if (!this.chunkSource.prepare()) {
            return false;
        }
        if (!this.extractors.isEmpty()) {
            do {
                HlsExtractorWrapper hlsExtractorWrapper;
                if ((hlsExtractorWrapper = this.extractors.getFirst()).isPrepared()) {
                    this.buildTracks(hlsExtractorWrapper);
                    this.prepared = true;
                    this.maybeStartLoading();
                    return true;
                }
                if (this.extractors.size() <= 1) break;
                this.extractors.removeFirst().clear();
            } while (true);
        }
        if (this.loader == null) {
            this.loader = new Loader("Loader:HLS");
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (!this.loader.isLoading()) {
            this.pendingResetPositionUs = l2;
            this.downstreamPositionUs = l2;
        }
        this.maybeStartLoading();
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int readData(int n2, long l2, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        Assertions.checkState(this.prepared);
        this.downstreamPositionUs = l2;
        if (this.pendingDiscontinuities[n2] || this.isPendingReset()) {
            return -2;
        }
        Object object = this.getCurrentExtractor();
        if (!object.isPrepared()) {
            return -2;
        }
        Object object2 = object.format;
        if (!object2.equals(this.downstreamFormat)) {
            this.notifyDownstreamFormatChanged((Format)object2, object.trigger, object.startTimeUs);
        }
        this.downstreamFormat = object2;
        if (this.extractors.size() > 1) {
            object.configureSpliceTo(this.extractors.get(1));
        }
        int n3 = this.extractorTrackIndices[n2];
        int n4 = 0;
        while (this.extractors.size() > n4 + 1 && !object.hasSamples(n3)) {
            object = this.extractors;
            object = object2 = (HlsExtractorWrapper)object.get(++n4);
            if (object2.isPrepared()) continue;
            return -2;
        }
        object2 = object.getMediaFormat(n3);
        if (object2 != null) {
            if (!object2.equals(this.downstreamMediaFormats[n2])) {
                mediaFormatHolder.format = object2;
                this.downstreamMediaFormats[n2] = object2;
                return -4;
            }
            this.downstreamMediaFormats[n2] = object2;
        }
        if (object.getSample(n3, sampleHolder)) {
            n2 = sampleHolder.timeUs < this.lastSeekPositionUs ? 1 : 0;
            n4 = sampleHolder.flags;
            n2 = n2 != 0 ? 134217728 : 0;
            sampleHolder.flags = n2 | n4;
            return -3;
        }
        if (this.loadingFinished) {
            return -1;
        }
        return -2;
    }

    @Override
    public long readDiscontinuity(int n2) {
        if (this.pendingDiscontinuities[n2]) {
            this.pendingDiscontinuities[n2] = false;
            return this.lastSeekPositionUs;
        }
        return Long.MIN_VALUE;
    }

    @Override
    public SampleSource.SampleSourceReader register() {
        ++this.remainingReleaseCount;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void release() {
        int n2;
        boolean bl = this.remainingReleaseCount > 0;
        Assertions.checkState(bl);
        this.remainingReleaseCount = n2 = this.remainingReleaseCount - 1;
        if (n2 == 0 && this.loader != null) {
            if (this.loadControlRegistered) {
                this.loadControl.unregister(this);
                this.loadControlRegistered = false;
            }
            this.loader.release();
            this.loader = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void seekToUs(long l2) {
        Assertions.checkState(this.prepared);
        boolean bl = this.enabledTrackCount > 0;
        Assertions.checkState(bl);
        if (this.chunkSource.isLive()) {
            l2 = 0;
        }
        long l3 = this.isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = l2;
        this.lastSeekPositionUs = l2;
        if (l3 == l2) {
            return;
        }
        this.seekToInternal(l2);
    }

    long usToMs(long l2) {
        return l2 / 1000;
    }

    public static interface EventListener
    extends BaseChunkSampleSourceEventListener {
    }

}

