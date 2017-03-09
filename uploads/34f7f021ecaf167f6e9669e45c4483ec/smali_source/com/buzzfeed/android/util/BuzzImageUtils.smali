.class public Lcom/buzzfeed/android/util/BuzzImageUtils;
.super Ljava/lang/Object;
.source "BuzzImageUtils.java"


# static fields
.field private static CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0x1a9

    sput v0, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    .line 17
    const-class v0, Lcom/buzzfeed/android/util/BuzzImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzImageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downsizeImageSaveToPathOut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "pathIn"    # Ljava/lang/String;
    .param p1, "pathOut"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzImageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".downsizeImageSaveToPathOut"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzImageUtils;->resizeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 24
    .local v3, "resizedImage":Landroid/graphics/Bitmap;
    :try_start_19
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "out":Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 26
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 30
    .end local v2    # "out":Ljava/io/OutputStream;
    :goto_28
    return-void

    .line 27
    :catch_29
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error resizing image"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static resizeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "pathIn"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .local v8, "originalImageOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    invoke-static {p0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 38
    .local v14, "width":I
    sget v1, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    div-int v1, v14, v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v9, v2

    .line 40
    .local v9, "resampleSize":I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v10, "resampledImageOptions":Landroid/graphics/BitmapFactory$Options;
    iput v9, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 44
    invoke-static {p0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "bmpt":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    .local v5, "m":Landroid/graphics/Matrix;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 50
    .local v13, "sdk":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    if-le v1, v2, :cond_7e

    .line 52
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v7, "bitmapOutputOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x4

    if-le v13, v1, :cond_a6

    .line 56
    invoke-static {p0}, Lcom/buzzfeed/android/util/ExifUtils;->getExifRotation(Ljava/lang/String;)I

    move-result v11

    .line 57
    .local v11, "rotation":I
    if-eqz v11, :cond_9b

    .line 59
    sget v1, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 68
    .end local v11    # "rotation":I
    .local v12, "scaleVal":F
    :goto_51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 71
    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 71
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 75
    .end local v7    # "bitmapOutputOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scaleVal":F
    :cond_7e
    const/4 v1, 0x4

    if-le v13, v1, :cond_8b

    .line 76
    invoke-static {p0}, Lcom/buzzfeed/android/util/ExifUtils;->getExifRotation(Ljava/lang/String;)I

    move-result v11

    .line 77
    .restart local v11    # "rotation":I
    if-eqz v11, :cond_8b

    .line 78
    int-to-float v1, v11

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 82
    .end local v11    # "rotation":I
    :cond_8b
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 62
    .restart local v7    # "bitmapOutputOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "rotation":I
    :cond_9b
    sget v1, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .restart local v12    # "scaleVal":F
    goto :goto_51

    .line 66
    .end local v11    # "rotation":I
    .end local v12    # "scaleVal":F
    :cond_a6
    sget v1, Lcom/buzzfeed/android/util/BuzzImageUtils;->CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .restart local v12    # "scaleVal":F
    goto :goto_51
.end method
