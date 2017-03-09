.class public final Lcom/google/android/exoplayer/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;,
        Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer/DecoderInfo;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/DecoderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/exoplayer/DecoderInfo;

    const-string v1, "OMX.google.raw.decoder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer/DecoderInfo;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 5
    .param p0, "avcLevel"    # I

    .prologue
    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    .line 364
    sparse-switch p0, :sswitch_data_32

    .line 380
    const/4 v0, -0x1

    :goto_e
    :sswitch_e
    return v0

    :sswitch_f
    move v0, v1

    .line 367
    goto :goto_e

    :sswitch_11
    move v0, v1

    .line 368
    goto :goto_e

    :sswitch_13
    move v0, v1

    .line 369
    goto :goto_e

    .line 370
    :sswitch_15
    const v0, 0x31800

    goto :goto_e

    :sswitch_19
    move v0, v2

    .line 371
    goto :goto_e

    :sswitch_1b
    move v0, v2

    .line 372
    goto :goto_e

    .line 373
    :sswitch_1d
    const v0, 0xe1000

    goto :goto_e

    .line 374
    :sswitch_21
    const/high16 v0, 0x140000

    goto :goto_e

    :sswitch_24
    move v0, v3

    .line 375
    goto :goto_e

    :sswitch_26
    move v0, v3

    .line 376
    goto :goto_e

    .line 377
    :sswitch_28
    const/high16 v0, 0x220000

    goto :goto_e

    .line 378
    :sswitch_2b
    const v0, 0x564000

    goto :goto_e

    .line 379
    :sswitch_2f
    const/high16 v0, 0x900000

    goto :goto_e

    .line 364
    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_11
        0x20 -> :sswitch_13
        0x40 -> :sswitch_15
        0x80 -> :sswitch_19
        0x100 -> :sswitch_1b
        0x200 -> :sswitch_1d
        0x400 -> :sswitch_21
        0x800 -> :sswitch_24
        0x1000 -> :sswitch_26
        0x2000 -> :sswitch_28
        0x4000 -> :sswitch_2b
        0x8000 -> :sswitch_2f
    .end sparse-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/DecoderInfo;

    goto :goto_b
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    .registers 10
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/DecoderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x15

    .line 120
    const-class v5, Lcom/google/android/exoplayer/MediaCodecUtil;

    monitor-enter v5

    :try_start_5
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    .line 121
    .local v2, "key":Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    sget-object v4, Lcom/google/android/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_83

    .line 122
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    if-eqz v0, :cond_17

    move-object v1, v0

    .line 140
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    :goto_15
    monitor-exit v5

    return-object v1

    .line 125
    .end local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .restart local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    :cond_17
    :try_start_17
    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v4, v6, :cond_7c

    new-instance v3, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    .line 127
    .local v3, "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    :goto_20
    invoke-static {v2, v3}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz p1, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_71

    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-gt v6, v4, :cond_71

    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_71

    .line 131
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    .end local v3    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    .line 132
    .restart local v3    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v2, v3}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 134
    const-string v6, "MediaCodecUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Assuming: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v4, 0x0

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/DecoderInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    sget-object v4, Lcom/google/android/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 140
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .restart local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    goto :goto_15

    .line 125
    .end local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .end local v3    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    .restart local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    :cond_7c
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V
    :try_end_82
    .catchall {:try_start_17 .. :try_end_82} :catchall_83

    goto :goto_20

    .line 120
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .end local v2    # "key":Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    :catchall_83
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getDecoderInfosInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;
    .registers 20
    .param p0, "key"    # Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/DecoderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v4, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 148
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v8

    .line 149
    .local v8, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v10

    .line 151
    .local v10, "secureDecodersExplicit":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    if-ge v6, v8, :cond_7c

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 153
    .local v2, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "codecName":Ljava/lang/String;
    invoke-static {v2, v3, v10}, Lcom/google/android/exoplayer/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_de

    .line 155
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v14, :cond_de

    aget-object v11, v13, v12

    .line 156
    .local v11, "supportedType":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_ad

    move-result v15

    if-eqz v15, :cond_56

    .line 158
    :try_start_34
    invoke-virtual {v2, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 159
    .local v1, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v9

    .line 160
    .local v9, "secure":Z
    if-eqz v10, :cond_46

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v15, v9, :cond_4e

    :cond_46
    if-nez v10, :cond_59

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v15, :cond_59

    .line 162
    :cond_4e
    new-instance v15, Lcom/google/android/exoplayer/DecoderInfo;

    invoke-direct {v15, v3, v1}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v9    # "secure":Z
    :cond_56
    :goto_56
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    .line 163
    .restart local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v9    # "secure":Z
    :cond_59
    if-nez v10, :cond_56

    if-eqz v9, :cond_56

    .line 164
    new-instance v15, Lcom/google/android/exoplayer/DecoderInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".secure"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v1}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_7c} :catch_7d

    .line 183
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v9    # "secure":Z
    .end local v11    # "supportedType":Ljava/lang/String;
    :cond_7c
    return-object v4

    .line 168
    .restart local v2    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "codecName":Ljava/lang/String;
    .restart local v11    # "supportedType":Ljava/lang/String;
    :catch_7d
    move-exception v5

    .line 169
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7e
    sget v15, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v16, 0x17

    move/from16 v0, v16

    if-gt v15, v0, :cond_b5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b5

    .line 171
    const-string v15, "MediaCodecUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping codec "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (failed to query capabilities)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_ac} :catch_ad

    goto :goto_56

    .line 184
    .end local v2    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v4    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "numberOfCodecs":I
    .end local v10    # "secureDecodersExplicit":Z
    .end local v11    # "supportedType":Ljava/lang/String;
    :catch_ad
    move-exception v5

    .line 187
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v12, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    throw v12

    .line 175
    .restart local v2    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "codecName":Ljava/lang/String;
    .restart local v4    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/DecoderInfo;>;"
    .restart local v6    # "i":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "numberOfCodecs":I
    .restart local v10    # "secureDecodersExplicit":Z
    .restart local v11    # "supportedType":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    const-string v12, "MediaCodecUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to query codec "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    throw v5
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_de} :catch_ad

    .line 151
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "supportedType":Ljava/lang/String;
    :cond_de
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12
.end method

