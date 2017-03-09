.class public Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;
    }
.end annotation


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private final availableSpaceRect:Landroid/graphics/RectF;

.field private enableSizeCache:Z

.field private initiallized:Z

.field private maxLines:I

.field private maxTextSize:F

.field private minTextSize:F

.field private paint:Landroid/text/TextPaint;

.field private final sizeTester:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;

.field private spacingAdd:F

.field private spacingMult:F

.field private final textCachedSizes:Landroid/util/SparseIntArray;

.field private widthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    .line 27
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingMult:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingAdd:F

    .line 32
    iput-boolean v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->enableSizeCache:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->initiallized:Z

    .line 58
    const/4 v0, 0x2

    const/high16 v1, 0x41400000

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->minTextSize:F

    .line 59
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxTextSize:F

    .line 60
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    if-nez v0, :cond_3c

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    .line 64
    :cond_3c
    new-instance v0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;-><init>(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->sizeTester:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;

    .line 96
    iput-boolean v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->initiallized:Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)Landroid/text/TextPaint;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->widthLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)F
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingMult:F

    return v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)F
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingAdd:F

    return v0
.end method

.method private adjustTextSize()V
    .registers 7

    .prologue
    .line 173
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->initiallized:Z

    if-nez v2, :cond_5

    .line 183
    :cond_4
    :goto_4
    return-void

    .line 175
    :cond_5
    iget v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->minTextSize:F

    float-to-int v1, v2

    .line 176
    .local v1, "startSize":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 177
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->widthLimit:I

    .line 178
    iget v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->widthLimit:I

    if-lez v2, :cond_4

    .line 180
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->widthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 181
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 182
    const/4 v2, 0x0

    iget v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxTextSize:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->sizeTester:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->efficientTextSizeSearch(IILcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v3

    int-to-float v3, v3

    invoke-super {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4
.end method

.method private binarySearch(IILcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 199
    move v1, p1

    .line 200
    .local v1, "lastBest":I
    move v2, p1

    .line 201
    .local v2, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 202
    .local v0, "hi":I
    const/4 v3, 0x0

    .line 203
    .local v3, "mid":I
    :goto_5
    if-gt v2, v0, :cond_1c

    .line 204
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 205
    invoke-interface {p3, v3, p4}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 206
    .local v4, "midValCmp":I
    if-gez v4, :cond_15

    .line 207
    move v1, v2

    .line 208
    add-int/lit8 v2, v3, 0x1

    goto :goto_5

    .line 209
    :cond_15
    if-lez v4, :cond_1b

    .line 210
    add-int/lit8 v0, v3, -0x1

    .line 211
    move v1, v0

    goto :goto_5

    :cond_1b
    move v1, v3

    .line 216
    .end local v1    # "lastBest":I
    .end local v4    # "midValCmp":I
    :cond_1c
    return v1
.end method

.method private efficientTextSizeSearch(IILcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 186
    iget-boolean v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->enableSizeCache:Z

    if-nez v3, :cond_9

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->binarySearch(IILcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 195
    :cond_8
    :goto_8
    return v1

    .line 188
    :cond_9
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, "key":I
    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 191
    .local v1, "size":I
    if-nez v1, :cond_8

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->binarySearch(IILcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 194
    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_8
.end method

.method private reAdjust()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->adjustTextSize()V

    .line 170
    return-void
.end method


# virtual methods
.method public getMaxLines()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 229
    if-ne p1, p3, :cond_c

    if-eq p2, p4, :cond_f

    .line 230
    :cond_c
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 231
    :cond_f
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 222
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 223
    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 3
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 164
    iput p2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingMult:F

    .line 165
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingAdd:F

    .line 166
    return-void
.end method

.method public setLines(I)V
    .registers 2
    .param p1, "lines"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 145
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    .line 146
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 147
    return-void
.end method

.method public setMaxLines(I)V
    .registers 2
    .param p1, "maxlines"    # I

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    .line 118
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 119
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    .line 130
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 131
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 136
    if-eqz p1, :cond_c

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    .line 139
    :goto_8
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->reAdjust()V

    .line 140
    return-void

    .line 138
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxLines:I

    goto :goto_8
.end method

.method public setTextSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxTextSize:F

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->adjustTextSize()V

    .line 112
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_1d

    .line 154
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, "r":Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->maxTextSize:F

    .line 157
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->textCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 158
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->adjustTextSize()V

    .line 159
    return-void

    .line 155
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;

    if-nez v0, :cond_f

    .line 102
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;

    .line 103
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    return-void
.end method
