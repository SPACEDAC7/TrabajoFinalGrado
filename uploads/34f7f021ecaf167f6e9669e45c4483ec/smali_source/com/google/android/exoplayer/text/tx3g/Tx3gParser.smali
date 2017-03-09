.class public final Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "Tx3gParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# instance fields
.field private final parsableByteArray:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 35
    return-void
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse([BII)Lcom/google/android/exoplayer/text/Subtitle;
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 44
    iget-object v2, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, p1, p3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 46
    .local v1, "textLength":I
    if-nez v1, :cond_10

    .line 47
    sget-object v2, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;

    .line 50
    :goto_f
    return-object v2

    .line 49
    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "cueText":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;

    new-instance v3, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer/text/Cue;)V

    goto :goto_f
.end method
