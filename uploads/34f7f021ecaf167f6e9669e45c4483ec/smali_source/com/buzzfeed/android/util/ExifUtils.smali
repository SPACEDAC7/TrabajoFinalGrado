.class public Lcom/buzzfeed/android/util/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifRotation(Ljava/lang/String;)I
    .registers 7
    .param p0, "imgPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 27
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "rotationAmount":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_23

    move-result v3

    .line 31
    .local v3, "rotationParam":I
    packed-switch v3, :pswitch_data_26

    .line 47
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "rotationAmount":Ljava/lang/String;
    .end local v3    # "rotationParam":I
    :cond_19
    :goto_19
    :pswitch_19
    return v4

    .line 35
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "rotationAmount":Ljava/lang/String;
    .restart local v3    # "rotationParam":I
    :pswitch_1a
    const/16 v4, 0x5a

    goto :goto_19

    .line 37
    :pswitch_1d
    const/16 v4, 0xb4

    goto :goto_19

    .line 39
    :pswitch_20
    const/16 v4, 0x10e

    goto :goto_19

    .line 46
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "rotationAmount":Ljava/lang/String;
    .end local v3    # "rotationParam":I
    :catch_23
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_19

    .line 31
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method
