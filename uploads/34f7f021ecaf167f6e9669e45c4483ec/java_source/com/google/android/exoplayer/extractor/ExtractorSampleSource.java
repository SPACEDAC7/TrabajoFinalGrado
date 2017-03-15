/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.SystemClock
 *  android.util.SparseArray
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$1
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$2
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$ExtractingLoadable
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$ExtractorHolder
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$InternalTrackOutput
 *  com.google.android.exoplayer.extractor.ExtractorSampleSource$UnrecognizedInputFormatException
 *  com.google.android.exoplayer.extractor.SeekMap
 *  com.google.android.exoplayer.extractor.TrackOutput
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 */
package com.google.android.exoplayer.extractor;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class ExtractorSampleSource
implements SampleSource,
SampleSource.SampleSourceReader,
ExtractorOutput,
Loader.Callback {
    private static final List<Class<? extends Extractor>> DEFAULT_EXTRACTOR_CLASSES;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE = 6;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND = 3;
    private static final int MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA = -1;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private final Allocator allocator;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final DataSource dataSource;
    private long downstreamPositionUs;
    private volatile DrmInitData drmInitData;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private int extractedSampleCount;
    private int extractedSampleCountAtStartOfLoad;
    private final ExtractorHolder extractorHolder;
    private boolean havePendingNextSampleUs;
    private long lastSeekPositionUs;
    private ExtractingLoadable loadable;
    private Loader loader;
    private boolean loadingFinished;
    private long maxTrackDurationUs;
    private MediaFormat[] mediaFormats;
    private final int minLoadableRetryCount;
    private boolean[] pendingDiscontinuities;
    private boolean[] pendingMediaFormat;
    private long pendingNextSampleUs;
    private long pendingResetPositionUs;
    private boolean prepared;
    private int remainingReleaseCount;
    private final int requestedBufferSize;
    private final SparseArray<InternalTrackOutput> sampleQueues;
    private long sampleTimeOffsetUs;
    private volatile SeekMap seekMap;
    private boolean[] trackEnabledStates;
    private volatile boolean tracksBuilt;
    private final Uri uri;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        DEFAULT_EXTRACTOR_CLASSES = new ArrayList<Class<? extends Extractor>>();
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.webm.WebmExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_10) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_9) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp4.Mp4Extractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_8) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp3.Mp3Extractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_7) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.AdtsExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_6) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.TsExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_5) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.flv.FlvExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_4) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ogg.OggExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_3) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.PsExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_2) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.wav.WavExtractor").asSubclass(Extractor.class));
        }
        catch (ClassNotFoundException var0_1) {}
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.ext.flac.FlacExtractor").asSubclass(Extractor.class));
            return;
        }
        catch (ClassNotFoundException var0) {
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public /* varargs */ ExtractorSampleSource(Uri var1_1, DataSource var2_4, Allocator var3_5, int var4_6, int var5_7, Handler var6_8, EventListener var7_9, int var8_10, Extractor ... var9_11) {
        super();
        this.uri = var1_1;
        this.dataSource = var2_4;
        this.eventListener = var7_9;
        this.eventHandler = var6_8;
        this.eventSourceId = var8_10;
        this.allocator = var3_5;
        this.requestedBufferSize = var4_6;
        this.minLoadableRetryCount = var5_7;
        if (var9_11 == null) ** GOTO lbl-1000
        var1_1 = var9_11;
        if (var9_11.length == 0) lbl-1000: // 2 sources:
        {
            var2_4 = new Extractor[ExtractorSampleSource.DEFAULT_EXTRACTOR_CLASSES.size()];
            var4_6 = 0;
            do {
                var1_1 = var2_4;
                if (var4_6 >= var2_4.length) break;
                try {
                    var2_4[var4_6] = ExtractorSampleSource.DEFAULT_EXTRACTOR_CLASSES.get(var4_6).newInstance();
                    ++var4_6;
                    continue;
                }
                catch (InstantiationException var1_2) {
                    throw new IllegalStateException("Unexpected error creating default extractor", var1_2);
                }
                catch (IllegalAccessException var1_3) {
                    throw new IllegalStateException("Unexpected error creating default extractor", var1_3);
                }
            } while (true);
        }
        this.extractorHolder = new ExtractorHolder(var1_1, (ExtractorOutput)this);
        this.sampleQueues = new SparseArray();
        this.pendingResetPositionUs = Long.MIN_VALUE;
    }

    public /* varargs */ ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int n2, int n3, Extractor ... arrextractor) {
        this(uri, dataSource, allocator, n2, n3, null, null, 0, arrextractor);
    }

    public /* varargs */ ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int n2, Handler handler, EventListener eventListener, int n3, Extractor ... arrextractor) {
        this(uri, dataSource, allocator, n2, -1, handler, eventListener, n3, arrextractor);
    }

    public /* varargs */ ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int n2, Extractor ... arrextractor) {
        this(uri, dataSource, allocator, n2, -1, arrextractor);
    }

    static /* synthetic */ ExtractorHolder access$000(ExtractorSampleSource extractorSampleSource) {
        return extractorSampleSource.extractorHolder;
    }

    static /* synthetic */ int access$100(ExtractorSampleSource extractorSampleSource) {
        return extractorSampleSource.eventSourceId;
    }

    static /* synthetic */ EventListener access$200(ExtractorSampleSource extractorSampleSource) {
        return extractorSampleSource.eventListener;
    }

    static /* synthetic */ int access$308(ExtractorSampleSource extractorSampleSource) {
        int n2 = extractorSampleSource.extractedSampleCount;
        extractorSampleSource.extractedSampleCount = n2 + 1;
        return n2;
    }

    private void clearState() {
        for (int i2 = 0; i2 < this.sampleQueues.size(); ++i2) {
            ((InternalTrackOutput)this.sampleQueues.valueAt(i2)).clear();
        }
        this.loadable = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private ExtractingLoadable createLoadableFromPositionUs(long l2) {
        return new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this.allocator, this.requestedBufferSize, this.seekMap.getPosition(l2));
    }

    private ExtractingLoadable createLoadableFromStart() {
        return new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this.allocator, this.requestedBufferSize, 0);
    }

    private void discardSamplesForDisabledTracks(long l2) {
        for (int i2 = 0; i2 < this.trackEnabledStates.length; ++i2) {
            if (this.trackEnabledStates[i2]) continue;
            ((InternalTrackOutput)this.sampleQueues.valueAt(i2)).discardUntil(l2);
        }
    }

    private long getRetryDelayMillis(long l2) {
        return Math.min((l2 - 1) * 1000, 5000);
    }

    private boolean haveFormatsForAllTracks() {
        for (int i2 = 0; i2 < this.sampleQueues.size(); ++i2) {
            if (((InternalTrackOutput)this.sampleQueues.valueAt(i2)).hasFormat()) continue;
            return false;
        }
        return true;
    }

    private boolean isCurrentLoadableExceptionFatal() {
        return this.currentLoadableException instanceof UnrecognizedInputFormatException;
    }

    private boolean isPendingReset() {
        if (this.pendingResetPositionUs != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void maybeStartLoading() {
        boolean bl = false;
        if (this.loadingFinished) return;
        if (this.loader.isLoading()) {
            return;
        }
        if (this.currentLoadableException != null) {
            if (this.isCurrentLoadableExceptionFatal()) return;
            if (this.loadable != null) {
                bl = true;
            }
            Assertions.checkState(bl);
            if (SystemClock.elapsedRealtime() - this.currentLoadableExceptionTimestamp < this.getRetryDelayMillis(this.currentLoadableExceptionCount)) return;
            this.currentLoadableException = null;
            if (!this.prepared) {
                for (int i2 = 0; i2 < this.sampleQueues.size(); ++i2) {
                    ((InternalTrackOutput)this.sampleQueues.valueAt(i2)).clear();
                }
                this.loadable = this.createLoadableFromStart();
            } else if (!this.seekMap.isSeekable() && this.maxTrackDurationUs == -1) {
                for (int i3 = 0; i3 < this.sampleQueues.size(); ++i3) {
                    ((InternalTrackOutput)this.sampleQueues.valueAt(i3)).clear();
                }
                this.loadable = this.createLoadableFromStart();
                this.pendingNextSampleUs = this.downstreamPositionUs;
                this.havePendingNextSampleUs = true;
            }
            this.extractedSampleCountAtStartOfLoad = this.extractedSampleCount;
            this.loader.startLoading((Loader.Loadable)this.loadable, (Loader.Callback)this);
            return;
        }
        this.sampleTimeOffsetUs = 0;
        this.havePendingNextSampleUs = false;
        if (!this.prepared) {
            this.loadable = this.createLoadableFromStart();
        } else {
            Assertions.checkState(this.isPendingReset());
            if (this.maxTrackDurationUs != -1 && this.pendingResetPositionUs >= this.maxTrackDurationUs) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = Long.MIN_VALUE;
                return;
            }
            this.loadable = this.createLoadableFromPositionUs(this.pendingResetPositionUs);
            this.pendingResetPositionUs = Long.MIN_VALUE;
        }
        this.extractedSampleCountAtStartOfLoad = this.extractedSampleCount;
        this.loader.startLoading((Loader.Loadable)this.loadable, (Loader.Callback)this);
    }

    private void notifyLoadError(IOException iOException) {
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean continueBuffering(int n2, long l2) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[n2]);
        this.downstreamPositionUs = l2;
        this.discardSamplesForDisabledTracks(this.downstreamPositionUs);
        if (this.loadingFinished) {
            return true;
        }
        this.maybeStartLoading();
        if (this.isPendingReset()) {
            return false;
        }
        if (((InternalTrackOutput)this.sampleQueues.valueAt(n2)).isEmpty()) return false;
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void disable(int n2) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[n2]);
        --this.enabledTrackCount;
        this.trackEnabledStates[n2] = false;
        if (this.enabledTrackCount != 0) return;
        this.downstreamPositionUs = Long.MIN_VALUE;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.clearState();
        this.allocator.trim(0);
    }

    @Override
    public void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void enable(int n2, long l2) {
        Assertions.checkState(this.prepared);
        boolean bl = !this.trackEnabledStates[n2];
        Assertions.checkState(bl);
        ++this.enabledTrackCount;
        this.trackEnabledStates[n2] = true;
        this.pendingMediaFormat[n2] = true;
        this.pendingDiscontinuities[n2] = false;
        if (this.enabledTrackCount == 1) {
            if (!this.seekMap.isSeekable()) {
                l2 = 0;
            }
            this.downstreamPositionUs = l2;
            this.lastSeekPositionUs = l2;
            this.restartFrom(l2);
        }
    }

    @Override
    public void endTracks() {
        this.tracksBuilt = true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return -3;
        }
        if (this.isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long l2 = Long.MIN_VALUE;
        int n2 = 0;
        while (n2 < this.sampleQueues.size()) {
            l2 = Math.max(l2, ((InternalTrackOutput)this.sampleQueues.valueAt(n2)).getLargestParsedTimestampUs());
            ++n2;
        }
        return this.downstreamPositionUs;
    }

    @Override
    public MediaFormat getFormat(int n2) {
        Assertions.checkState(this.prepared);
        return this.mediaFormats[n2];
    }

    @Override
    public int getTrackCount() {
        return this.sampleQueues.size();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException == null) {
            return;
        }
        if (this.isCurrentLoadableExceptionFatal()) {
            throw this.currentLoadableException;
        }
        int n2 = this.minLoadableRetryCount != -1 ? this.minLoadableRetryCount : (this.seekMap != null && !this.seekMap.isSeekable() ? 6 : 3);
        if (this.currentLoadableExceptionCount <= n2) return;
        throw this.currentLoadableException;
    }

    @Override
    public void onLoadCanceled(Loader.Loadable loadable) {
        if (this.enabledTrackCount > 0) {
            this.restartFrom(this.pendingResetPositionUs);
            return;
        }
        this.clearState();
        this.allocator.trim(0);
    }

    @Override
    public void onLoadCompleted(Loader.Loadable loadable) {
        this.loadingFinished = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        int n2 = this.extractedSampleCount > this.extractedSampleCountAtStartOfLoad ? 1 : this.currentLoadableExceptionCount + 1;
        this.currentLoadableExceptionCount = n2;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        this.notifyLoadError(iOException);
        this.maybeStartLoading();
    }

    @Override
    public boolean prepare(long l2) {
        if (this.prepared) {
            return true;
        }
        if (this.loader == null) {
            this.loader = new Loader("Loader:ExtractorSampleSource");
        }
        this.maybeStartLoading();
        if (this.seekMap != null && this.tracksBuilt && this.haveFormatsForAllTracks()) {
            int n2 = this.sampleQueues.size();
            this.trackEnabledStates = new boolean[n2];
            this.pendingDiscontinuities = new boolean[n2];
            this.pendingMediaFormat = new boolean[n2];
            this.mediaFormats = new MediaFormat[n2];
            this.maxTrackDurationUs = -1;
            for (int i2 = 0; i2 < n2; ++i2) {
                MediaFormat mediaFormat;
                this.mediaFormats[i2] = mediaFormat = ((InternalTrackOutput)this.sampleQueues.valueAt(i2)).getFormat();
                if (mediaFormat.durationUs == -1 || mediaFormat.durationUs <= this.maxTrackDurationUs) continue;
                this.maxTrackDurationUs = mediaFormat.durationUs;
            }
            this.prepared = true;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int readData(int n2, long l2, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        this.downstreamPositionUs = l2;
        if (this.pendingDiscontinuities[n2] || this.isPendingReset()) {
            return -2;
        }
        InternalTrackOutput internalTrackOutput = (InternalTrackOutput)this.sampleQueues.valueAt(n2);
        if (this.pendingMediaFormat[n2]) {
            mediaFormatHolder.format = internalTrackOutput.getFormat();
            mediaFormatHolder.drmInitData = this.drmInitData;
            this.pendingMediaFormat[n2] = false;
            return -4;
        }
        if (internalTrackOutput.getSample(sampleHolder)) {
            n2 = sampleHolder.timeUs < this.lastSeekPositionUs ? 1 : 0;
            int n3 = sampleHolder.flags;
            n2 = n2 != 0 ? 134217728 : 0;
            sampleHolder.flags = n2 | n3;
            if (this.havePendingNextSampleUs) {
                this.sampleTimeOffsetUs = this.pendingNextSampleUs - sampleHolder.timeUs;
                this.havePendingNextSampleUs = false;
            }
            sampleHolder.timeUs += this.sampleTimeOffsetUs;
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
            this.loader.release((Runnable)new /* Unavailable Anonymous Inner Class!! */);
            this.loader = null;
        }
    }

    @Override
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void seekToUs(long l2) {
        Assertions.checkState(this.prepared);
        boolean bl = this.enabledTrackCount > 0;
        Assertions.checkState(bl);
        if (!this.seekMap.isSeekable()) {
            l2 = 0;
        }
        long l3 = this.isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = l2;
        this.lastSeekPositionUs = l2;
        if (l3 == l2) {
            return;
        }
        int n2 = !this.isPendingReset() ? 1 : 0;
        int n3 = 0;
        int n4 = n2;
        for (n2 = n3; n4 != 0 && n2 < this.sampleQueues.size(); n4 &= ((InternalTrackOutput)this.sampleQueues.valueAt((int)n2)).skipToKeyframeBefore((long)l2), ++n2) {
        }
        if (n4 == 0) {
            this.restartFrom(l2);
        }
        n2 = 0;
        while (n2 < this.pendingDiscontinuities.length) {
            this.pendingDiscontinuities[n2] = true;
            ++n2;
        }
    }

    @Override
    public TrackOutput track(int n2) {
        InternalTrackOutput internalTrackOutput;
        InternalTrackOutput internalTrackOutput2 = internalTrackOutput = (InternalTrackOutput)this.sampleQueues.get(n2);
        if (internalTrackOutput == null) {
            internalTrackOutput2 = new InternalTrackOutput(this, this.allocator);
            this.sampleQueues.put(n2, (Object)internalTrackOutput2);
        }
        return internalTrackOutput2;
    }

    public static interface EventListener {
        public void onLoadError(int var1, IOException var2);
    }

}

