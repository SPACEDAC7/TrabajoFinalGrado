.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferBytesRemaining:I

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resampledBuffer:Ljava/nio/ByteBuffer;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private sourceEncoding:I

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private final streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private targetEncoding:I

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private useResampledBuffer:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 175
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 184
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .registers 7
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p2, "streamType"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 246
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    .line 247
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 248
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_23

    .line 250
    :try_start_16
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 251
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_23} :catch_54

    .line 256
    :cond_23
    :goto_23
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3e

    .line 257
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 263
    :goto_30
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    .line 264
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 266
    return-void

    .line 258
    :cond_3e
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4c

    .line 259
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_30

    .line 261
    :cond_4c
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_30

    .line 252
    :catch_54
    move-exception v0

    goto :goto_23
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/audio/AudioTrack;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 898
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 899
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 900
    return-void

    .line 904
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1e
    .catchall {:try_start_b .. :try_end_10} :catchall_22

    .line 909
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 912
    :goto_12
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 905
    :catch_1e
    move-exception v1

    .line 909
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_12

    :catchall_22
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .registers 8
    .param p1, "durationUs"    # J

    .prologue
    .line 924
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .registers 8
    .param p1, "frameCount"    # J

    .prologue
    .line 920
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1031
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_50

    .line 1041
    :goto_c
    return v0

    .line 1031
    :sswitch_d
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v0

    goto :goto_9

    :sswitch_17
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_21
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_2b
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_9

    .line 1033
    :pswitch_35
    const/4 v0, 0x5

    goto :goto_c

    .line 1035
    :pswitch_37
    const/4 v0, 0x6

    goto :goto_c

    .line 1037
    :pswitch_39
    const/4 v0, 0x7

    goto :goto_c

    .line 1039
    :pswitch_3b
    const/16 v0, 0x8

    goto :goto_c

    .line 1031
    :sswitch_data_3e
    .sparse-switch
        -0x41455b98 -> :sswitch_21
        0xb269698 -> :sswitch_d
        0x59ae0c65 -> :sswitch_17
        0x59c2dc42 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_35
        :pswitch_37
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1046
    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 1047
    :cond_7
    invoke-static {p1}, Lcom/google/android/exoplayer/util/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1051
    :goto_b
    return v0

    .line 1048
    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    .line 1049
    invoke-static {}, Lcom/google/android/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_b

    .line 1050
    :cond_14
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1c

    .line 1051
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_b

    .line 1053
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .registers 3

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_6
.end method

.method private hasCurrentPositionUs()Z
    .registers 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private maybeSampleSyncParams()V
    .registers 21

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    .line 811
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_f

    .line 888
    :cond_e
    :goto_e
    return-void

    .line 815
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 816
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_7a

    .line 818
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 819
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 820
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_4d

    .line 821
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 823
    :cond_4d
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 824
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 825
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_58
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_7a

    .line 826
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 825
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 830
    .end local v7    # "i":I
    :cond_7a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_e

    .line 836
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_e

    .line 837
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 838
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_c0

    .line 840
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 841
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 842
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_137

    .line 844
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 868
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_c0
    :goto_c0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_131

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_131

    .line 872
    :try_start_cc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 875
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 877
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_131

    .line 878
    const-string v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_131} :catch_1e4

    .line 886
    :cond_131
    :goto_131
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_e

    .line 845
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_137
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_18b

    .line 847
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 850
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_17f

    .line 851
    new-instance v9, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 853
    :cond_17f
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_c0

    .line 855
    .end local v8    # "message":Ljava/lang/String;
    :cond_18b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_c0

    .line 858
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 861
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_1d8

    .line 862
    new-instance v9, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 864
    :cond_1d8
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_c0

    .line 881
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_1e4
    move-exception v6

    .line 883
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_131
.end method

