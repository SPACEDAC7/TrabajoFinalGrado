.class public Lcom/buzzfeed/buzzcat/RainbowPainter;
.super Ljava/lang/Object;
.source "RainbowPainter.java"


# instance fields
.field private mPaint:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    .line 11
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 12
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_orange:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 13
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_yellow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 14
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 15
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 16
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_indigo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buzzcat/R$color;->rainbow_violet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/buzzcat/RainbowPainter;->generatePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 18
    return-void
.end method

.method private static generatePaint(I)Landroid/graphics/Paint;
    .registers 2
    .param p0, "color"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public getNextIndex(I)I
    .registers 3
    .param p1, "last"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_9

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    goto :goto_8
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/RainbowPainter;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    return-object v0
.end method
