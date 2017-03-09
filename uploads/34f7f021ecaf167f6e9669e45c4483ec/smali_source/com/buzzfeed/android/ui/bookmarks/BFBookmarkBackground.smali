.class public Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;
.super Landroid/view/View;
.source "BFBookmarkBackground.java"


# static fields
.field private static final NUM_STRIPES:I = 0x3

.field public static final STYLE_USER_LOGGED:I = 0x1

.field public static final STYLE_USER_NOT_LOGGED:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBookmarkHeight:F

.field private mBookmarkPaint:Landroid/graphics/Paint;

.field private mBookmarkPath:Landroid/graphics/Path;

.field private mStripePaints:[Landroid/graphics/Paint;

.field private mStripePaths:[Landroid/graphics/Path;

.field private mStyle:I

.field private mStyleColor1:I

.field private mStyleColor2:I

.field private mStyleYOffset:F

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0xff

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkHeight:F

    .line 37
    const/16 v4, 0xc8

    invoke-static {v4, v10, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleColor1:I

    .line 38
    const/16 v4, 0xc8

    const/16 v5, 0x92

    const/16 v6, 0xf9

    invoke-static {v4, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleColor2:I

    .line 42
    new-array v4, v8, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    .line 43
    new-array v4, v8, [Landroid/graphics/Path;

    iput-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaths:[Landroid/graphics/Path;

    .line 49
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    .line 55
    new-array v2, v8, [I

    const/16 v4, 0x9a

    const/16 v5, 0x36

    invoke-static {v10, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v2, v7

    const/16 v4, 0xbe

    const/16 v5, 0x41

    invoke-static {v10, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v2, v9

    const/4 v4, 0x2

    const/16 v5, 0xf0

    const/16 v6, 0x52

    invoke-static {v10, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v2, v4

    .line 56
    .local v2, "colors":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_63
    if-ge v3, v8, :cond_93

    .line 57
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    aput-object v5, v4, v3

    .line 58
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v3

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v3

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v3

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaths:[Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    aput-object v5, v4, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 66
    :cond_93
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/buzzfeed/android/R$styleable;->BFBookmarkBackground:[I

    invoke-virtual {v4, p2, v5, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_9f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 72
    .local v1, "color":I
    iget-object v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    const/4 v4, 0x2

    const/high16 v5, 0x41200000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkHeight:F

    .line 74
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mXOffset:F

    .line 75
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mYOffset:F

    .line 76
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyle:I
    :try_end_c9
    .catchall {:try_start_9f .. :try_end_c9} :catchall_d2

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget v4, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyle:I

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->setStyleVars(I)Z

    .line 82
    return-void

    .line 78
    .end local v1    # "color":I
    :catchall_d2
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method private setStyleVars(I)Z
    .registers 5
    .param p1, "style"    # I

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setStyleVars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "TAG":Ljava/lang/String;
    packed-switch p1, :pswitch_data_4e

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for BFBookmarkBackground."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    .line 113
    :goto_35
    return v1

    .line 99
    :pswitch_36
    iget-object v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleColor1:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleYOffset:F

    .line 113
    :goto_40
    const/4 v1, 0x1

    goto :goto_35

    .line 104
    :pswitch_42
    iget-object v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleColor2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const/high16 v1, 0x42820000

    iput v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleYOffset:F

    goto :goto_40

    .line 97
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public getStyle()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyle:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_12

    .line 124
    iget-object v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaths:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_12
    iget-object v1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 25
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 132
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 134
    move/from16 v0, p1

    int-to-float v15, v0

    .line 135
    .local v15, "viewWidth":F
    move/from16 v0, p2

    int-to-float v13, v0

    .line 136
    .local v13, "viewHeight":F
    const/high16 v17, 0x40000000

    div-float v16, v15, v17

    .line 137
    .local v16, "viewWidthHalf":F
    const/high16 v17, 0x40000000

    div-float v14, v13, v17

    .line 140
    .local v14, "viewHeightHalf":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkHeight:F

    .line 141
    .local v2, "bmHeight":F
    const v17, 0x3f022681

    mul-float v3, v17, v2

    .line 142
    .local v3, "bmWidth":F
    const/high16 v17, 0x40000000

    div-float v17, v3, v17

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mXOffset:F

    move/from16 v18, v0

    add-float v4, v17, v18

    .line 143
    .local v4, "bmXOffset":F
    const/high16 v17, 0x40000000

    div-float v17, v2, v17

    sub-float v17, v14, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mYOffset:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleYOffset:F

    move/from16 v18, v0

    sub-float v5, v17, v18

    .line 144
    .local v5, "bmYOffset":F
    const v17, 0x3e1d97f6

    mul-float v12, v17, v2

    .line 145
    .local v12, "stripeHeight":F
    const v17, 0x3e1ed289

    mul-float v17, v17, v2

    add-float v17, v17, v5

    const v18, 0x3e8cd899

    mul-float v18, v18, v15

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v10, v17, v18

    .line 146
    .local v10, "startLeftYOffset":F
    const v17, 0x3e1ed289

    mul-float v17, v17, v2

    add-float v17, v17, v5

    const v18, 0x3e8cd899

    mul-float v18, v18, v15

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    sub-float v11, v17, v18

    .line 149
    .local v11, "startRightYOffset":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_68
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v6, v0, :cond_a9

    .line 150
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v7, v10, v17

    .line 151
    .local v7, "leftYOffset":F
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v9, v11, v17

    .line 152
    .local v9, "rightYOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStripePaths:[Landroid/graphics/Path;

    move-object/from16 v17, v0

    aget-object v8, v17, v6

    .line 153
    .local v8, "p":Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 154
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    invoke-virtual {v8, v15, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    add-float v17, v9, v12

    move/from16 v0, v17

    invoke-virtual {v8, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    const/16 v17, 0x0

    add-float v18, v7, v12

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 163
    .end local v7    # "leftYOffset":F
    .end local v8    # "p":Landroid/graphics/Path;
    .end local v9    # "rightYOffset":F
    :cond_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyleYOffset:F

    move/from16 v17, v0

    add-float v2, v2, v17

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v5, v2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v18, v3, v18

    add-float v18, v18, v4

    const v19, 0x3f51eb85

    mul-float v19, v19, v2

    add-float v19, v19, v5

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v4, v3

    add-float v19, v5, v2

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v4, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mBookmarkPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 172
    return-void
.end method

.method public setStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->setStyleVars(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    iput p1, p0, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->mStyle:I

    .line 90
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->invalidate()V

    .line 91
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/bookmarks/BFBookmarkBackground;->requestLayout()V

    .line 93
    :cond_e
    return-void
.end method