.method private needsPassthroughWorkarounds()Z
    .registers 3

    .prologue
    .line 945
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private overrideHasPendingData()Z
    .registers 3

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 957
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 958
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 956
    :goto_18
    return v0

    .line 958
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private pcmBytesToFrames(J)J
    .registers 6
    .param p1, "byteCount"    # J

    .prologue
    .line 916
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .registers 3

    .prologue
    .line 784
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_5

    .line 797
    :goto_4
    return-void

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 790
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 791
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 796
    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_4
.end method

.method private static resampleTo16BitPcm(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "sourceEncoding"    # I
    .param p4, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 975
    sparse-switch p3, :sswitch_data_7c

    .line 987
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 977
    :sswitch_a
    mul-int/lit8 v3, p2, 0x2

    .line 990
    .local v3, "resampledSize":I
    :goto_c
    move-object v2, p4

    .line 991
    .local v2, "resampledBuffer":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_19

    .line 992
    :cond_15
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 994
    :cond_19
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 995
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 998
    add-int v1, p1, p2

    .line 999
    .local v1, "limit":I
    sparse-switch p3, :sswitch_data_8a

    .line 1023
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 980
    .end local v1    # "limit":I
    .end local v2    # "resampledBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "resampledSize":I
    :sswitch_2a
    div-int/lit8 v4, p2, 0x3

    mul-int/lit8 v3, v4, 0x2

    .line 981
    .restart local v3    # "resampledSize":I
    goto :goto_c

    .line 983
    .end local v3    # "resampledSize":I
    :sswitch_2f
    div-int/lit8 v3, p2, 0x2

    .line 984
    .restart local v3    # "resampledSize":I
    goto :goto_c

    .line 1002
    .restart local v1    # "limit":I
    .restart local v2    # "resampledBuffer":Ljava/nio/ByteBuffer;
    :sswitch_32
    move v0, p1

    .local v0, "i":I
    :goto_33
    if-ge v0, v1, :cond_77

    .line 1003
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1004
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1009
    .end local v0    # "i":I
    :sswitch_47
    move v0, p1

    .restart local v0    # "i":I
    :goto_48
    if-ge v0, v1, :cond_77

    .line 1010
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1011
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1009
    add-int/lit8 v0, v0, 0x3

    goto :goto_48

    .line 1016
    .end local v0    # "i":I
    :sswitch_5f
    move v0, p1

    .restart local v0    # "i":I
    :goto_60
    if-ge v0, v1, :cond_77

    .line 1017
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1018
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1016
    add-int/lit8 v0, v0, 0x4

    goto :goto_60

    .line 1026
    :cond_77
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1027
    return-object v2

    .line 975
    nop

    :sswitch_data_7c
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x3 -> :sswitch_a
        0x40000000 -> :sswitch_2f
    .end sparse-switch

    .line 999
    :sswitch_data_8a
    .sparse-switch
        -0x80000000 -> :sswitch_47
        0x3 -> :sswitch_32
        0x40000000 -> :sswitch_5f
    .end sparse-switch
.end method

.method private resetSyncParams()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 932
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 933
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 934
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 935
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 936
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 937
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 938
    return-void
.end method

.method private setAudioTrackVolume()V
    .registers 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 723
    :goto_6
    return-void

    .line 718
    :cond_7
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_6

    .line 721
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_6
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .registers 2
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1066
    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .registers 2
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 1070
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1071
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;III)V
    .registers 11
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I

    .prologue
    .line 346
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 347
    return-void
.end method

