.class public final Lcom/google/android/exoplayer/util/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SCRATCH_BITS:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 41
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    .line 45
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->SCRATCH_BITS:Lcom/google/android/exoplayer/util/ParsableBitArray;

    return-void

    .line 29
    nop

    :array_22
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    .line 35
    :array_46
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    .line 41
    :array_6a
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 108
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 96
    .local v1, "position":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x5

    .line 97
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xfc

    shr-int/lit8 v3, v3, 0x2

    or-int v0, v2, v3

    .line 98
    .local v0, "nblks":I
    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2
.end method

.method public static parseDtsAudioSampleCount([B)I
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 85
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int v0, v1, v2

    .line 86
    .local v0, "nblks":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public static parseDtsFormat([BLjava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 19
    .param p0, "frame"    # [B
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v11, Lcom/google/android/exoplayer/util/DtsUtil;->SCRATCH_BITS:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 62
    .local v11, "frameBits":Lcom/google/android/exoplayer/util/ParsableBitArray;
    invoke-virtual {v11, p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([B)V

    .line 63
    const/16 v0, 0x3c

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 64
    const/4 v0, 0x6

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 65
    .local v10, "amode":I
    sget-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v6, v0, v10

    .line 66
    .local v6, "channelCount":I
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 67
    .local v13, "sfreq":I
    sget-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v7, v0, v13

    .line 68
    .local v7, "sampleRate":I
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 69
    .local v12, "rate":I
    sget-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v0, v0

    if-lt v12, v0, :cond_43

    const/4 v2, -0x1

    .line 71
    .local v2, "bitrate":I
    :goto_27
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x1

    :goto_34
    add-int/2addr v6, v0

    .line 73
    const-string v1, "audio/vnd.dts"

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 69
    .end local v2    # "bitrate":I
    :cond_43
    sget-object v0, Lcom/google/android/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v0, v0, v12

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v2, v0, 0x2

    goto :goto_27

    .line 72
    .restart local v2    # "bitrate":I
    :cond_4c
    const/4 v0, 0x0

    goto :goto_34
.end method
