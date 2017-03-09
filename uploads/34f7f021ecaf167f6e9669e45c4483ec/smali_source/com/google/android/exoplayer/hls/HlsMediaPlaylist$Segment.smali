.class public final Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final discontinuitySequenceNumber:I

.field public final durationSecs:D

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final startTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DIJZLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "durationSecs"    # D
    .param p4, "discontinuitySequenceNumber"    # I
    .param p5, "startTimeUs"    # J
    .param p7, "isEncrypted"    # Z
    .param p8, "encryptionKeyUri"    # Ljava/lang/String;
    .param p9, "encryptionIV"    # Ljava/lang/String;
    .param p10, "byterangeOffset"    # J
    .param p12, "byterangeLength"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 45
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    .line 46
    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    .line 47
    iput-wide p5, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .line 48
    iput-boolean p7, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    .line 49
    iput-object p8, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 51
    iput-wide p10, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    .line 52
    iput-wide p12, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .registers 6
    .param p1, "startTimeUs"    # Ljava/lang/Long;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
