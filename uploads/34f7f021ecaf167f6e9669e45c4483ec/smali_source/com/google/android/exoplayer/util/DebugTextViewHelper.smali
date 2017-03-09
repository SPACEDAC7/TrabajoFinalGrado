.class public final Lcom/google/android/exoplayer/util/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;
    }
.end annotation


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "debuggable"    # Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method private getBandwidthString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;->getBandwidthMeter()Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    move-result-object v0

    .line 111
    .local v0, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    if-eqz v0, :cond_12

    .line 112
    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 113
    :cond_12
    const-string v1, "bw:?"

    .line 115
    :goto_14
    return-object v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method private getQualityString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v0

    .line 105
    .local v0, "format":Lcom/google/android/exoplayer/chunk/Format;
    if-nez v0, :cond_b

    const-string v1, "id:? br:? h:?"

    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " br:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private getRenderString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->getQualityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->getBandwidthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->getVideoCodecCountersString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method private getTimeString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoCodecCountersString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->debuggable:Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;

    invoke-interface {v1}, Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;->getCodecCounters()Lcom/google/android/exoplayer/CodecCounters;

    move-result-object v0

    .line 121
    .local v0, "codecCounters":Lcom/google/android/exoplayer/CodecCounters;
    if-nez v0, :cond_b

    const-string v1, ""

    :goto_a
    return-object v1

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->getDebugString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->getRenderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->stop()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->run()V

    .line 77
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
