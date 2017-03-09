.class public final Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMax:I

.field public final bitrateMin:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:J

.field public final version:J


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .registers 13
    .param p1, "version"    # J
    .param p3, "channels"    # I
    .param p4, "sampleRate"    # J
    .param p6, "bitrateMax"    # I
    .param p7, "bitrateNominal"    # I
    .param p8, "bitrateMin"    # I
    .param p9, "blockSize0"    # I
    .param p10, "blockSize1"    # I
    .param p11, "framingFlag"    # Z
    .param p12, "data"    # [B

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->version:J

    .line 454
    iput p3, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    .line 455
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    .line 456
    iput p6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    .line 457
    iput p7, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 458
    iput p8, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    .line 459
    iput p9, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 460
    iput p10, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 461
    iput-boolean p11, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    .line 462
    iput-object p12, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    .line 463
    return-void
.end method


# virtual methods
.method public getApproximateBitrate()I
    .registers 3

    .prologue
    .line 466
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    goto :goto_b
.end method
