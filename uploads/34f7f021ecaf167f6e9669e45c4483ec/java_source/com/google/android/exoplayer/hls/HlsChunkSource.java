/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.SystemClock
 *  android.text.TextUtils
 *  android.util.Log
 *  com.google.android.exoplayer.BehindLiveWindowException
 *  com.google.android.exoplayer.chunk.Chunk
 *  com.google.android.exoplayer.chunk.ChunkOperationHolder
 *  com.google.android.exoplayer.extractor.mp3.Mp3Extractor
 *  com.google.android.exoplayer.extractor.ts.AdtsExtractor
 *  com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster
 *  com.google.android.exoplayer.extractor.ts.TsExtractor
 *  com.google.android.exoplayer.hls.HlsChunkSource$1
 *  com.google.android.exoplayer.hls.HlsChunkSource$2
 *  com.google.android.exoplayer.hls.HlsChunkSource$EncryptionKeyChunk
 *  com.google.android.exoplayer.hls.HlsChunkSource$EventListener
 *  com.google.android.exoplayer.hls.HlsChunkSource$ExposedTrack
 *  com.google.android.exoplayer.hls.HlsChunkSource$MediaPlaylistChunk
 *  com.google.android.exoplayer.hls.HlsExtractorWrapper
 *  com.google.android.exoplayer.hls.HlsMediaPlaylist
 *  com.google.android.exoplayer.hls.HlsMediaPlaylist$Segment
 *  com.google.android.exoplayer.hls.TsChunk
 *  com.google.android.exoplayer.hls.WebvttExtractor
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.HttpDataSource
 *  com.google.android.exoplayer.upstream.HttpDataSource$InvalidResponseCodeException
 *  com.google.android.exoplayer.util.UriUtil
 */
package com.google.android.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.extractor.ts.TsExtractor;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsExtractorWrapper;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.hls.PtsTimestampAdjusterProvider;
import com.google.android.exoplayer.hls.TsChunk;
import com.google.android.exoplayer.hls.Variant;
import com.google.android.exoplayer.hls.WebvttExtractor;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.HttpDataSource;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/*
 * Exception performing whole class analysis ignored.
 */
