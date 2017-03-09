.class Lcom/google/ads/interactivemedia/v3/a/o$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/o;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/a/o;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/o;IJ)V
    .registers 6

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->c:Lcom/google/ads/interactivemedia/v3/a/o;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->a:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->c:Lcom/google/ads/interactivemedia/v3/a/o;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Lcom/google/ads/interactivemedia/v3/a/o;)Lcom/google/ads/interactivemedia/v3/a/o$a;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->a:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/o$3;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/o$a;->a(IJ)V

    .line 604
    return-void
.end method
