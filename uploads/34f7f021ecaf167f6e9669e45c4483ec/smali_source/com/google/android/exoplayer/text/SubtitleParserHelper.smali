.class final Lcom/google/android/exoplayer/text/SubtitleParserHelper;
.super Ljava/lang/Object;
.source "SubtitleParserHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FORMAT:I = 0x0

.field private static final MSG_SAMPLE:I = 0x1


# instance fields
.field private error:Ljava/io/IOException;

.field private final handler:Landroid/os/Handler;

.field private final parser:Lcom/google/android/exoplayer/text/SubtitleParser;

.field private parsing:Z

.field private result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

.field private runtimeError:Ljava/lang/RuntimeException;

.field private sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private subtitleOffsetUs:J

.field private subtitlesAreRelative:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer/text/SubtitleParser;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parser"    # Lcom/google/android/exoplayer/text/SubtitleParser;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->flush()V

    .line 58
    return-void
.end method

.method private handleFormat(Lcom/google/android/exoplayer/MediaFormat;)V
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 159
    iget-wide v0, p1, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    .line 160
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    if-eqz v0, :cond_19

    const-wide/16 v0, 0x0

    :goto_14
    iput-wide v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    .line 161
    return-void

    .line 159
    :cond_17
    const/4 v0, 0x0

    goto :goto_c

    .line 160
    :cond_19
    iget-wide v0, p1, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    goto :goto_14
.end method

.method private handleSample(JLcom/google/android/exoplayer/SampleHolder;)V
    .registers 15
    .param p1, "sampleTimeUs"    # J
    .param p3, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "parsedSubtitle":Lcom/google/android/exoplayer/text/Subtitle;
    const/4 v8, 0x0

    .line 166
    .local v8, "error":Lcom/google/android/exoplayer/ParserException;
    const/4 v9, 0x0

    .line 168
    .local v9, "runtimeError":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    iget-object v3, p3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p3, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/exoplayer/text/SubtitleParser;->parse([BII)Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_11
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_3 .. :try_end_11} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_11} :catch_1c

    move-result-object v2

    .line 174
    :goto_12
    monitor-enter p0

    .line 175
    :try_start_13
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    if-eq v1, p3, :cond_1f

    .line 184
    :goto_17
    monitor-exit p0

    .line 185
    return-void

    .line 169
    :catch_19
    move-exception v0

    .line 170
    .local v0, "e":Lcom/google/android/exoplayer/ParserException;
    move-object v8, v0

    .line 173
    goto :goto_12

    .line 171
    .end local v0    # "e":Lcom/google/android/exoplayer/ParserException;
    :catch_1c
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v9, v0

    goto :goto_12

    .line 178
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1f
    new-instance v1, Lcom/google/android/exoplayer/text/PlayableSubtitle;

    iget-boolean v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/text/PlayableSubtitle;-><init>(Lcom/google/android/exoplayer/text/Subtitle;ZJJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 180
    iput-object v8, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 181
    iput-object v9, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    goto :goto_17

    .line 184
    :catchall_33
    move-exception v1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_33

    throw v1
.end method


# virtual methods
.method public declared-synchronized flush()V
    .registers 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 69
    monitor-exit p0

    return-void

    .line 64
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearResult()Lcom/google/android/exoplayer/text/PlayableSubtitle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    if-eqz v0, :cond_16

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    throw v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8

    .line 137
    :catchall_8
    move-exception v0

    const/4 v1, 0x0

    :try_start_a
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_13

    .line 129
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1d

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0

    .line 134
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_8

    .line 137
    const/4 v1, 0x0

    :try_start_20
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_13

    .line 134
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSampleHolder()Lcom/google/android/exoplayer/SampleHolder;
    .registers 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20

    .line 155
    :goto_5
    const/4 v1, 0x1

    return v1

    .line 147
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handleFormat(Lcom/google/android/exoplayer/MediaFormat;)V

    goto :goto_5

    .line 150
    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4}, Lcom/google/android/exoplayer/util/Util;->getLong(II)J

    move-result-wide v2

    .line 151
    .local v2, "sampleTimeUs":J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/SampleHolder;

    .line 152
    .local v0, "holder":Lcom/google/android/exoplayer/SampleHolder;
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handleSample(JLcom/google/android/exoplayer/SampleHolder;)V

    goto :goto_5

    .line 145
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public declared-synchronized isParsing()Z
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFormat(Lcom/google/android/exoplayer/MediaFormat;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public declared-synchronized startParseOperation()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 109
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    if-nez v1, :cond_33

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->getTopInt(J)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v3, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 115
    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/Util;->getBottomInt(J)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 114
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_35

    .line 116
    monitor-exit p0

    return-void

    .line 109
    :cond_33
    const/4 v0, 0x0

    goto :goto_6

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
