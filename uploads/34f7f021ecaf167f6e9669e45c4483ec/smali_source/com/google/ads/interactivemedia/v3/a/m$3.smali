.class Lcom/google/ads/interactivemedia/v3/a/m$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/m;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/a/m;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/m;Ljava/lang/String;JJ)V
    .registers 8

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->d:Lcom/google/ads/interactivemedia/v3/a/m;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->b:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->d:Lcom/google/ads/interactivemedia/v3/a/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/m;)Lcom/google/ads/interactivemedia/v3/a/m$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->b:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/m$3;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/m$b;->a(Ljava/lang/String;JJ)V

    .line 1047
    return-void
.end method
