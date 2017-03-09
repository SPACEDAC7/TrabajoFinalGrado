.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackElement"
.end annotation


# instance fields
.field public final csd:[[B

.field public final format:Lcom/google/android/exoplayer/chunk/Format;


# direct methods
.method public constructor <init>(IILjava/lang/String;[[BIIIILjava/lang/String;)V
    .registers 20
    .param p1, "index"    # I
    .param p2, "bitrate"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "csd"    # [[B
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .param p7, "sampleRate"    # I
    .param p8, "numChannels"    # I
    .param p9, "language"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    .line 135
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v5, -0x40800000

    move-object v2, p3

    move v3, p5

    move/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p7

    move v8, p2

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 137
    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method
