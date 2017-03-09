.class public final Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;
.super Ljava/lang/Object;
.source "VideoFormatSelectorUtil.java"


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 9
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-eqz p0, :cond_e

    if-le p3, p4, :cond_20

    move v3, v1

    :goto_7
    if-le p1, p2, :cond_22

    :goto_9
    if-eq v3, v1, :cond_e

    .line 180
    move v0, p1

    .line 181
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 182
    move p2, v0

    .line 185
    .end local v0    # "tempViewportWidth":I
    :cond_e
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_24

    .line 187
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 190
    :goto_1f
    return-object v1

    :cond_20
    move v3, v2

    .line 178
    goto :goto_7

    :cond_22
    move v1, v2

    goto :goto_9

    .line 190
    :cond_24
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1f
.end method

.method private static isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZZ)Z
    .registers 10
    .param p0, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "secureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 140
    invoke-static {p1, v2}, Lcom/google/android/exoplayer/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 169
    :cond_b
    :goto_b
    return v1

    .line 144
    :cond_c
    if-eqz p2, :cond_1a

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    const/16 v3, 0x500

    if-ge v2, v3, :cond_b

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    const/16 v3, 0x2d0

    if-ge v2, v3, :cond_b

    .line 148
    :cond_1a
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v2, :cond_62

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v2, :cond_62

    .line 149
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_57

    .line 150
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "videoMediaMimeType":Ljava/lang/String;
    const-string/jumbo v1, "video/x-unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 153
    const-string/jumbo v0, "video/avc"

    .line 155
    :cond_3a
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->frameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    .line 156
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->frameRate:F

    float-to-double v4, v1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecUtil;->isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z

    move-result v1

    goto :goto_b

    .line 159
    :cond_4e
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v0, p3, v1, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->isSizeSupportedV21(Ljava/lang/String;ZII)Z

    move-result v1

    goto :goto_b

    .line 164
    .end local v0    # "videoMediaMimeType":Ljava/lang/String;
    :cond_57
    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v3

    if-gt v2, v3, :cond_b

    .line 169
    :cond_62
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZZII)[I
    .registers 19
    .param p1, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p2, "filterHdFormats"    # Z
    .param p3, "orientationMayChange"    # Z
    .param p4, "secureDecoder"    # Z
    .param p5, "viewportWidth"    # I
    .param p6, "viewportHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "ZZZII)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    const v5, 0x7fffffff

    .line 92
    .local v5, "maxVideoPixelsToRetain":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, "selectedIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 96
    .local v3, "formatWrapperCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_64

    .line 97
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v9}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v2

    .line 98
    .local v2, "format":Lcom/google/android/exoplayer/chunk/Format;
    move/from16 v0, p4

    invoke-static {v2, p1, p2, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZZ)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v9, :cond_61

    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v9, :cond_61

    if-lez p5, :cond_61

    if-lez p6, :cond_61

    .line 105
    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v10, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p3, v0, v1, v9, v10}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 107
    .local v6, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v10, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int v8, v9, v10

    .line 108
    .local v8, "videoPixels":I
    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    const v11, 0x3f7ae148

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v9, v10, :cond_61

    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const v11, 0x3f7ae148

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v9, v10, :cond_61

    if-ge v8, v5, :cond_61

    .line 111
    move v5, v8

    .line 96
    .end local v6    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v8    # "videoPixels":I
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 120
    .end local v2    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_64
    const v9, 0x7fffffff

    if-eq v5, v9, :cond_9a

    .line 121
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_6f
    if-ltz v4, :cond_9a

    .line 122
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v9}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v2

    .line 123
    .restart local v2    # "format":Lcom/google/android/exoplayer/chunk/Format;
    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v9, :cond_97

    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v9, :cond_97

    iget v9, v2, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v10, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v9, v10

    if-le v9, v5, :cond_97

    .line 125
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    :cond_97
    add-int/lit8 v4, v4, -0x1

    goto :goto_6f

    .line 130
    .end local v2    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_9a
    invoke-static {v7}, Lcom/google/android/exoplayer/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v9

    return-object v9
.end method

.method public static selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "allowedContainerMimeTypes"    # [Ljava/lang/String;
    .param p3, "filterHdFormats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "formatWrappers":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/FormatWrapper;>;"
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    .line 55
    .local v7, "viewportSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v7, Landroid/graphics/Point;->x:I

    iget v6, v7, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZZII)[I

    move-result-object v0

    return-object v0
.end method
