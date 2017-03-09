.class public Lcom/google/ads/interactivemedia/v3/impl/b/a;
.super Landroid/widget/LinearLayout;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;)V
    .registers 5

    .prologue
    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/16 v2, 0xa

    const/4 v3, -0x2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->d:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    .line 48
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->b:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->c:Landroid/widget/TextView;

    .line 51
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->i:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 53
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    .line 57
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->l:I

    .line 58
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 57
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/c;->a(IF)I

    move-result v0

    .line 59
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 63
    invoke-virtual {p0, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->m:Z

    if-eqz v0, :cond_a6

    .line 66
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->p:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->q:F

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->o:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 70
    invoke-virtual {p4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73
    invoke-virtual {p4}, Landroid/widget/TextView;->setSingleLine()V

    .line 75
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/b/a$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/b/a$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/b/a;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/a$2;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/b/a$2;-><init>(Lcom/google/ads/interactivemedia/v3/impl/b/a;)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0, p4, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_a6
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/b/a$a;

    .line 117
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/a$a;->c()V

    goto :goto_6

    .line 119
    :cond_16
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/b/a$a;)V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 123
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->c:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 125
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 127
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/b/a$3;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/b/a$3;-><init>(Lcom/google/ads/interactivemedia/v3/impl/b/a;)V

    .line 133
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 134
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/impl/b/d;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/impl/b/d;->e:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    invoke-virtual {v2, v4, v4, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 139
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 140
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method
