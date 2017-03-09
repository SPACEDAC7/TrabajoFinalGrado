.class public final Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;
.super Lcom/google/android/exoplayer/SampleSourceTrackRenderer;
.source "MetadataTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer/SampleSourceTrackRenderer;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private final metadataHandler:Landroid/os/Handler;

.field private final metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/metadata/MetadataParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pendingMetadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pendingMetadataTimestamp:J

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/metadata/MetadataParser;Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V
    .registers 8
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p4, "metadataRendererLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/SampleSource;",
            "Lcom/google/android/exoplayer/metadata/MetadataParser",
            "<TT;>;",
            "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p2, "metadataParser":Lcom/google/android/exoplayer/metadata/MetadataParser;, "Lcom/google/android/exoplayer/metadata/MetadataParser<TT;>;"
    .local p3, "metadataRenderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer<TT;>;"
    const/4 v2, 0x1

    .line 79
    new-array v0, v2, [Lcom/google/android/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;)V

    .line 80
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/metadata/MetadataParser;

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    .line 81
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    .line 82
    if-nez p4, :cond_2d

    const/4 v0, 0x0

    :goto_1c
    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 85
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 86
    return-void

    .line 82
    :cond_2d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_1c
.end method

.method private invokeRenderer(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    :goto_e
    return-void

    .line 148
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private invokeRendererInternal(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;->onMetadata(Ljava/lang/Object;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .registers 11
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "sourceIsReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-boolean v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-nez v2, :cond_32

    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v1

    .line 105
    .local v1, "result":I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4c

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    .line 108
    :try_start_1e
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    iget-object v3, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v4, v4, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer/metadata/MetadataParser;->parse([BI)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_45

    .line 117
    .end local v1    # "result":I
    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-eqz v2, :cond_44

    iget-wide v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_44

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRenderer(Ljava/lang/Object;)V

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 121
    :cond_44
    return-void

    .line 109
    .restart local v1    # "result":I
    :catch_45
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4c
    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    goto :goto_32
.end method

.method protected getBufferedPositionUs()J
    .registers 3

    .prologue
    .line 131
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 160
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 157
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_6

    .line 155
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 4
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 90
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/metadata/MetadataParser;->canParse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isEnded()Z
    .registers 2

    .prologue
    .line 136
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 126
    invoke-super {p0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    .line 127
    return-void
.end method

.method protected onDiscontinuity(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 95
    .local p0, "this":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    .line 97
    return-void
.end method
