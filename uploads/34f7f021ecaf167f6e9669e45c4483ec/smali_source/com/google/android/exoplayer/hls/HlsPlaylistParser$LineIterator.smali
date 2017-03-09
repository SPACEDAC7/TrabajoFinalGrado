.class Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineIterator"
.end annotation


# instance fields
.field private final extraLines:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .registers 3
    .param p2, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    .line 323
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    .line 324
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v1

    .line 340
    :goto_6
    return v0

    .line 330
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    move v0, v1

    .line 332
    goto :goto_6

    .line 334
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    .line 337
    goto :goto_6

    .line 340
    :cond_37
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public next()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 349
    :cond_c
    return-object v0
.end method