.method public configure(Ljava/lang/String;IIII)V
    .registers 22
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I

    .prologue
    .line 364
    packed-switch p2, :pswitch_data_142

    .line 390
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported channel count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 366
    :pswitch_1e
    const/4 v2, 0x4

    .line 393
    .local v2, "channelConfig":I
    :goto_1f
    const-string v9, "audio/raw"

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    const/4 v7, 0x1

    .line 395
    .local v7, "passthrough":Z
    :goto_2a
    if-eqz v7, :cond_62

    .line 396
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 404
    .local v8, "sourceEncoding":I
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_96

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sourceEncoding:I

    if-ne v9, v8, :cond_96

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    if-ne v9, v0, :cond_96

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v9, v2, :cond_96

    .line 445
    .end local v8    # "sourceEncoding":I
    :goto_4a
    return-void

    .line 369
    .end local v2    # "channelConfig":I
    .end local v7    # "passthrough":Z
    :pswitch_4b
    const/16 v2, 0xc

    .line 370
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 372
    .end local v2    # "channelConfig":I
    :pswitch_4e
    const/16 v2, 0x1c

    .line 373
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 375
    .end local v2    # "channelConfig":I
    :pswitch_51
    const/16 v2, 0xcc

    .line 376
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 378
    .end local v2    # "channelConfig":I
    :pswitch_54
    const/16 v2, 0xdc

    .line 379
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 381
    .end local v2    # "channelConfig":I
    :pswitch_57
    const/16 v2, 0xfc

    .line 382
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 384
    .end local v2    # "channelConfig":I
    :pswitch_5a
    const/16 v2, 0x4fc

    .line 385
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 387
    .end local v2    # "channelConfig":I
    :pswitch_5d
    sget v2, Lcom/google/android/exoplayer/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 388
    .restart local v2    # "channelConfig":I
    goto :goto_1f

    .line 393
    :cond_60
    const/4 v7, 0x0

    goto :goto_2a

    .line 397
    .restart local v7    # "passthrough":Z
    :cond_62
    const/4 v9, 0x3

    move/from16 v0, p4

    if-eq v0, v9, :cond_78

    const/4 v9, 0x2

    move/from16 v0, p4

    if-eq v0, v9, :cond_78

    const/high16 v9, -0x80000000

    move/from16 v0, p4

    if-eq v0, v9, :cond_78

    const/high16 v9, 0x40000000

    move/from16 v0, p4

    if-ne v0, v9, :cond_7b

    .line 399
    :cond_78
    move/from16 v8, p4

    .restart local v8    # "sourceEncoding":I
    goto :goto_30

    .line 401
    .end local v8    # "sourceEncoding":I
    :cond_7b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported PCM encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 410
    .restart local v8    # "sourceEncoding":I
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 412
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sourceEncoding:I

    .line 413
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    .line 414
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    .line 415
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    .line 416
    if-eqz v7, :cond_c8

    .end local v8    # "sourceEncoding":I
    :goto_ad
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    .line 417
    mul-int/lit8 v9, p2, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    .line 419
    if-eqz p5, :cond_ca

    .line 420
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    .line 443
    :goto_bf
    if-eqz v7, :cond_130

    const-wide/16 v10, -0x1

    .line 444
    :goto_c3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_4a

    .line 416
    .restart local v8    # "sourceEncoding":I
    :cond_c8
    const/4 v8, 0x2

    goto :goto_ad

    .line 421
    .end local v8    # "sourceEncoding":I
    :cond_ca
    if-eqz v7, :cond_e9

    .line 424
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_da

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_e1

    .line 426
    :cond_da
    const/16 v9, 0x5000

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_bf

    .line 429
    :cond_e1
    const v9, 0xc000

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_bf

    .line 432
    :cond_e9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    .line 433
    move/from16 v0, p3

    invoke-static {v0, v2, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 434
    .local v5, "minBufferSize":I
    const/4 v9, -0x2

    if-eq v5, v9, :cond_128

    const/4 v9, 0x1

    :goto_f7
    invoke-static {v9}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 435
    mul-int/lit8 v6, v5, 0x4

    .line 436
    .local v6, "multipliedBufferSize":I
    const-wide/32 v10, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v10

    long-to-int v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    mul-int v4, v9, v10

    .line 437
    .local v4, "minAppBufferSize":I
    int-to-long v10, v5

    const-wide/32 v12, 0xb71b0

    .line 438
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v14, v9

    mul-long/2addr v12, v14

    .line 437
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    .line 439
    .local v3, "maxAppBufferSize":I
    if-ge v6, v4, :cond_12a

    .end local v4    # "minAppBufferSize":I
    :goto_123
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_bf

    .line 434
    .end local v3    # "maxAppBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_128
    const/4 v9, 0x0

    goto :goto_f7

    .line 439
    .restart local v3    # "maxAppBufferSize":I
    .restart local v4    # "minAppBufferSize":I
    .restart local v6    # "multipliedBufferSize":I
    :cond_12a
    if-le v6, v3, :cond_12e

    move v4, v3

    goto :goto_123

    :cond_12e
    move v4, v6

    goto :goto_123

    .line 443
    .end local v3    # "maxAppBufferSize":I
    .end local v4    # "minAppBufferSize":I
    .end local v5    # "minBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_130
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v10, v9

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    goto :goto_c3

    .line 364
    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    return v0
.end method

.method public getBufferSizeUs()J
    .registers 3

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .registers 20
    .param p1, "sourceEnded"    # Z

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_9

    .line 298
    const-wide/high16 v6, -0x8000000000000000L

    .line 332
    :cond_8
    :goto_8
    return-wide v6

    .line 301
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_17

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 305
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 307
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_5d

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    .line 311
    .local v10, "presentationDiff":J
    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 312
    invoke-virtual {v15}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    .line 313
    .local v2, "actualSpeedPresentationDiff":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    .line 315
    .local v8, "framesDiff":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 316
    .local v4, "currentFramePosition":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 317
    .local v6, "currentPositionUs":J
    goto :goto_8

    .line 318
    .end local v2    # "actualSpeedPresentationDiff":J
    .end local v4    # "currentFramePosition":J
    .end local v6    # "currentPositionUs":J
    .end local v8    # "framesDiff":J
    .end local v10    # "presentationDiff":J
    :cond_5d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_7b

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 327
    .restart local v6    # "currentPositionUs":J
    :goto_73
    if-nez p1, :cond_8

    .line 328
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_8

    .line 325
    .end local v6    # "currentPositionUs":J
    :cond_7b
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6    # "currentPositionUs":J
    goto :goto_73
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .registers 24
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 573
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_13

    .line 574
    const/4 v10, 0x0

    .line 673
    :cond_12
    :goto_12
    return v10

    .line 580
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 581
    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2e

    .line 582
    const/4 v10, 0x0

    goto :goto_12

    .line 586
    :cond_2e
    const/4 v10, 0x0

    .line 587
    .local v10, "result":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    if-nez v11, :cond_ed

    .line 590
    if-nez p3, :cond_39

    .line 591
    const/4 v10, 0x2

    goto :goto_12

    .line 594
    :cond_39
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sourceEncoding:I

    if-eq v11, v12, :cond_13e

    const/4 v11, 0x1

    :goto_44
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    .line 595
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_85

    .line 596
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_141

    const/4 v11, 0x1

    :goto_56
    invoke-static {v11}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 598
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sourceEncoding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v11, v12}, Lcom/google/android/exoplayer/audio/AudioTrack;->resampleTo16BitPcm(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    .line 601
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    .line 605
    :cond_85
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 606
    invoke-virtual/range {p1 .. p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 607
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_a8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v11, :cond_a8

    .line 609
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    .line 611
    :cond_a8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-nez v11, :cond_144

    .line 612
    const-wide/16 v12, 0x0

    move-wide/from16 v0, p4

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 613
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 631
    :cond_bf
    :goto_bf
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_ed

    .line 633
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v11, :cond_d4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    array-length v11, v11

    move/from16 v0, p3

    if-ge v11, v0, :cond_dc

    .line 634
    :cond_d4
    move/from16 v0, p3

    new-array v11, v0, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    .line 636
    :cond_dc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v11, v12, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 637
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 641
    :cond_ed
    const/4 v6, 0x0

    .line 642
    .local v6, "bytesWritten":I
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_1b2

    .line 644
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 645
    invoke-virtual {v11}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-int v4, v12

    .line 646
    .local v4, "bytesPending":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    sub-int v5, v11, v4

    .line 647
    .local v5, "bytesToWrite":I
    if-lez v5, :cond_136

    .line 648
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 649
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v11, v12, v13, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v6

    .line 650
    if-ltz v6, :cond_136

    .line 651
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 659
    .end local v4    # "bytesPending":I
    .end local v5    # "bytesToWrite":I
    :cond_136
    :goto_136
    if-gez v6, :cond_1cd

    .line 660
    new-instance v11, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v11, v6}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v11

    .line 594
    .end local v6    # "bytesWritten":I
    :cond_13e
    const/4 v11, 0x0

    goto/16 :goto_44

    .line 596
    :cond_141
    const/4 v11, 0x0

    goto/16 :goto_56

    .line 616
    :cond_144
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    add-long v8, v12, v14

    .line 617
    .local v8, "expectedBufferStartTime":J
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_197

    sub-long v12, v8, p4

    .line 618
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v11, v12, v14

    if-lez v11, :cond_197

    .line 619
    const-string v11, "AudioTrack"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discontinuity detected [expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 623
    :cond_197
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_bf

    .line 626
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v14, p4, v8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 627
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 628
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_bf

    .line 655
    .end local v8    # "expectedBufferStartTime":J
    .restart local v6    # "bytesWritten":I
    :cond_1b2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_1ca

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    .line 656
    .local v7, "data":Ljava/nio/ByteBuffer;
    :goto_1bc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    invoke-static {v11, v7, v12}, Lcom/google/android/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v6

    goto/16 :goto_136

    .end local v7    # "data":Ljava/nio/ByteBuffer;
    :cond_1ca
    move-object/from16 v7, p1

    .line 655
    goto :goto_1bc

    .line 663
    :cond_1cd
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    sub-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 664
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-nez v11, :cond_1e6

    .line 665
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    int-to-long v14, v6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    .line 667
    :cond_1e6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    if-nez v11, :cond_12

    .line 668
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_200

    .line 669
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    .line 671
    :cond_200
    or-int/lit8 v10, v10, 0x2

    goto/16 :goto_12
.end method

.method public handleDiscontinuity()V
    .registers 3

    .prologue
    .line 548
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 549
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 551
    :cond_8
    return-void
.end method

.method public handleEndOfStream()V
    .registers 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 684
    :cond_f
    return-void
.end method

.method public hasPendingData()Z
    .registers 5

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 691
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 692
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 690
    :goto_1b
    return v0

    .line 692
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public initialize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .registers 10
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 471
    if-nez p1, :cond_5e

    .line 472
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 479
    :goto_19
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 482
    sget-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_4f

    .line 483
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4f

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 487
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 488
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 490
    :cond_3b
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_4f

    .line 491
    const/16 v2, 0xfa0

    .line 492
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 493
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 494
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 495
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 501
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_4f
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    .line 504
    return p1

    .line 476
    :cond_5e
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_19
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 274
    invoke-static {p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 273
    :goto_11
    return v0

    .line 274
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 730
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 733
    :cond_e
    return-void
.end method

.method public play()V
    .registers 5

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 538
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 541
    :cond_14
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 777
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 778
    return-void
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 741
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 742
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    .line 743
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    .line 744
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    .line 745
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 746
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 747
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 749
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 750
    .local v0, "playState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 751
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 754
    :cond_27
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 755
    .local v1, "toRelease":Landroid/media/AudioTrack;
    iput-object v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 756
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 757
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 758
    new-instance v2, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 768
    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 770
    .end local v0    # "playState":I
    .end local v1    # "toRelease":Landroid/media/AudioTrack;
    :cond_3d
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 3
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->setPlaybackParameters(Landroid/media/PlaybackParams;)V

    .line 703
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "volume"    # F

    .prologue
    .line 709
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 710
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 711
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    .line 713
    :cond_b
    return-void
.end method