public class HlsChunkSource
implements HlsTrackSelector.Output {
    private static final String AAC_FILE_EXTENSION = ".aac";
    private static final float BANDWIDTH_FRACTION = 0.8f;
    public static final long DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS = 20000;
    public static final long DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS = 5000;
    public static final long DEFAULT_PLAYLIST_BLACKLIST_MS = 60000;
    private static final double LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS = 2.0;
    private static final String MP3_FILE_EXTENSION = ".mp3";
    private static final String TAG = "HlsChunkSource";
    private static final String VTT_FILE_EXTENSION = ".vtt";
    private static final String WEBVTT_FILE_EXTENSION = ".webvtt";
    private final BandwidthMeter bandwidthMeter;
    private final String baseUri;
    private final DataSource dataSource;
    private long durationUs;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private IOException fatalError;
    private final boolean isMaster;
    private boolean live;
    private final HlsMasterPlaylist masterPlaylist;
    private final long maxBufferDurationToSwitchDownUs;
    private final long minBufferDurationToSwitchUpUs;
    private final HlsPlaylistParser playlistParser;
    private boolean prepareCalled;
    private byte[] scratchSpace;
    private int selectedTrackIndex;
    private int selectedVariantIndex;
    private final PtsTimestampAdjusterProvider timestampAdjusterProvider;
    private final HlsTrackSelector trackSelector;
    private final ArrayList<ExposedTrack> tracks;
    private long[] variantBlacklistTimes;
    private long[] variantLastPlaylistLoadTimesMs;
    private HlsMediaPlaylist[] variantPlaylists;
    private Variant[] variants;

    public HlsChunkSource(boolean bl, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider) {
        this(bl, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, 5000, 20000, null, null);
    }

    public HlsChunkSource(boolean bl, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, long l2, long l3) {
        this(bl, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, l2, l3, null, null);
    }

    public HlsChunkSource(boolean bl, DataSource object, HlsPlaylist object2, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, long l2, long l3, Handler handler, EventListener eventListener) {
        this.isMaster = bl;
        this.dataSource = object;
        this.trackSelector = hlsTrackSelector;
        this.bandwidthMeter = bandwidthMeter;
        this.timestampAdjusterProvider = ptsTimestampAdjusterProvider;
        this.eventListener = eventListener;
        this.eventHandler = handler;
        this.minBufferDurationToSwitchUpUs = 1000 * l2;
        this.maxBufferDurationToSwitchDownUs = 1000 * l3;
        this.baseUri = object2.baseUri;
        this.playlistParser = new HlsPlaylistParser();
        this.tracks = new ArrayList();
        if (object2.type == 0) {
            this.masterPlaylist = (HlsMasterPlaylist)object2;
            return;
        }
        object = new Format("0", "application/x-mpegURL", -1, -1, -1.0f, -1, -1, -1, null, null);
        object2 = new ArrayList();
        object2.add(new Variant(this.baseUri, (Format)object));
        this.masterPlaylist = new HlsMasterPlaylist(this.baseUri, (List<Variant>)object2, Collections.<Variant>emptyList(), Collections.<Variant>emptyList(), null, null);
    }

    static /* synthetic */ EventListener access$400(HlsChunkSource hlsChunkSource) {
        return hlsChunkSource.eventListener;
    }

    private boolean allVariantsBlacklisted() {
        long[] arrl = this.variantBlacklistTimes;
        int n2 = arrl.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            if (arrl[i2] != 0) continue;
            return false;
        }
        return true;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private void clearStaleBlacklistedVariants() {
        long l2 = SystemClock.elapsedRealtime();
        for (int i2 = 0; i2 < this.variantBlacklistTimes.length; ++i2) {
            if (this.variantBlacklistTimes[i2] == 0 || l2 - this.variantBlacklistTimes[i2] <= 60000) continue;
            this.variantBlacklistTimes[i2] = 0;
        }
    }

    private int getLiveNextChunkSequenceNumber(int n2, int n3, int n4) {
        if (n3 == n4) {
            return n2 + 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[n3];
        HlsMediaPlaylist hlsMediaPlaylist2 = this.variantPlaylists[n4];
        double d2 = 0.0;
        n2 -= hlsMediaPlaylist.mediaSequence;
        while (n2 < hlsMediaPlaylist.segments.size()) {
            d2 += ((HlsMediaPlaylist.Segment)hlsMediaPlaylist.segments.get((int)n2)).durationSecs;
            ++n2;
        }
        long l2 = SystemClock.elapsedRealtime();
        if ((d2 = d2 + (double)(l2 - this.variantLastPlaylistLoadTimesMs[n3]) / 1000.0 + 2.0 - (double)(l2 - this.variantLastPlaylistLoadTimesMs[n4]) / 1000.0) < 0.0) {
            return hlsMediaPlaylist2.mediaSequence + hlsMediaPlaylist2.segments.size() + 1;
        }
        for (n2 = hlsMediaPlaylist2.segments.size() - 1; n2 >= 0; --n2) {
            if ((d2 -= ((HlsMediaPlaylist.Segment)hlsMediaPlaylist2.segments.get((int)n2)).durationSecs) >= 0.0) continue;
            return hlsMediaPlaylist2.mediaSequence + n2;
        }
        return hlsMediaPlaylist2.mediaSequence - 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getLiveStartChunkSequenceNumber(int n2) {
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[n2];
        if (hlsMediaPlaylist.segments.size() > 3) {
            n2 = hlsMediaPlaylist.segments.size() - 3;
            do {
                return hlsMediaPlaylist.mediaSequence + n2;
                break;
            } while (true);
        }
        n2 = 0;
        return hlsMediaPlaylist.mediaSequence + n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getNextVariantIndex(TsChunk tsChunk, long l2) {
        this.clearStaleBlacklistedVariants();
        long l3 = this.bandwidthMeter.getBitrateEstimate();
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return this.getVariantIndexForBandwidth(l3);
        }
        if (tsChunk == null) {
            return this.selectedVariantIndex;
        }
        if (l3 == -1) {
            return this.selectedVariantIndex;
        }
        int n2 = this.getVariantIndexForBandwidth(l3);
        if (n2 == this.selectedVariantIndex) {
            return this.selectedVariantIndex;
        }
        l2 = tsChunk.getAdjustedEndTimeUs() - tsChunk.getDurationUs() - l2;
        int n3 = n2;
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) return n3;
        if (n2 > this.selectedVariantIndex) {
            n3 = n2;
            if (l2 < this.maxBufferDurationToSwitchDownUs) return n3;
        }
        if (n2 >= this.selectedVariantIndex) return this.selectedVariantIndex;
        n3 = n2;
        if (l2 > this.minBufferDurationToSwitchUpUs) return n3;
        return this.selectedVariantIndex;
    }

    private int getVariantIndex(Format format) {
        for (int i2 = 0; i2 < this.variants.length; ++i2) {
            if (!this.variants[i2].format.equals(format)) continue;
            return i2;
        }
        throw new IllegalStateException("Invalid format: " + format);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getVariantIndexForBandwidth(long l2) {
        long l3 = l2;
        if (l2 == -1) {
            l3 = 0;
        }
        int n2 = (int)((float)l3 * 0.8f);
        int n3 = -1;
        for (int i2 = 0; i2 < this.variants.length; ++i2) {
            if (this.variantBlacklistTimes[i2] != 0) continue;
            if (this.variants[i2].format.bitrate <= n2) {
                return i2;
            }
            n3 = i2;
        }
        boolean bl = n3 != -1;
        Assertions.checkState(bl);
        return n3;
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String string2, int n2) {
        uri = new DataSpec(uri, 0, -1, null, 1);
        return new EncryptionKeyChunk(this.dataSource, (DataSpec)uri, this.scratchSpace, string2, n2);
    }

    private MediaPlaylistChunk newMediaPlaylistChunk(int n2) {
        Uri uri = UriUtil.resolveToUri((String)this.baseUri, (String)this.variants[n2].url);
        DataSpec dataSpec = new DataSpec(uri, 0, -1, null, 1);
        return new MediaPlaylistChunk(this.dataSource, dataSpec, this.scratchSpace, this.playlistParser, n2, uri.toString());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setEncryptionData(Uri uri, String object, byte[] arrby) {
        Object object2 = object.toLowerCase(Locale.getDefault()).startsWith("0x") ? object.substring(2) : object;
        object2 = new BigInteger((String)object2, 16).toByteArray();
        byte[] arrby2 = new byte[16];
        int n2 = object2.length > 16 ? object2.length - 16 : 0;
        System.arraycopy(object2, n2, arrby2, arrby2.length - object2.length + n2, object2.length - n2);
        this.encryptionKeyUri = uri;
        this.encryptionKey = arrby;
        this.encryptionIvString = object;
        this.encryptionIv = arrby2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setMediaPlaylist(int n2, HlsMediaPlaylist hlsMediaPlaylist) {
        this.variantLastPlaylistLoadTimesMs[n2] = SystemClock.elapsedRealtime();
        this.variantPlaylists[n2] = hlsMediaPlaylist;
        this.live |= hlsMediaPlaylist.live;
        long l2 = this.live ? -1 : hlsMediaPlaylist.durationUs;
        this.durationUs = l2;
    }

    private boolean shouldRerequestLiveMediaPlaylist(int n2) {
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[n2];
        if (SystemClock.elapsedRealtime() - this.variantLastPlaylistLoadTimesMs[n2] >= (long)(hlsMediaPlaylist.targetDurationSecs * 1000 / 2)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void adaptiveTrack(HlsMasterPlaylist object, Variant[] arrvariant) {
        Arrays.sort(arrvariant, new /* Unavailable Anonymous Inner Class!! */);
        int n2 = this.computeDefaultVariantIndex((HlsMasterPlaylist)object, arrvariant, this.bandwidthMeter);
        int n3 = -1;
        int n4 = -1;
        for (int i2 = 0; i2 < arrvariant.length; ++i2) {
            object = arrvariant[i2].format;
            n3 = Math.max(object.width, n3);
            n4 = Math.max(object.height, n4);
        }
        if (n3 <= 0) {
            n3 = 1920;
        }
        if (n4 <= 0) {
            n4 = 1080;
        }
        this.tracks.add(new ExposedTrack(arrvariant, n2, n3, n4));
    }

    protected int computeDefaultVariantIndex(HlsMasterPlaylist hlsMasterPlaylist, Variant[] arrvariant, BandwidthMeter bandwidthMeter) {
        int n2 = 0;
        int n3 = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < arrvariant.length; ++i2) {
            int n4 = hlsMasterPlaylist.variants.indexOf(arrvariant[i2]);
            int n5 = n3;
            if (n4 < n3) {
                n5 = n4;
                n2 = i2;
            }
            n3 = n5;
        }
        return n2;
    }

    @Override
    public void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant) {
        this.tracks.add(new ExposedTrack(variant));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void getChunkOperation(TsChunk tsChunk, long l2, ChunkOperationHolder chunkOperationHolder) {
        long l3;
        int n2 = tsChunk == null ? -1 : this.getVariantIndex(tsChunk.format);
        int n3 = this.getNextVariantIndex(tsChunk, l2);
        boolean bl = tsChunk != null && n2 != n3;
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[n3];
        if (hlsMediaPlaylist == null) {
            chunkOperationHolder.chunk = this.newMediaPlaylistChunk(n3);
            return;
        }
        this.selectedVariantIndex = n3;
        if (this.live) {
            if (tsChunk == null) {
                n2 = this.getLiveStartChunkSequenceNumber(this.selectedVariantIndex);
            } else {
                n2 = n3 = this.getLiveNextChunkSequenceNumber(tsChunk.chunkIndex, n2, this.selectedVariantIndex);
                if (n3 < hlsMediaPlaylist.mediaSequence) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                }
            }
        } else {
            n2 = tsChunk == null ? Util.binarySearchFloor(hlsMediaPlaylist.segments, Long.valueOf(l2), true, true) + hlsMediaPlaylist.mediaSequence : (bl ? Util.binarySearchFloor(hlsMediaPlaylist.segments, Long.valueOf(tsChunk.startTimeUs), true, true) + hlsMediaPlaylist.mediaSequence : tsChunk.getNextChunkIndex());
        }
        if ((n3 = n2 - hlsMediaPlaylist.mediaSequence) >= hlsMediaPlaylist.segments.size()) {
            if (!hlsMediaPlaylist.live) {
                chunkOperationHolder.endOfStream = true;
                return;
            }
            if (!this.shouldRerequestLiveMediaPlaylist(this.selectedVariantIndex)) return;
            chunkOperationHolder.chunk = this.newMediaPlaylistChunk(this.selectedVariantIndex);
            return;
        }
        HlsMediaPlaylist.Segment segment = (HlsMediaPlaylist.Segment)hlsMediaPlaylist.segments.get(n3);
        Object object = UriUtil.resolveToUri((String)hlsMediaPlaylist.baseUri, (String)segment.url);
        if (segment.isEncrypted) {
            hlsMediaPlaylist = UriUtil.resolveToUri((String)hlsMediaPlaylist.baseUri, (String)segment.encryptionKeyUri);
            if (!hlsMediaPlaylist.equals((Object)this.encryptionKeyUri)) {
                chunkOperationHolder.chunk = this.newEncryptionKeyChunk((Uri)hlsMediaPlaylist, segment.encryptionIV, this.selectedVariantIndex);
                return;
            }
            if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                this.setEncryptionData((Uri)hlsMediaPlaylist, segment.encryptionIV, this.encryptionKey);
            }
        } else {
            this.clearEncryptionData();
        }
        hlsMediaPlaylist = new DataSpec((Uri)object, segment.byterangeOffset, segment.byterangeLength, null);
        if (this.live) {
            if (tsChunk == null) {
                l2 = 0;
            } else {
                l3 = tsChunk.getAdjustedEndTimeUs();
                l2 = bl ? tsChunk.getDurationUs() : 0;
                l2 = l3 - l2;
            }
        } else {
            l2 = segment.startTimeUs;
        }
        l3 = (long)(segment.durationSecs * 1000000.0);
        Format format = this.variants[this.selectedVariantIndex].format;
        if ((object = object.getLastPathSegment()).endsWith(".aac")) {
            tsChunk = new HlsExtractorWrapper(0, format, l2, (Extractor)new AdtsExtractor(l2), bl, -1, -1);
        } else if (object.endsWith(".mp3")) {
            tsChunk = new HlsExtractorWrapper(0, format, l2, (Extractor)new Mp3Extractor(l2), bl, -1, -1);
        } else if (object.endsWith(".webvtt") || object.endsWith(".vtt")) {
            tsChunk = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, l2);
            if (tsChunk == null) return;
            tsChunk = new HlsExtractorWrapper(0, format, l2, (Extractor)new WebvttExtractor((PtsTimestampAdjuster)tsChunk), bl, -1, -1);
        } else if (tsChunk == null || tsChunk.discontinuitySequenceNumber != segment.discontinuitySequenceNumber || !format.equals(tsChunk.format)) {
            tsChunk = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, l2);
            if (tsChunk == null) return;
            int n4 = 16;
            object = format.codecs;
            n3 = n4;
            if (!TextUtils.isEmpty((CharSequence)object)) {
                if (MimeTypes.getAudioMediaMimeType((String)object) != "audio/mp4a-latm") {
                    n4 = 16 | 2;
                }
                n3 = n4;
                if (MimeTypes.getVideoMediaMimeType((String)object) != "video/avc") {
                    n3 = n4 | 4;
                }
            }
            tsChunk = new TsExtractor((PtsTimestampAdjuster)tsChunk, n3);
            object = this.tracks.get(this.selectedTrackIndex);
            tsChunk = new HlsExtractorWrapper(0, format, l2, (Extractor)tsChunk, bl, ExposedTrack.access$200((ExposedTrack)object), ExposedTrack.access$300((ExposedTrack)object));
        } else {
            tsChunk = tsChunk.extractorWrapper;
        }
        chunkOperationHolder.chunk = new TsChunk(this.dataSource, (DataSpec)hlsMediaPlaylist, 0, format, l2, l2 + l3, n2, segment.discontinuitySequenceNumber, (HlsExtractorWrapper)tsChunk, this.encryptionKey, this.encryptionIv);
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public Variant getFixedTrackVariant(int n2) {
        Variant[] arrvariant = ExposedTrack.access$000((ExposedTrack)this.tracks.get(n2));
        if (arrvariant.length == 1) {
            return arrvariant[0];
        }
        return null;
    }

    public String getMuxedAudioLanguage() {
        return this.masterPlaylist.muxedAudioLanguage;
    }

    public String getMuxedCaptionLanguage() {
        return this.masterPlaylist.muxedCaptionLanguage;
    }

    public int getSelectedTrackIndex() {
        return this.selectedTrackIndex;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public boolean isLive() {
        return this.live;
    }

    public void maybeThrowError() throws IOException {
        if (this.fatalError != null) {
            throw this.fatalError;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onChunkLoadCompleted(Chunk arrby) {
        if (arrby instanceof MediaPlaylistChunk) {
            arrby = arrby;
            this.scratchSpace = arrby.getDataHolder();
            this.setMediaPlaylist(arrby.variantIndex, arrby.getResult());
            if (this.eventHandler == null || this.eventListener == null) return;
            {
                arrby = arrby.getRawResponse();
                this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
                return;
            }
        } else {
            if (!(arrby instanceof EncryptionKeyChunk)) return;
            {
                arrby = (EncryptionKeyChunk)arrby;
                this.scratchSpace = arrby.getDataHolder();
                this.setEncryptionData(arrby.dataSpec.uri, arrby.iv, arrby.getResult());
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onChunkLoadError(Chunk chunk, IOException iOException) {
        int n2;
        if (chunk.bytesLoaded() == 0 && (chunk instanceof TsChunk || chunk instanceof MediaPlaylistChunk || chunk instanceof EncryptionKeyChunk) && iOException instanceof HttpDataSource.InvalidResponseCodeException && ((n2 = ((HttpDataSource.InvalidResponseCodeException)iOException).responseCode) == 404 || n2 == 410)) {
            int n3 = chunk instanceof TsChunk ? this.getVariantIndex(((TsChunk)chunk).format) : (chunk instanceof MediaPlaylistChunk ? ((MediaPlaylistChunk)chunk).variantIndex : ((EncryptionKeyChunk)chunk).variantIndex);
            boolean bl = this.variantBlacklistTimes[n3] != 0;
            this.variantBlacklistTimes[n3] = SystemClock.elapsedRealtime();
            if (bl) {
                Log.w((String)"HlsChunkSource", (String)("Already blacklisted variant (" + n2 + "): " + (Object)chunk.dataSpec.uri));
                return false;
            }
            if (!this.allVariantsBlacklisted()) {
                Log.w((String)"HlsChunkSource", (String)("Blacklisted variant (" + n2 + "): " + (Object)chunk.dataSpec.uri));
                return true;
            }
            Log.w((String)"HlsChunkSource", (String)("Final variant not blacklisted (" + n2 + "): " + (Object)chunk.dataSpec.uri));
            this.variantBlacklistTimes[n3] = 0;
            return false;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean prepare() {
        if (!this.prepareCalled) {
            this.prepareCalled = true;
            try {
                this.trackSelector.selectTracks(this.masterPlaylist, this);
                this.selectTrack(0);
            }
            catch (IOException var1_1) {
                this.fatalError = var1_1;
            }
        }
        if (this.fatalError == null) {
            return true;
        }
        return false;
    }

    public void reset() {
        this.fatalError = null;
    }

    public void seek() {
        if (this.isMaster) {
            this.timestampAdjusterProvider.reset();
        }
    }

    public void selectTrack(int n2) {
        this.selectedTrackIndex = n2;
        ExposedTrack exposedTrack = this.tracks.get(this.selectedTrackIndex);
        this.selectedVariantIndex = ExposedTrack.access$100((ExposedTrack)exposedTrack);
        this.variants = ExposedTrack.access$000((ExposedTrack)exposedTrack);
        this.variantPlaylists = new HlsMediaPlaylist[this.variants.length];
        this.variantLastPlaylistLoadTimesMs = new long[this.variants.length];
        this.variantBlacklistTimes = new long[this.variants.length];
    }
}

