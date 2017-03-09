.class final Lcom/google/ads/interactivemedia/v3/a/l$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/n;->a()Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/a/n;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v0

    return-object v0
.end method
