.class Lcom/google/ads/interactivemedia/v3/a/o$2;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/o;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/o;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/o;Landroid/view/Surface;)V
    .registers 3

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/o$2;->b:Lcom/google/ads/interactivemedia/v3/a/o;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/o$2;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o$2;->b:Lcom/google/ads/interactivemedia/v3/a/o;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Lcom/google/ads/interactivemedia/v3/a/o;)Lcom/google/ads/interactivemedia/v3/a/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/o$2;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/o$a;->a(Landroid/view/Surface;)V

    .line 586
    return-void
.end method
