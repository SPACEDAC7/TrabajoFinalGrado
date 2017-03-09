.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# static fields
.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "recycled"    # Landroid/graphics/Bitmap;
    .param p1, "toCrop"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/high16 v9, 0x3f000000

    .line 39
    if-nez p1, :cond_6

    .line 40
    const/4 p1, 0x0

    .line 71
    .end local p1    # "toCrop":Landroid/graphics/Bitmap;
    :cond_5
    :goto_5
    return-object p1

    .line 41
    .restart local p1    # "toCrop":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, p2, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, p3, :cond_5

    .line 46
    :cond_12
    const/4 v1, 0x0

    .local v1, "dx":F
    const/4 v2, 0x0

    .line 47
    .local v2, "dy":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v8, p2

    if-le v7, v8, :cond_5b

    .line 49
    int-to-float v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 50
    .local v6, "scale":F
    int-to-float v7, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v1, v7, v9

    .line 56
    :goto_37
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    add-float v7, v1, v9

    float-to-int v7, v7

    int-to-float v7, v7

    add-float v8, v2, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-eqz p0, :cond_6e

    .line 60
    move-object v5, p0

    .line 66
    .local v5, "result":Landroid/graphics/Bitmap;
    :goto_48
    invoke-static {p1, v5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 70
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p1, v5

    .line 71
    goto :goto_5

    .line 52
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "scale":F
    :cond_5b
    int-to-float v7, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 53
    .restart local v6    # "scale":F
    int-to-float v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v2, v7, v9

    goto :goto_37

    .line 62
    :cond_6e
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "result":Landroid/graphics/Bitmap;
    goto :goto_48
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
    .registers 18
    .param p0, "toFit"    # Landroid/graphics/Bitmap;
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_21

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move/from16 v0, p3

    if-ne v11, v0, :cond_21

    .line 87
    const-string v11, "TransformationUtils"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 88
    const-string v11, "TransformationUtils"

    const-string v12, "requested target size matches input, returning input"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local p0    # "toFit":Landroid/graphics/Bitmap;
    :cond_20
    :goto_20
    return-object p0

    .line 92
    .restart local p0    # "toFit":Landroid/graphics/Bitmap;
    :cond_21
    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 93
    .local v10, "widthPercentage":F
    move/from16 v0, p3

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v3, v11, v12

    .line 94
    .local v3, "heightPercentage":F
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 99
    .local v5, "minPercentage":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v8, v11

    .line 100
    .local v8, "targetWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v7, v11

    .line 102
    .local v7, "targetHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v8, :cond_64

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v7, :cond_64

    .line 103
    const-string v11, "TransformationUtils"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 104
    const-string v11, "TransformationUtils"

    const-string v12, "adjusted target size matches input, returning input"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 109
    :cond_64
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 110
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p1, v8, v7, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 111
    .local v9, "toReuse":Landroid/graphics/Bitmap;
    if-nez v9, :cond_72

    .line 112
    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 115
    :cond_72
    invoke-static {p0, v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 117
    const-string v11, "TransformationUtils"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_115

    .line 118
    const-string v11, "TransformationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v11, "TransformationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toFit:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v11, "TransformationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toReuse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v11, "TransformationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "minPct:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_115
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v6, Landroid/graphics/Paint;

    const/4 v11, 0x6

    invoke-direct {v6, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p0, v9

    .line 130
    goto/16 :goto_20
.end method

.method public static getExifOrientationDegrees(I)I
    .registers 2
    .param p0, "exifOrientation"    # I

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_e

    .line 241
    const/4 v0, 0x0

    .line 244
    .local v0, "degreesToRotate":I
    :goto_4
    return v0

    .line 230
    .end local v0    # "degreesToRotate":I
    :pswitch_5
    const/16 v0, 0x5a

    .line 231
    .restart local v0    # "degreesToRotate":I
    goto :goto_4

    .line 234
    .end local v0    # "degreesToRotate":I
    :pswitch_8
    const/16 v0, 0xb4

    .line 235
    .restart local v0    # "degreesToRotate":I
    goto :goto_4

    .line 238
    .end local v0    # "degreesToRotate":I
    :pswitch_b
    const/16 v0, 0x10e

    .line 239
    .restart local v0    # "degreesToRotate":I
    goto :goto_4

    .line 227
    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .registers 8
    .param p0, "pathToOriginal"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "degreesToRotate":I
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "orientation":I
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 169
    .end local v0    # "degreesToRotate":I
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :cond_11
    :goto_11
    return v0

    .line 164
    .restart local v0    # "degreesToRotate":I
    :catch_12
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TransformationUtils"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 166
    const-string v4, "TransformationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get orientation for image with path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_a
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .registers 7
    .param p0, "exifOrientation"    # I
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v4, 0x43340000

    const/high16 v3, 0x42b40000

    const/high16 v2, -0x3d4c0000

    const/high16 v1, 0x3f800000

    const/high16 v0, -0x40800000

    .line 290
    packed-switch p0, :pswitch_data_34

    .line 318
    :goto_d
    return-void

    .line 292
    :pswitch_e
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_d

    .line 295
    :pswitch_12
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    .line 298
    :pswitch_16
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 299
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    .line 302
    :pswitch_1d
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    .line 306
    :pswitch_24
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    .line 309
    :pswitch_28
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    .line 313
    :pswitch_2f
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    .line 290
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1d
        :pswitch_24
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public static orientImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "pathToOriginal"    # Ljava/lang/String;
    .param p1, "imageToOrient"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getOrientation(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "degreesToRotate":I
    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "imageToOrient"    # Landroid/graphics/Bitmap;
    .param p1, "degreesToRotate"    # I

    .prologue
    .line 197
    move-object v8, p0

    .line 199
    .local v8, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1c

    .line 200
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 202
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1d

    move-result-object v8

    .line 216
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1c
    :goto_1c
    return-object v8

    .line 211
    :catch_1d
    move-exception v7

    .line 212
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "TransformationUtils"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 213
    const-string v0, "TransformationUtils"

    const-string v1, "Exception when trying to orient image"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "toOrient"    # Landroid/graphics/Bitmap;
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "exifOrientation"    # I

    .prologue
    const/4 v10, 0x0

    .line 256
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-static {p2, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 281
    .end local p0    # "toOrient":Landroid/graphics/Bitmap;
    :goto_f
    return-object p0

    .line 263
    .restart local p0    # "toOrient":Landroid/graphics/Bitmap;
    :cond_10
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    .local v4, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 266
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 267
    .local v5, "newWidth":I
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 269
    .local v3, "newHeight":I
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 270
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p1, v5, v3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    .local v7, "result":Landroid/graphics/Bitmap;
    if-nez v7, :cond_40

    .line 272
    invoke-static {v5, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 275
    :cond_40
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p0, v7

    .line 281
    goto :goto_f
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "toTransform"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 146
    :cond_f
    return-void
.end method
