.class public Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;
.super Ljava/lang/Object;
.source "CustomQuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private final backgroundColor:I

.field private final gap:F

.field private final stripeColor:I

.field private final stripeWidth:F


# direct methods
.method public constructor <init>(IIFF)V
    .registers 5
    .param p1, "backgroundColor"    # I
    .param p2, "stripeColor"    # I
    .param p3, "stripeWidth"    # F
    .param p4, "gap"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->backgroundColor:I

    .line 17
    iput p2, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->stripeColor:I

    .line 18
    iput p3, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->stripeWidth:F

    .line 19
    iput p4, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->gap:F

    .line 20
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .registers 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lnum"    # I

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 45
    .local v6, "paintColor":I
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->backgroundColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v3, p4

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 31
    .local v7, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 33
    .local v6, "paintColor":I
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->stripeColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v0, p3

    int-to-float v3, p4

    iget v4, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->stripeWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 4
    .param p1, "first"    # Z

    .prologue
    .line 24
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->stripeWidth:F

    iget v1, p0, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;->gap:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
