.class public Lcom/google/ads/interactivemedia/v3/impl/b/b;
.super Landroid/widget/FrameLayout;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/b/b$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;)V
    .registers 5

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a:F

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->t:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a:F

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a(IF)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->setPadding(IIII)V

    .line 81
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private a(IF)I
    .registers 5

    .prologue
    .line 89
    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
