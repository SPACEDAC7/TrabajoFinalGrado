.class Lcom/google/ads/interactivemedia/v3/a/k$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/k;->a(Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/a/b$d;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/k;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V
    .registers 3

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/k$1;->b:Lcom/google/ads/interactivemedia/v3/a/k;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/k$1;->a:Lcom/google/ads/interactivemedia/v3/a/a/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k$1;->b:Lcom/google/ads/interactivemedia/v3/a/k;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Lcom/google/ads/interactivemedia/v3/a/k;)Lcom/google/ads/interactivemedia/v3/a/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/k$1;->a:Lcom/google/ads/interactivemedia/v3/a/a/b$d;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/k$a;->a(Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V

    .line 456
    return-void
.end method
