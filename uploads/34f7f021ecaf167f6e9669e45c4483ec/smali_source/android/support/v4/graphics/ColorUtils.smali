.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 14
    .param p0, "hsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 238
    const/4 v10, 0x0

    aget v3, p0, v10

    .line 239
    .local v3, "h":F
    const/4 v10, 0x1

    aget v8, p0, v10

    .line 240
    .local v8, "s":F
    const/4 v10, 0x2

    aget v5, p0, v10

    .line 242
    .local v5, "l":F
    const/high16 v10, 0x3f800000

    const/high16 v11, 0x40000000

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v10, v8

    .line 243
    .local v1, "c":F
    const/high16 v10, 0x3f000000

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    .line 244
    .local v6, "m":F
    const/high16 v10, 0x3f800000

    const/high16 v11, 0x42700000

    div-float v11, v3, v11

    const/high16 v12, 0x40000000

    rem-float/2addr v11, v12

    const/high16 v12, 0x3f800000

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v9, v1, v10

    .line 246
    .local v9, "x":F
    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    .line 248
    .local v4, "hueSegment":I
    const/4 v7, 0x0

    .local v7, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v0, 0x0

    .line 250
    .local v0, "b":I
    packed-switch v4, :pswitch_data_f2

    .line 284
    :goto_39
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v7

    .line 285
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v2

    .line 286
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 288
    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    .line 252
    :pswitch_53
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 253
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 254
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 255
    goto :goto_39

    .line 257
    :pswitch_6d
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 258
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 259
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 260
    goto :goto_39

    .line 262
    :pswitch_87
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 263
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 264
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 265
    goto :goto_39

    .line 267
    :pswitch_a1
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 268
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 269
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 270
    goto/16 :goto_39

    .line 272
    :pswitch_bc
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 273
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 274
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 275
    goto/16 :goto_39

    .line 278
    :pswitch_d7
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 279
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 280
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_39

    .line 250
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_53
        :pswitch_6d
        :pswitch_87
        :pswitch_a1
        :pswitch_bc
        :pswitch_d7
        :pswitch_d7
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14
    .param p0, "l"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2, "a"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4, "b"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v6

    .local v6, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 503
    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 504
    const/4 v0, 0x0

    aget-wide v0, v6, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 25
    .param p0, "l"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2, "a"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4, "b"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 445
    const-wide/high16 v14, 0x4030000000000000L

    add-double v14, v14, p0

    const-wide/high16 v16, 0x405d000000000000L

    div-double v2, v14, v16

    .line 446
    .local v2, "fy":D
    const-wide v14, 0x407f400000000000L

    div-double v14, p2, v14

    add-double v0, v14, v2

    .line 447
    .local v0, "fx":D
    const-wide/high16 v14, 0x4069000000000000L

    div-double v14, p4, v14

    sub-double v4, v2, v14

    .line 449
    .local v4, "fz":D
    const-wide/high16 v14, 0x4008000000000000L

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 450
    .local v6, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL

    cmpl-double v14, v6, v14

    if-lez v14, :cond_62

    move-wide v8, v6

    .line 451
    .local v8, "xr":D
    :goto_27
    const-wide v14, 0x401fff9da4c11507L

    cmpl-double v14, p0, v14

    if-lez v14, :cond_71

    const-wide/high16 v14, 0x4008000000000000L

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 453
    .local v10, "yr":D
    :goto_36
    const-wide/high16 v14, 0x4008000000000000L

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 454
    const-wide v14, 0x3f82231832fcac8eL

    cmpl-double v14, v6, v14

    if-lez v14, :cond_79

    move-wide v12, v6

    .line 456
    .local v12, "zr":D
    :goto_46
    const/4 v14, 0x0

    const-wide v16, 0x4057c3020c49ba5eL

    mul-double v16, v16, v8

    aput-wide v16, p6, v14

    .line 457
    const/4 v14, 0x1

    const-wide/high16 v16, 0x4059000000000000L

    mul-double v16, v16, v10

    aput-wide v16, p6, v14

    .line 458
    const/4 v14, 0x2

    const-wide v16, 0x405b3883126e978dL

    mul-double v16, v16, v12

    aput-wide v16, p6, v14

    .line 459
    return-void

    .line 450
    .end local v8    # "xr":D
    .end local v10    # "yr":D
    .end local v12    # "zr":D
    :cond_62
    const-wide/high16 v14, 0x405d000000000000L

    mul-double/2addr v14, v0

    const-wide/high16 v16, 0x4030000000000000L

    sub-double v14, v14, v16

    const-wide v16, 0x408c3a6666666666L

    div-double v8, v14, v16

    goto :goto_27

    .line 451
    .restart local v8    # "xr":D
    :cond_71
    const-wide v14, 0x408c3a6666666666L

    div-double v10, p0, v14

    goto :goto_36

    .line 454
    .restart local v10    # "yr":D
    :cond_79
    const-wide/high16 v14, 0x405d000000000000L

    mul-double/2addr v14, v4

    const-wide/high16 v16, 0x4030000000000000L

    sub-double v14, v14, v16

    const-wide v16, 0x408c3a6666666666L

    div-double v12, v14, v16

    goto :goto_46
