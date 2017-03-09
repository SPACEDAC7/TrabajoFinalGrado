.class final Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 486
    iput-boolean p2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    .line 487
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    if-ne p0, p1, :cond_5

    .line 507
    :cond_4
    :goto_4
    return v1

    .line 503
    :cond_5
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    if-eq v3, v4, :cond_11

    :cond_f
    move v1, v2

    .line 504
    goto :goto_4

    :cond_11
    move-object v0, p1

    .line 506
    check-cast v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    .line 507
    .local v0, "other":Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v3, v4, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 491
    const/16 v0, 0x1f

    .line 492
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 493
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 494
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v2, :cond_1c

    const/16 v2, 0x4cf

    :goto_12
    add-int v1, v3, v2

    .line 495
    return v1

    .line 493
    :cond_15
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 494
    :cond_1c
    const/16 v2, 0x4d5

    goto :goto_12
.end method
