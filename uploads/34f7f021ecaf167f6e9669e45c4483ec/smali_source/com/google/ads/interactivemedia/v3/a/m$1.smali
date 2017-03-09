.class Lcom/google/ads/interactivemedia/v3/a/m$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/m;->b(Lcom/google/ads/interactivemedia/v3/a/m$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/m$a;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/m;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/m;Lcom/google/ads/interactivemedia/v3/a/m$a;)V
    .registers 3

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/m$1;->b:Lcom/google/ads/interactivemedia/v3/a/m;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/m$1;->a:Lcom/google/ads/interactivemedia/v3/a/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m$1;->b:Lcom/google/ads/interactivemedia/v3/a/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/m;)Lcom/google/ads/interactivemedia/v3/a/m$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m$1;->a:Lcom/google/ads/interactivemedia/v3/a/m$a;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/m$b;->a(Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    .line 1023
    return-void
.end method