.end method

.method public static RGBToHSL(III[F)V
    .registers 16
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outHsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    int-to-float v9, p0

    const/high16 v10, 0x437f0000

    div-float v7, v9, v10

    .line 174
    .local v7, "rf":F
    int-to-float v9, p1

    const/high16 v10, 0x437f0000

    div-float v2, v9, v10

    .line 175
    .local v2, "gf":F
    int-to-float v9, p2

    const/high16 v10, 0x437f0000

    div-float v0, v9, v10

    .line 177
    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 178
    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 179
    .local v6, "min":F
    sub-float v1, v5, v6

    .line 182
    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    const/high16 v10, 0x40000000

    div-float v4, v9, v10

    .line 184
    .local v4, "l":F
    cmpl-float v9, v5, v6

    if-nez v9, :cond_5b

    .line 186
    const/4 v8, 0x0

    .local v8, "s":F
    move v3, v8

    .line 199
    .local v3, "h":F
    :goto_2d
    const/high16 v9, 0x42700000

    mul-float/2addr v9, v3

    const/high16 v10, 0x43b40000

    rem-float v3, v9, v10

    .line 200
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_3c

    .line 201
    const/high16 v9, 0x43b40000

    add-float/2addr v3, v9

    .line 204
    :cond_3c
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000

    invoke-static {v3, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 205
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    invoke-static {v8, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 206
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    invoke-static {v4, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 207
    return-void

    .line 188
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_5b
    cmpl-float v9, v5, v7

    if-nez v9, :cond_76

    .line 189
    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000

    rem-float v3, v9, v10

    .line 196
    .restart local v3    # "h":F
    :goto_66
    const/high16 v9, 0x3f800000

    const/high16 v10, 0x40000000

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    .restart local v8    # "s":F
    goto :goto_2d

    .line 190
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_76
    cmpl-float v9, v5, v2

    if-nez v9, :cond_82

    .line 191
    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_66

    .line 193
    .end local v3    # "h":F
    :cond_82
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_66
.end method

.method public static RGBToLAB(III[D)V
    .registers 11
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 333
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    const/4 v4, 0x2

    aget-wide v4, p3, v4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 335
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 20
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 376
    move-object/from16 v0, p3

    array-length v8, v0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_e

    .line 377
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "outXyz must have a length of 3."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 380
    :cond_e
    move/from16 v0, p0

    int-to-double v8, v0

    const-wide v10, 0x406fe00000000000L

    div-double v6, v8, v10

    .line 381
    .local v6, "sr":D
    const-wide v8, 0x3fa4b5dcc63f1412L

    cmpg-double v8, v6, v8

    if-gez v8, :cond_a8

    const-wide v8, 0x4029d70a3d70a3d7L

    div-double/2addr v6, v8

    .line 382
    :goto_27
    move/from16 v0, p1

    int-to-double v8, v0

    const-wide v10, 0x406fe00000000000L

    div-double v4, v8, v10

    .line 383
    .local v4, "sg":D
    const-wide v8, 0x3fa4b5dcc63f1412L

    cmpg-double v8, v4, v8

    if-gez v8, :cond_bf

    const-wide v8, 0x4029d70a3d70a3d7L

    div-double/2addr v4, v8

    .line 384
    :goto_40
    move/from16 v0, p2

    int-to-double v8, v0

    const-wide v10, 0x406fe00000000000L

    div-double v2, v8, v10

    .line 385
    .local v2, "sb":D
    const-wide v8, 0x3fa4b5dcc63f1412L

    cmpg-double v8, v2, v8

    if-gez v8, :cond_d6

    const-wide v8, 0x4029d70a3d70a3d7L

    div-double/2addr v2, v8

    .line 387
    :goto_59
    const/4 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L

    const-wide v12, 0x3fda64c2f837b4a2L

    mul-double/2addr v12, v6

    const-wide v14, 0x3fd6e2eb1c432ca5L

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    const-wide v14, 0x3fc71a9fbe76c8b4L

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    aput-wide v10, p3, v8

    .line 388
    const/4 v8, 0x1

    const-wide/high16 v10, 0x4059000000000000L

    const-wide v12, 0x3fcb367a0f9096bcL

    mul-double/2addr v12, v6

    const-wide v14, 0x3fe6e2eb1c432ca5L

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    const-wide v14, 0x3fb27bb2fec56d5dL

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    aput-wide v10, p3, v8

    .line 389
    const/4 v8, 0x2

    const-wide/high16 v10, 0x4059000000000000L

    const-wide v12, 0x3f93c36113404ea5L

    mul-double/2addr v12, v6

    const-wide v14, 0x3fbe83e425aee632L

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    const-wide v14, 0x3fee6a7ef9db22d1L

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    aput-wide v10, p3, v8

    .line 390
    return-void

    .line 381
    .end local v2    # "sb":D
    .end local v4    # "sg":D
    :cond_a8
    const-wide v8, 0x3fac28f5c28f5c29L

    add-double/2addr v8, v6

    const-wide v10, 0x3ff0e147ae147ae1L

    div-double/2addr v8, v10

    const-wide v10, 0x4003333333333333L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto/16 :goto_27

    .line 383
    .restart local v4    # "sg":D
    :cond_bf
    const-wide v8, 0x3fac28f5c28f5c29L

    add-double/2addr v8, v4

    const-wide v10, 0x3ff0e147ae147ae1L

    div-double/2addr v8, v10

    const-wide v10, 0x4003333333333333L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto/16 :goto_40

    .line 385
    .restart local v2    # "sb":D
    :cond_d6
    const-wide v8, 0x3fac28f5c28f5c29L

    add-double/2addr v8, v2

    const-wide v10, 0x3ff0e147ae147ae1L

    div-double/2addr v8, v10

    const-wide v10, 0x4003333333333333L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_59
.end method

.method public static XYZToColor(DDD)I
    .registers 18
    .param p0, "x"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2, "y"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4, "z"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 476
    const-wide v6, 0x4009ecbfb15b573fL

    mul-double/2addr v6, p0

    const-wide v8, -0x400767a0f9096bbaL

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L

    div-double v4, v6, v8

    .line 477
    .local v4, "r":D
    const-wide v6, -0x4010fec56d5cfaadL

    mul-double/2addr v6, p0

    const-wide v8, 0x3ffe0346dc5d6388L

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3fa53f7ced916873L

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L

    div-double v2, v6, v8

    .line 478
    .local v2, "g":D
    const-wide v6, 0x3fac84b5dcc63f14L

    mul-double/2addr v6, p0

    const-wide v8, -0x4035e353f7ced917L

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L

    div-double v0, v6, v8

    .line 480
    .local v0, "b":D
    const-wide v6, 0x3f69a5c37387b719L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_e3

    const-wide v6, 0x3ff0e147ae147ae1L

    const-wide v8, 0x3fdaaaaaaaaaaaabL

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L

    sub-double v4, v6, v8

    .line 481
    :goto_6a
    const-wide v6, 0x3f69a5c37387b719L

    cmpl-double v6, v2, v6

    if-lez v6, :cond_ea

    const-wide v6, 0x3ff0e147ae147ae1L

    const-wide v8, 0x3fdaaaaaaaaaaaabL

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L

    sub-double v2, v6, v8

    .line 482
    :goto_89
    const-wide v6, 0x3f69a5c37387b719L

    cmpl-double v6, v0, v6

    if-lez v6, :cond_f1

    const-wide v6, 0x3ff0e147ae147ae1L

    const-wide v8, 0x3fdaaaaaaaaaaaabL

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L

    sub-double v0, v6, v8

    .line 484
    :goto_a8
    const-wide v6, 0x406fe00000000000L

    mul-double/2addr v6, v4

    .line 485
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v6

    const-wide v8, 0x406fe00000000000L

    mul-double/2addr v8, v2

    .line 486
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v7

    const-wide v8, 0x406fe00000000000L

    mul-double/2addr v8, v0

    .line 487
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    const/16 v10, 0xff

    invoke-static {v8, v9, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v8

    .line 484
    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    return v6

    .line 480
    :cond_e3
    const-wide v6, 0x4029d70a3d70a3d7L

    mul-double/2addr v4, v6

    goto :goto_6a

    .line 481
    :cond_ea
    const-wide v6, 0x4029d70a3d70a3d7L

    mul-double/2addr v2, v6

    goto :goto_89

    .line 482
    :cond_f1
    const-wide v6, 0x4029d70a3d70a3d7L

    mul-double/2addr v0, v6

    goto :goto_a8
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 15
    .param p0, "x"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2, "y"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4, "z"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    array-length v0, p6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    const-wide v0, 0x4057c3020c49ba5eL

    div-double v0, p0, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 417
    const-wide/high16 v0, 0x4059000000000000L

    div-double v0, p2, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 418
    const-wide v0, 0x405b3883126e978dL

    div-double v0, p4, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 419
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x405d000000000000L

    mul-double/2addr v4, p2

    const-wide/high16 v6, 0x4030000000000000L

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, p6, v0

    .line 420
    const/4 v0, 0x1

    const-wide v2, 0x407f400000000000L

    sub-double v4, p0, p2

    mul-double/2addr v2, v4

    aput-wide v2, p6, v0

    .line 421
    const/4 v0, 0x2

    const-wide/high16 v2, 0x4069000000000000L

    sub-double v4, p2, p4

    mul-double/2addr v2, v4

    aput-wide v2, p6, v0

    .line 422
    return-void
.end method

.method public static blendARGB(IIF)I
    .registers 12
    .param p0, "color1"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "color2"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "ratio"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 543
    const/high16 v5, 0x3f800000

    sub-float v3, v5, p2

    .line 544
    .local v3, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v0, v5, v6

    .line 545
    .local v0, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    .line 546
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v2, v5, v6

    .line 547
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v1, v5, v6

    .line 548
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static blendHSL([F[FF[F)V
    .registers 10
    .param p0, "hsl1"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hsl2"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ratio"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3, "outResult"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    array-length v1, p3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 566
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "result must have a length of 3."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_f
    const/high16 v1, 0x3f800000

    sub-float v0, v1, p2

    .line 570
    .local v0, "inverseRatio":F
    aget v1, p0, v3

    aget v2, p1, v3

    invoke-static {v1, v2, p2}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v1

    aput v1, p3, v3

    .line 571
    aget v1, p0, v4

    mul-float/2addr v1, v0

    aget v2, p1, v4

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p3, v4

    .line 572
    aget v1, p0, v5

    mul-float/2addr v1, v0

    aget v2, p1, v5

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p3, v5

    .line 573
    return-void
.end method

.method public static blendLAB([D[DD[D)V
    .registers 15
    .param p0, "lab1"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lab2"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ratio"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "outResult"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 588
    array-length v2, p4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    .line 589
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "outResult must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 591
    :cond_f
    const-wide/high16 v2, 0x3ff0000000000000L

    sub-double v0, v2, p2

    .line 592
    .local v0, "inverseRatio":D
    aget-wide v2, p0, v6

    mul-double/2addr v2, v0

    aget-wide v4, p1, v6

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    aput-wide v2, p4, v6

    .line 593
    aget-wide v2, p0, v7

    mul-double/2addr v2, v0

    aget-wide v4, p1, v7

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    aput-wide v2, p4, v7

    .line 594
    aget-wide v2, p0, v8

    mul-double/2addr v2, v0

    aget-wide v4, p1, v8

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    aput-wide v2, p4, v8

    .line 595
    return-void
.end method

.method public static calculateContrast(II)D
    .registers 10
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xff

    const-wide v6, 0x3fa999999999999aL

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eq v4, v5, :cond_2a

    .line 92
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "background can not be translucent: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_2a
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ge v4, v5, :cond_34

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_34
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v0, v4, v6

    .line 101
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v2, v4, v6

    .line 104
    .local v2, "luminance2":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .registers 7
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 78
    .local v0, "result":[D
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 80
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 13
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "minContrastRatio"    # F

    .prologue
    const/16 v8, 0xff

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eq v5, v8, :cond_25

    .line 120
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "background can not be translucent: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_25
    invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 126
    .local v4, "testForeground":I
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 127
    .local v6, "testRatio":D
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_34

    .line 129
    const/4 v0, -0x1

    .line 154
    :cond_33
    return v0

    .line 133
    :cond_34
    const/4 v2, 0x0

    .line 134
    .local v2, "numIterations":I
    const/4 v1, 0x0

    .line 135
    .local v1, "minAlpha":I
    const/16 v0, 0xff

    .line 137
    .local v0, "maxAlpha":I
    :goto_38
    const/16 v5, 0xa

    if-gt v2, v5, :cond_33

    sub-int v5, v0, v1

    const/4 v8, 0x1

    if-le v5, v8, :cond_33

    .line 139
    add-int v5, v1, v0

    div-int/lit8 v3, v5, 0x2

    .line 141
    .local v3, "testAlpha":I
    invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 142
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 144
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_56

    .line 145
    move v1, v3

    .line 150
    :goto_53
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_38

    .line 147
    :cond_56
    move v0, v3

    goto :goto_53
.end method

.method static circularInterpolate(FFF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v2, 0x43b40000

    .line 599
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    .line 600
    cmpl-float v0, p1, p0

    if-lez v0, :cond_19

    .line 601
    add-float/2addr p0, v2

    .line 606
    :cond_13
    :goto_13
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v2

    return v0

    .line 603
    :cond_19
    add-float/2addr p1, v2

    goto :goto_13
.end method

.method public static colorToHSL(I[F)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outHsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 222
    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 311
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 354
    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 4
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .prologue
    .line 63
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .registers 10
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 49
    .local v2, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 50
    .local v3, "fgAlpha":I
    invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v0

    .line 52
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 52
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 54
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 54
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 56
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 56
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v1

    .line 59
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .registers 8
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .prologue
    .line 67
    if-nez p4, :cond_4

    const/4 v0, 0x0

    .line 68
    :goto_3
    return v0

    :cond_4
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_3
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 517
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1    # "low":F
    :goto_4
    return p1

    .restart local p1    # "low":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static constrain(III)I
    .registers 3
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 521
    if-ge p0, p1, :cond_3

    .end local p1    # "low":I
    :goto_2
    return p1

    .restart local p1    # "low":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11
    .param p0, "labX"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "labY"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4000000000000000L

    .line 511
    aget-wide v0, p0, v2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    aget-wide v2, p0, v4

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    .line 512
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    aget-wide v2, p0, v8

    aget-wide v4, p1, v8

    sub-double/2addr v2, v4

    .line 513
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 511
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    .prologue
    .line 610
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 611
    .local v0, "result":[D
    if-nez v0, :cond_12

    .line 612
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 613
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 615
    :cond_12
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .registers 6
    .param p0, "component"    # D

    .prologue
    .line 525
    const-wide v0, 0x3f82231832fcac8eL

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    const-wide v0, 0x3fd5555555555555L

    .line 526
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide v0, 0x408c3a6666666666L

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L

    div-double/2addr v0, v2

    goto :goto_12
.end method

.method public static setAlphaComponent(II)I
    .registers 4
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 297
    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-le p1, v0, :cond_e

    .line 298
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_e
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
