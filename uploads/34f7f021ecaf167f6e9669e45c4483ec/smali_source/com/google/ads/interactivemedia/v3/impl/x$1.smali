.class Lcom/google/ads/interactivemedia/v3/impl/x$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/x;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/g;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/impl/x;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/a/g;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .prologue
    .line 148
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;Z)Z

    .line 136
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/impl/x$f;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 137
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/impl/x$f;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->d:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    if-ne v0, v1, :cond_24

    .line 138
    :cond_1a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/Surface;Z)V

    .line 140
    :cond_24
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/impl/x$f;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    if-ne v0, v1, :cond_33

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Z)V

    .line 143
    :cond_33
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/Surface;Z)V

    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x;Z)Z

    .line 158
    return-void
.end method
