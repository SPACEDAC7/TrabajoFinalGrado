.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final duration:J

.field private final id:I

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "duration"    # J
    .param p4, "rotationDegrees"    # I

    .prologue
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I

    .line 1176
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J

    .line 1177
    iput p4, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    .line 1178
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    .prologue
    .line 1168
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return v0
.end method
