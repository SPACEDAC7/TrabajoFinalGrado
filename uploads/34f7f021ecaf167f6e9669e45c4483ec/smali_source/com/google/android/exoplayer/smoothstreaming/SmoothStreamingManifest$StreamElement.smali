.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamElement"
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1

.field private static final URL_PLACEHOLDER_BITRATE:Ljava/lang/String; = "{bitrate}"

.field private static final URL_PLACEHOLDER_START_TIME:Ljava/lang/String; = "{start time}"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field public final chunkCount:I

.field private final chunkStartTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkStartTimesUs:[J

.field private final chunkTemplate:Ljava/lang/String;

.field public final displayHeight:I

.field public final displayWidth:I

.field public final language:Ljava/lang/String;

.field private final lastChunkDurationUs:J

.field public final maxHeight:I

.field public final maxWidth:I

.field public final name:Ljava/lang/String;

.field public final qualityLevels:I

.field public final subType:Ljava/lang/String;

.field public final timescale:J

.field public final tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIIILjava/lang/String;[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;Ljava/util/List;J)V
    .registers 27
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "chunkTemplate"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "subType"    # Ljava/lang/String;
    .param p5, "timescale"    # J
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "qualityLevels"    # I
    .param p9, "maxWidth"    # I
    .param p10, "maxHeight"    # I
    .param p11, "displayWidth"    # I
    .param p12, "displayHeight"    # I
    .param p13, "language"    # Ljava/lang/String;
    .param p14, "tracks"    # [Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
    .param p16, "lastChunkDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p15, "chunkStartTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->baseUri:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    .line 186
    iput-object p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->subType:Ljava/lang/String;

    .line 187
    iput-wide p5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    .line 188
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->name:Ljava/lang/String;

    .line 189
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->qualityLevels:I

    .line 190
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxWidth:I

    .line 191
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxHeight:I

    .line 192
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->displayWidth:I

    .line 193
    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->displayHeight:I

    .line 194
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->language:Ljava/lang/String;

    .line 195
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    .line 196
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    .line 197
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    .line 198
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p16

    move-wide v6, p5

    .line 199
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->lastChunkDurationUs:J

    .line 200
    const-wide/32 v2, 0xf4240

    .line 201
    move-object/from16 v0, p15

    invoke-static {v0, v2, v3, p5, p6}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamps(Ljava/util/List;JJ)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    .line 202
    return-void
.end method


# virtual methods
.method public buildRequestUri(II)Landroid/net/Uri;
    .registers 7
    .param p1, "track"    # I
    .param p2, "chunkIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    if-eqz v1, :cond_4c

    move v1, v2

    :goto_7
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    if-eqz v1, :cond_4e

    move v1, v2

    :goto_f
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 245
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_50

    :goto_1a
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    const-string/jumbo v2, "{bitrate}"

    iget-object v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{start time}"

    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    .line 248
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "chunkUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->baseUri:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .end local v0    # "chunkUrl":Ljava/lang/String;
    :cond_4c
    move v1, v3

    .line 243
    goto :goto_7

    :cond_4e
    move v1, v3

    .line 244
    goto :goto_f

    :cond_50
    move v2, v3

    .line 245
    goto :goto_1a
.end method

.method public getChunkDurationUs(I)J
    .registers 6
    .param p1, "chunkIndex"    # I

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->lastChunkDurationUs:J

    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public getChunkIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0
.end method

.method public getStartTimeUs(I)J
    .registers 4
    .param p1, "chunkIndex"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
