.class public final Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "referenceUri"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "length"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_7

    if-eqz p2, :cond_14

    :cond_7
    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    .line 60
    iput-wide p5, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    .line 61
    return-void

    .line 56
    :cond_14
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 12
    .param p1, "other"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    .line 93
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 102
    :cond_13
    :goto_13
    return-object v1

    .line 95
    :cond_14
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3d

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3d

    .line 96
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v8, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_37

    :goto_33
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_13

    :cond_37
    iget-wide v6, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v8, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_33

    .line 98
    :cond_3d
    iget-wide v2, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_13

    iget-wide v2, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    .line 99
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_60

    :goto_5c
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_13

    :cond_60
    iget-wide v6, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_5c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_5

    .line 127
    :cond_4
    :goto_4
    return v1

    .line 123
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 124
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 127
    .local v0, "other":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_34

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_34

    .line 129
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_34
    move v1, v2

    goto :goto_4
.end method

.method public getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 108
    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->hashCode:I

    if-nez v1, :cond_20

    .line 109
    const/16 v0, 0x11

    .line 110
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->hashCode:I

    .line 115
    .end local v0    # "result":I
    :cond_20
    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->hashCode:I

    return v1
.end method
