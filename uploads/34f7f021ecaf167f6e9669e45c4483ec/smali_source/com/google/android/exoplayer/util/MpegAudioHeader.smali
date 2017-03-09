.class public final Lcom/google/android/exoplayer/util/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0xe

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 33
    new-array v0, v4, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    .line 33
    nop

    :array_42
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 34
    :array_4c
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 36
    :array_6c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 38
    :array_8c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    .line 40
    :array_ac
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    .line 42
    :array_cc
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .registers 14
    .param p0, "header"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, -0x200000

    const/4 v9, 0x3

    const/4 v7, -0x1

    .line 49
    and-int v8, p0, v10

    if-eq v8, v10, :cond_b

    .line 104
    :cond_a
    :goto_a
    return v7

    .line 53
    :cond_b
    ushr-int/lit8 v8, p0, 0x13

    and-int/lit8 v6, v8, 0x3

    .line 54
    .local v6, "version":I
    if-eq v6, v11, :cond_a

    .line 58
    ushr-int/lit8 v8, p0, 0x11

    and-int/lit8 v2, v8, 0x3

    .line 59
    .local v2, "layer":I
    if-eqz v2, :cond_a

    .line 63
    ushr-int/lit8 v8, p0, 0xc

    and-int/lit8 v1, v8, 0xf

    .line 64
    .local v1, "bitrateIndex":I
    if-eqz v1, :cond_a

    const/16 v8, 0xf

    if-eq v1, v8, :cond_a

    .line 69
    ushr-int/lit8 v8, p0, 0xa

    and-int/lit8 v5, v8, 0x3

    .line 70
    .local v5, "samplingRateIndex":I
    if-eq v5, v9, :cond_a

    .line 74
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v7, v5

    .line 75
    .local v4, "samplingRate":I
    if-ne v6, v12, :cond_44

    .line 77
    div-int/lit8 v4, v4, 0x2

    .line 84
    :cond_2f
    :goto_2f
    ushr-int/lit8 v7, p0, 0x9

    and-int/lit8 v3, v7, 0x1

    .line 85
    .local v3, "padding":I
    if-ne v2, v9, :cond_50

    .line 87
    if-ne v6, v9, :cond_49

    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 88
    .local v0, "bitrate":I
    :goto_3d
    mul-int/lit16 v7, v0, 0x2ee0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x4

    goto :goto_a

    .line 78
    .end local v0    # "bitrate":I
    .end local v3    # "padding":I
    :cond_44
    if-nez v6, :cond_2f

    .line 80
    div-int/lit8 v4, v4, 0x4

    goto :goto_2f

    .line 87
    .restart local v3    # "padding":I
    :cond_49
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_3d

    .line 91
    :cond_50
    if-ne v6, v9, :cond_6a

    .line 92
    if-ne v2, v12, :cond_63

    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 99
    .restart local v0    # "bitrate":I
    :goto_5a
    if-ne v6, v9, :cond_71

    .line 101
    const v7, 0x23280

    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_a

    .line 92
    .end local v0    # "bitrate":I
    :cond_63
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_5a

    .line 95
    :cond_6a
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .restart local v0    # "bitrate":I
    goto :goto_5a

    .line 104
    :cond_71
    if-ne v2, v11, :cond_7a

    const v7, 0x11940

    :goto_76
    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_a

    :cond_7a
    const v7, 0x23280

    goto :goto_76
.end method

.method public static populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z
    .registers 15
    .param p0, "headerData"    # I
    .param p1, "header"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .prologue
    .line 117
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    const/high16 v6, -0x200000

    if-eq v0, v6, :cond_9

    .line 118
    const/4 v0, 0x0

    .line 177
    :goto_8
    return v0

    .line 121
    :cond_9
    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v1, v0, 0x3

    .line 122
    .local v1, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_12

    .line 123
    const/4 v0, 0x0

    goto :goto_8

    .line 126
    :cond_12
    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v10, v0, 0x3

    .line 127
    .local v10, "layer":I
    if-nez v10, :cond_1a

    .line 128
    const/4 v0, 0x0

    goto :goto_8

    .line 131
    :cond_1a
    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v9, v0, 0xf

    .line 132
    .local v9, "bitrateIndex":I
    if-eqz v9, :cond_24

    const/16 v0, 0xf

    if-ne v9, v0, :cond_26

    .line 134
    :cond_24
    const/4 v0, 0x0

    goto :goto_8

    .line 137
    :cond_26
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v12, v0, 0x3

    .line 138
    .local v12, "samplingRateIndex":I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_2f

    .line 139
    const/4 v0, 0x0

    goto :goto_8

    .line 142
    :cond_2f
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v0, v12

    .line 143
    .local v4, "sampleRate":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_66

    .line 145
    div-int/lit8 v4, v4, 0x2

    .line 151
    :cond_38
    :goto_38
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v11, v0, 0x1

    .line 153
    .local v11, "padding":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_72

    .line 155
    const/4 v0, 0x3

    if-ne v1, v0, :cond_6b

    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 156
    .local v8, "bitrate":I
    :goto_48
    mul-int/lit16 v0, v8, 0x2ee0

    div-int/2addr v0, v4

    add-int/2addr v0, v11

    mul-int/lit8 v3, v0, 0x4

    .line 157
    .local v3, "frameSize":I
    const/16 v7, 0x180

    .line 173
    .local v7, "samplesPerFrame":I
    :goto_50
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v6, v10, 0x3

    aget-object v2, v0, v6

    .line 174
    .local v2, "mimeType":Ljava/lang/String;
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_ac

    const/4 v5, 0x1

    .line 175
    .local v5, "channels":I
    :goto_5e
    mul-int/lit16 v6, v8, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 177
    const/4 v0, 0x1

    goto :goto_8

    .line 146
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "frameSize":I
    .end local v5    # "channels":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    .end local v11    # "padding":I
    :cond_66
    if-nez v1, :cond_38

    .line 148
    div-int/lit8 v4, v4, 0x4

    goto :goto_38

    .line 155
    .restart local v11    # "padding":I
    :cond_6b
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_48

    .line 160
    :cond_72
    const/4 v0, 0x3

    if-ne v1, v0, :cond_8f

    .line 162
    const/4 v0, 0x2

    if-ne v10, v0, :cond_88

    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 163
    .restart local v8    # "bitrate":I
    :goto_7e
    const/16 v7, 0x480

    .line 164
    .restart local v7    # "samplesPerFrame":I
    const v0, 0x23280

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_50

    .line 162
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    :cond_88
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_7e

    .line 167
    :cond_8f
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 168
    .restart local v8    # "bitrate":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_a5

    const/16 v7, 0x240

    .line 169
    .restart local v7    # "samplesPerFrame":I
    :goto_9a
    const/4 v0, 0x1

    if-ne v10, v0, :cond_a8

    const v0, 0x11940

    :goto_a0
    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_50

    .line 168
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    :cond_a5
    const/16 v7, 0x480

    goto :goto_9a

    .line 169
    .restart local v7    # "samplesPerFrame":I
    :cond_a8
    const v0, 0x23280

    goto :goto_a0

    .line 174
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "frameSize":I
    :cond_ac
    const/4 v5, 0x2

    goto :goto_5e
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .registers 8
    .param p1, "version"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "frameSize"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channels"    # I
    .param p6, "bitrate"    # I
    .param p7, "samplesPerFrame"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->version:I

    .line 198
    iput-object p2, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 199
    iput p3, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    .line 200
    iput p4, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    .line 201
    iput p5, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    .line 202
    iput p6, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->bitrate:I

    .line 203
    iput p7, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    .line 204
    return-void
.end method
