.class Lcom/google/ads/interactivemedia/v3/a/k$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/k;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/a/k;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/k;IJJ)V
    .registers 8

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->d:Lcom/google/ads/interactivemedia/v3/a/k;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->a:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->b:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->d:Lcom/google/ads/interactivemedia/v3/a/k;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Lcom/google/ads/interactivemedia/v3/a/k;)Lcom/google/ads/interactivemedia/v3/a/k$a;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->a:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->b:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/k$3;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/k$a;->a(IJJ)V

    .line 479
    return-void
.end method
