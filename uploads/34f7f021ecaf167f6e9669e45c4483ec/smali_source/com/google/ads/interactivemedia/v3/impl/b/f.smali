.class public Lcom/google/ads/interactivemedia/v3/impl/b/f;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->a:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    if-eqz v0, :cond_16

    .line 31
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 32
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    return-void
.end method
