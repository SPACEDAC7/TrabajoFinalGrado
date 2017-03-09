.class public final Lcom/google/android/exoplayer/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field public static final TYPE_sbtl:I

.field public static final TYPE_soun:I

.field public static final TYPE_subt:I

.field public static final TYPE_text:I

.field public static final TYPE_vide:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final id:I

.field public final mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public final timescale:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    .line 28
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    .line 29
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    .line 30
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    .line 31
    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    return-void
.end method

.method public constructor <init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "timescale"    # J
    .param p5, "movieTimescale"    # J
    .param p7, "durationUs"    # J
    .param p9, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p10, "sampleDescriptionEncryptionBoxes"    # [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .param p11, "nalUnitLengthFieldLength"    # I
    .param p12, "editListDurations"    # [J
    .param p13, "editListMediaTimes"    # [J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    .line 89
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    .line 90
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    .line 91
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    .line 92
    iput-wide p7, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->durationUs:J

    .line 93
    iput-object p9, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 94
    iput-object p10, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 95
    iput p11, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 96
    iput-object p12, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    .line 97
    iput-object p13, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    .line 98
    return-void
.end method
