/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.media.MediaFormat
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  com.google.android.exoplayer.MediaFormat$1
 */
package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class MediaFormat
implements Parcelable {
    public static final Parcelable.Creator<MediaFormat> CREATOR = new /* Unavailable Anonymous Inner Class!! */;
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final boolean adaptive;
    public final int bitrate;
    public final int channelCount;
    public final long durationUs;
    public final int encoderDelay;
    public final int encoderPadding;
    private android.media.MediaFormat frameworkMediaFormat;
    private int hashCode;
    public final int height;
    public final List<byte[]> initializationData;
    public final String language;
    public final int maxHeight;
    public final int maxInputSize;
    public final int maxWidth;
    public final String mimeType;
    public final int pcmEncoding;
    public final float pixelWidthHeightRatio;
    public final byte[] projectionData;
    public final int rotationDegrees;
    public final int sampleRate;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final String trackId;
    public final int width;

    /*
     * Enabled aggressive block sorting
     */
    MediaFormat(Parcel parcel) {
        this.trackId = parcel.readString();
        this.mimeType = parcel.readString();
        this.bitrate = parcel.readInt();
        this.maxInputSize = parcel.readInt();
        this.durationUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.language = parcel.readString();
        this.subsampleOffsetUs = parcel.readLong();
        this.initializationData = new ArrayList<byte[]>();
        parcel.readList(this.initializationData, null);
        boolean bl = parcel.readInt() == 1;
        this.adaptive = bl;
        this.maxWidth = parcel.readInt();
        this.maxHeight = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        boolean bl2 = parcel.readInt() != 0;
        byte[] arrby = bl2 ? parcel.createByteArray() : null;
        this.projectionData = arrby;
        this.stereoMode = parcel.readInt();
    }

    MediaFormat(String list, String string2, int n2, int n3, long l2, int n4, int n5, int n6, float f2, int n7, int n8, String string3, long l3, List<byte[]> list2, boolean bl, int n9, int n10, int n11, int n12, int n13, byte[] arrby, int n14) {
        this.trackId = list;
        this.mimeType = Assertions.checkNotEmpty(string2);
        this.bitrate = n2;
        this.maxInputSize = n3;
        this.durationUs = l2;
        this.width = n4;
        this.height = n5;
        this.rotationDegrees = n6;
        this.pixelWidthHeightRatio = f2;
        this.channelCount = n7;
        this.sampleRate = n8;
        this.language = string3;
        this.subsampleOffsetUs = l3;
        list = list2;
        if (list2 == null) {
            list = Collections.emptyList();
        }
        this.initializationData = list;
        this.adaptive = bl;
        this.maxWidth = n9;
        this.maxHeight = n10;
        this.pcmEncoding = n11;
        this.encoderDelay = n12;
        this.encoderPadding = n13;
        this.projectionData = arrby;
        this.stereoMode = n14;
    }

    public static MediaFormat createAudioFormat(String string2, String string3, int n2, int n3, long l2, int n4, int n5, List<byte[]> list, String string4) {
        return MediaFormat.createAudioFormat(string2, string3, n2, n3, l2, n4, n5, list, string4, -1);
    }

    public static MediaFormat createAudioFormat(String string2, String string3, int n2, int n3, long l2, int n4, int n5, List<byte[]> list, String string4, int n6) {
        return new MediaFormat(string2, string3, n2, n3, l2, -1, -1, -1, -1.0f, n4, n5, string4, Long.MAX_VALUE, list, false, -1, -1, n6, -1, -1, null, -1);
    }

    public static MediaFormat createFormatForMimeType(String string2, String string3, int n2, long l2) {
        return new MediaFormat(string2, string3, n2, -1, l2, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createId3Format() {
        return MediaFormat.createFormatForMimeType(null, "application/id3", -1, -1);
    }

    public static MediaFormat createImageFormat(String string2, String string3, int n2, long l2, List<byte[]> list, String string4) {
        return new MediaFormat(string2, string3, n2, -1, l2, -1, -1, -1, -1.0f, -1, -1, string4, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createTextFormat(String string2, String string3, int n2, long l2, String string4) {
        return MediaFormat.createTextFormat(string2, string3, n2, l2, string4, Long.MAX_VALUE);
    }

    public static MediaFormat createTextFormat(String string2, String string3, int n2, long l2, String string4, long l3) {
        return new MediaFormat(string2, string3, n2, -1, l2, -1, -1, -1, -1.0f, -1, -1, string4, l3, null, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createVideoFormat(String string2, String string3, int n2, int n3, long l2, int n4, int n5, List<byte[]> list) {
        return MediaFormat.createVideoFormat(string2, string3, n2, n3, l2, n4, n5, list, -1, -1.0f, null, -1);
    }

    public static MediaFormat createVideoFormat(String string2, String string3, int n2, int n3, long l2, int n4, int n5, List<byte[]> list, int n6, float f2) {
        return new MediaFormat(string2, string3, n2, n3, l2, n4, n5, n6, f2, -1, -1, null, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createVideoFormat(String string2, String string3, int n2, int n3, long l2, int n4, int n5, List<byte[]> list, int n6, float f2, byte[] arrby, int n7) {
        return new MediaFormat(string2, string3, n2, n3, l2, n4, n5, n6, f2, -1, -1, null, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, arrby, n7);
    }

    @TargetApi(value=16)
    private static final void maybeSetIntegerV16(android.media.MediaFormat mediaFormat, String string2, int n2) {
        if (n2 != -1) {
            mediaFormat.setInteger(string2, n2);
        }
    }

    @TargetApi(value=16)
    private static final void maybeSetStringV16(android.media.MediaFormat mediaFormat, String string2, String string3) {
        if (string3 != null) {
            mediaFormat.setString(string2, string3);
        }
    }

    public MediaFormat copyAsAdaptive(String string2) {
        return new MediaFormat(string2, this.mimeType, -1, -1, this.durationUs, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, true, this.maxWidth, this.maxHeight, -1, -1, -1, null, this.stereoMode);
    }

    public MediaFormat copyWithDurationUs(long l2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, l2, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithFixedTrackInfo(String string2, int n2, int n3, int n4, String string3) {
        return new MediaFormat(string2, this.mimeType, n2, this.maxInputSize, this.durationUs, n3, n4, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, string3, this.subsampleOffsetUs, this.initializationData, this.adaptive, -1, -1, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithGaplessInfo(int n2, int n3) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, n2, n3, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithLanguage(String string2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, string2, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithMaxInputSize(int n2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, n2, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithMaxVideoDimensions(int n2, int n3) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, n2, n3, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithSubsampleOffsetUs(long l2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, l2, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null || this.getClass() != object.getClass()) {
            return false;
        }
        object = (MediaFormat)object;
        if (!(this.adaptive == object.adaptive && this.bitrate == object.bitrate && this.maxInputSize == object.maxInputSize && this.durationUs == object.durationUs && this.width == object.width && this.height == object.height && this.rotationDegrees == object.rotationDegrees && this.pixelWidthHeightRatio == object.pixelWidthHeightRatio && this.maxWidth == object.maxWidth && this.maxHeight == object.maxHeight && this.channelCount == object.channelCount && this.sampleRate == object.sampleRate && this.pcmEncoding == object.pcmEncoding && this.encoderDelay == object.encoderDelay && this.encoderPadding == object.encoderPadding && this.subsampleOffsetUs == object.subsampleOffsetUs && Util.areEqual(this.trackId, object.trackId) && Util.areEqual(this.language, object.language) && Util.areEqual(this.mimeType, object.mimeType) && this.initializationData.size() == object.initializationData.size() && Arrays.equals(this.projectionData, object.projectionData) && this.stereoMode == object.stereoMode)) {
            return false;
        }
        for (int i2 = 0; i2 < this.initializationData.size(); ++i2) {
            if (Arrays.equals(this.initializationData.get(i2), object.initializationData.get(i2))) continue;
            return false;
        }
        return true;
    }

    @SuppressLint(value={"InlinedApi"})
    @TargetApi(value=16)
    public final android.media.MediaFormat getFrameworkMediaFormatV16() {
        if (this.frameworkMediaFormat == null) {
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", this.mimeType);
            MediaFormat.maybeSetStringV16(mediaFormat, "language", this.language);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "max-input-size", this.maxInputSize);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "width", this.width);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "height", this.height);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "rotation-degrees", this.rotationDegrees);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "max-width", this.maxWidth);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "max-height", this.maxHeight);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "channel-count", this.channelCount);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "sample-rate", this.sampleRate);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "encoder-delay", this.encoderDelay);
            MediaFormat.maybeSetIntegerV16(mediaFormat, "encoder-padding", this.encoderPadding);
            for (int i2 = 0; i2 < this.initializationData.size(); ++i2) {
                mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap(this.initializationData.get(i2)));
            }
            if (this.durationUs != -1) {
                mediaFormat.setLong("durationUs", this.durationUs);
            }
            this.frameworkMediaFormat = mediaFormat;
        }
        return this.frameworkMediaFormat;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n2 = 0;
        if (this.hashCode != 0) return this.hashCode;
        int n3 = this.trackId == null ? 0 : this.trackId.hashCode();
        int n4 = this.mimeType == null ? 0 : this.mimeType.hashCode();
        int n5 = this.bitrate;
        int n6 = this.maxInputSize;
        int n7 = this.width;
        int n8 = this.height;
        int n9 = this.rotationDegrees;
        int n10 = Float.floatToRawIntBits(this.pixelWidthHeightRatio);
        int n11 = (int)this.durationUs;
        int n12 = this.adaptive ? 1231 : 1237;
        int n13 = this.maxWidth;
        int n14 = this.maxHeight;
        int n15 = this.channelCount;
        int n16 = this.sampleRate;
        int n17 = this.pcmEncoding;
        int n18 = this.encoderDelay;
        int n19 = this.encoderPadding;
        if (this.language != null) {
            n2 = this.language.hashCode();
        }
        n4 = ((((((((((((((((((n3 + 527) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31 + n11) * 31 + n12) * 31 + n13) * 31 + n14) * 31 + n15) * 31 + n16) * 31 + n17) * 31 + n18) * 31 + n19) * 31 + n2) * 31 + (int)this.subsampleOffsetUs;
        n3 = 0;
        do {
            if (n3 >= this.initializationData.size()) {
                this.hashCode = (n4 * 31 + Arrays.hashCode(this.projectionData)) * 31 + this.stereoMode;
                return this.hashCode;
            }
            n4 = n4 * 31 + Arrays.hashCode(this.initializationData.get(n3));
            ++n3;
        } while (true);
    }

    @Deprecated
    @TargetApi(value=16)
    final void setFrameworkFormatV16(android.media.MediaFormat mediaFormat) {
        this.frameworkMediaFormat = mediaFormat;
    }

    public String toString() {
        return "MediaFormat(" + this.trackId + ", " + this.mimeType + ", " + this.bitrate + ", " + this.maxInputSize + ", " + this.width + ", " + this.height + ", " + this.rotationDegrees + ", " + this.pixelWidthHeightRatio + ", " + this.channelCount + ", " + this.sampleRate + ", " + this.language + ", " + this.durationUs + ", " + this.adaptive + ", " + this.maxWidth + ", " + this.maxHeight + ", " + this.pcmEncoding + ", " + this.encoderDelay + ", " + this.encoderPadding + ")";
    }

    /*
     * Enabled aggressive block sorting
     */
    public void writeToParcel(Parcel parcel, int n2) {
        int n3 = 1;
        parcel.writeString(this.trackId);
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.bitrate);
        parcel.writeInt(this.maxInputSize);
        parcel.writeLong(this.durationUs);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeFloat(this.pixelWidthHeightRatio);
        parcel.writeInt(this.channelCount);
        parcel.writeInt(this.sampleRate);
        parcel.writeString(this.language);
        parcel.writeLong(this.subsampleOffsetUs);
        parcel.writeList(this.initializationData);
        n2 = this.adaptive ? 1 : 0;
        parcel.writeInt(n2);
        parcel.writeInt(this.maxWidth);
        parcel.writeInt(this.maxHeight);
        parcel.writeInt(this.pcmEncoding);
        parcel.writeInt(this.encoderDelay);
        parcel.writeInt(this.encoderPadding);
        n2 = this.projectionData != null ? n3 : 0;
        parcel.writeInt(n2);
        if (this.projectionData != null) {
            parcel.writeByteArray(this.projectionData);
        }
        parcel.writeInt(this.stereoMode);
    }
}

