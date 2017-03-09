.class public Ljackpal/androidterm/shortcuts/TextIcon;
.super Ljava/lang/Object;
.source "TextIcon.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 29
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "color"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 18
    const-string v21, "\\s*\n\\s*"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 19
    .local v15, "lines":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v16, v0

    .line 20
    .local v16, "nLines":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .local v7, "R":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Paint;

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .local v17, "p":Landroid/graphics/Paint;
    const/high16 v21, 0x40000000

    const/high16 v22, 0x41200000

    const/high16 v23, 0x41200000

    const/high16 v24, -0x1000000

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 23
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 25
    const/high16 v21, 0x43800000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 27
    move/from16 v0, v16

    new-array v6, v0, [F

    .line 28
    .local v6, "HH":[F
    const/4 v5, 0x0

    .line 29
    .local v5, "H":F
    const/4 v8, 0x0

    .line 30
    .local v8, "W":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5f
    move/from16 v0, v16

    if-ge v14, v0, :cond_c9

    .line 32
    aget-object v21, v15, v14

    const/16 v22, 0x0

    aget-object v23, v15, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 33
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 34
    .local v12, "h":F
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .line 35
    .local v19, "w":F
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_bd

    const v21, 0x3dcccccd

    mul-float v21, v21, v12

    add-float v12, v12, v21

    .line 36
    :cond_bd
    aput v12, v6, v14

    .line 37
    add-float/2addr v5, v12

    .line 38
    cmpl-float v21, v19, v8

    if-lez v21, :cond_c6

    move/from16 v8, v19

    .line 30
    :cond_c6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5f

    .line 40
    .end local v12    # "h":F
    .end local v19    # "w":F
    :cond_c9
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v11, v21, v22

    .line 41
    .local v11, "f":F
    float-to-int v13, v5

    .line 42
    .local v13, "hBitmap":I
    float-to-int v0, v8

    move/from16 v20, v0

    .line 43
    .local v20, "wBitmap":I
    cmpg-float v21, v8, v11

    if-gez v21, :cond_148

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 46
    :goto_ef
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 47
    .local v9, "b":Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 48
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v10, "c":Landroid/graphics/Canvas;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v8, v21, v22

    .line 51
    int-to-float v0, v13

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    const/high16 v22, 0x40000000

    div-float v22, v5, v22

    sub-float v21, v21, v22

    const/16 v22, 0x0

    aget v22, v6, v22

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    add-float v18, v21, v22

    .line 52
    .local v18, "top":F
    const/4 v14, 0x0

    :goto_126
    move/from16 v0, v16

    if-ge v14, v0, :cond_162

    .line 54
    aget v21, v6, v14

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v18, v18, v21

    .line 55
    aget-object v21, v15, v14

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    aget v21, v6, v14

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v18, v18, v21

    .line 52
    add-int/lit8 v14, v14, 0x1

    goto :goto_126

    .line 44
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v18    # "top":F
    :cond_148
    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int v21, p3, v20

    div-int v21, v21, p2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/util/FloatMath;->ceil(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    goto :goto_ef

    .line 58
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    .restart local v10    # "c":Landroid/graphics/Canvas;
    .restart local v18    # "top":F
    :cond_162
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v21

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    return-object v21
.end method