.method public static getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer/DecoderInfo;

    return-object v0
.end method

.method private static getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    .line 353
    .local v0, "decoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    goto :goto_7
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_17

    if-nez p2, :cond_18

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 262
    :cond_17
    :goto_17
    return v0

    .line 201
    :cond_18
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_46

    const-string v1, "CIPAACDecoder"

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPMP3Decoder"

    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPVorbisDecoder"

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "AACDecoder"

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "MP3Decoder"

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 210
    :cond_46
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_52

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 214
    :cond_52
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_68

    const-string v1, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "a70"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 221
    :cond_68
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_f3

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_f3

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 222
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "protou"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "ville"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "villeplus"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "villec2"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "gee"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6602"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6603"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6606"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6616"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "L36h"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 239
    :cond_f3
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_127

    const-string v1, "OMX.qcom.audio.decoder.aac"

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    const-string v1, "C1504"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1505"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1604"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1605"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 250
    :cond_127
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_169

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_169

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "d2"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_157

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_157

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "jflte"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_157

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "santos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_169

    :cond_157
    const-string v1, "samsung"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 257
    :cond_169
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_183

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_183

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    const-string v1, "OMX.qcom.video.decoder.vp8"

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 262
    :cond_183
    const/4 v0, 0x1

    goto/16 :goto_17
.end method

.method public static isH264ProfileSupported(II)Z
    .registers 9
    .param p0, "profile"    # I
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 318
    const-string/jumbo v3, "video/avc"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    .line 319
    .local v0, "decoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    if-nez v0, :cond_b

    .line 327
    :cond_a
    :goto_a
    return v2

    .line 322
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v4, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v4

    move v3, v2

    :goto_11
    if-ge v3, v5, :cond_a

    aget-object v1, v4, v3

    .line 323
    .local v1, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v6, p0, :cond_1f

    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v6, p1, :cond_1f

    .line 324
    const/4 v2, 0x1

    goto :goto_a

    .line 322
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method public static isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z
    .registers 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # D
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_19

    move v1, v2

    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 304
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 305
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v0, :cond_1b

    .line 306
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 305
    :goto_18
    return v2

    .end local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_19
    move v1, v3

    .line 303
    goto :goto_9

    .restart local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_1b
    move v2, v3

    .line 306
    goto :goto_18
.end method

.method public static isSizeSupportedV21(Ljava/lang/String;ZII)Z
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_19

    move v1, v2

    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 282
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 283
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_18
    return v2

    .end local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_19
    move v1, v3

    .line 281
    goto :goto_9

    .restart local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_1b
    move v2, v3

    .line 283
    goto :goto_18
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 334
    sget v4, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2f

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "result":I
    const-string/jumbo v4, "video/avc"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    .line 337
    .local v0, "decoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    if-eqz v0, :cond_2d

    .line 338
    iget-object v4, v0, Lcom/google/android/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v4, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v4

    :goto_15
    if-ge v3, v5, :cond_26

    aget-object v1, v4, v3

    .line 339
    .local v1, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Lcom/google/android/exoplayer/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 342
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_26
    const v3, 0x2a300

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 344
    :cond_2d
    sput v2, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 346
    :cond_2f
    sget v3, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v3
.end method

.method public static warmCodec(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_3
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_3} :catch_4

    .line 82
    :goto_3
    return-void

    .line 78
    :catch_4
    move-exception v0

    .line 80
    .local v0, "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
