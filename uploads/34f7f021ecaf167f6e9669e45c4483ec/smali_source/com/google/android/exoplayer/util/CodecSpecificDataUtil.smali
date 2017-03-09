.class public final Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 31
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 27
    nop

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 31
    :array_22
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 49
    :array_40
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(II)[B
    .registers 9
    .param p0, "sampleRate"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 146
    const/4 v3, -0x1

    .line 147
    .local v3, "sampleRateIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_11

    .line 148
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v4, v4, v2

    if-ne p0, v4, :cond_e

    .line 149
    move v3, v2

    .line 147
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    :cond_11
    const/4 v0, -0x1

    .line 153
    .local v0, "channelConfig":I
    const/4 v2, 0x0

    :goto_13
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_22

    .line 154
    sget-object v4, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v4, v4, v2

    if-ne p1, v4, :cond_1f

    .line 155
    move v0, v2

    .line 153
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 159
    :cond_22
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 160
    .local v1, "csd":[B
    const/4 v4, 0x0

    shr-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 161
    const/4 v4, 0x1

    and-int/lit8 v5, v3, 0x1

    shl-int/lit8 v5, v5, 0x7

    shl-int/lit8 v6, v0, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 162
    return-object v1
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .registers 7
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .prologue
    .line 132
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 133
    .local v0, "audioSpecificConfig":[B
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    return-object v0
.end method

.method public static buildNalUnit([BII)[B
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    add-int/2addr v1, p2

    new-array v0, v1, [B

    .line 175
    .local v0, "nalUnit":[B
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    sget-object v1, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 221
    array-length v2, p0

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    sub-int v0, v2, v3

    .line 222
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_7
    if-gt v1, v0, :cond_13

    .line 223
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 227
    .end local v1    # "i":I
    :goto_f
    return v1

    .line 222
    .restart local v1    # "i":I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 227
    :cond_13
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private static isNalStartCode([BI)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    if-gt v2, v3, :cond_9

    .line 246
    :cond_8
    :goto_8
    return v1

    .line 241
    :cond_9
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_a
    sget-object v2, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 242
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_8

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 246
    :cond_1c
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 13
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 87
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 88
    .local v1, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 89
    .local v0, "audioObjectType":I
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 91
    .local v4, "frequencyIndex":I
    const/16 v6, 0xf

    if-ne v4, v6, :cond_58

    .line 92
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 97
    .local v5, "sampleRate":I
    :goto_1d
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 98
    .local v2, "channelConfiguration":I
    if-eq v0, v10, :cond_27

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_41

    .line 104
    :cond_27
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 105
    const/16 v6, 0xf

    if-ne v4, v6, :cond_65

    .line 106
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 111
    :goto_35
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 112
    const/16 v6, 0x16

    if-ne v0, v6, :cond_41

    .line 114
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 117
    :cond_41
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v6, v2

    .line 118
    .local v3, "channelCount":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_72

    :goto_48
    invoke-static {v7}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 94
    .end local v2    # "channelConfiguration":I
    .end local v3    # "channelCount":I
    .end local v5    # "sampleRate":I
    :cond_58
    if-ge v4, v11, :cond_63

    move v6, v7

    :goto_5b
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 95
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    .restart local v5    # "sampleRate":I
    goto :goto_1d

    .end local v5    # "sampleRate":I
    :cond_63
    move v6, v8

    .line 94
    goto :goto_5b

    .line 108
    .restart local v2    # "channelConfiguration":I
    .restart local v5    # "sampleRate":I
    :cond_65
    if-ge v4, v11, :cond_70

    move v6, v7

    :goto_68
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 109
    sget-object v6, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    goto :goto_35

    :cond_70
    move v6, v8

    .line 108
    goto :goto_68

    .restart local v3    # "channelCount":I
    :cond_72
    move v7, v8

    .line 118
    goto :goto_48
.end method

.method public static splitNalUnits([B)[[B
    .registers 10
    .param p0, "data"    # [B

    .prologue
    const/4 v8, 0x0

    .line 192
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v7

    if-nez v7, :cond_b

    .line 194
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 210
    :goto_a
    return-object v7

    .line 196
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 199
    .local v3, "nalUnitIndex":I
    :cond_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v7, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v7, v7

    add-int/2addr v7, v3

    invoke-static {p0, v7}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v3

    .line 201
    const/4 v7, -0x1

    if-ne v3, v7, :cond_11

    .line 202
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [[B

    .line 203
    .local v4, "split":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5d

    .line 204
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 205
    .local v5, "startIndex":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_5b

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    .local v0, "endIndex":I
    :goto_4e
    sub-int v7, v0, v5

    new-array v2, v7, [B

    .line 207
    .local v2, "nal":[B
    array-length v7, v2

    invoke-static {p0, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    aput-object v2, v4, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 205
    .end local v0    # "endIndex":I
    .end local v2    # "nal":[B
    :cond_5b
    array-length v0, p0

    goto :goto_4e

    .end local v5    # "startIndex":I
    :cond_5d
    move-object v7, v4

    .line 210
    goto :goto_a
.end method
