.class Lcom/google/ads/interactivemedia/v3/a/c/h$d;
.super Lcom/google/ads/interactivemedia/v3/a/c/c;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/c/h;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/h;Lcom/google/ads/interactivemedia/v3/a/e/b;)V
    .registers 3

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a:Lcom/google/ads/interactivemedia/v3/a/c/h;

    .line 767
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/b;)V

    .line 768
    return-void
.end method


# virtual methods
.method public a(JIII[B)V
    .registers 8

    .prologue
    .line 772
    invoke-super/range {p0 .. p6}, Lcom/google/ads/interactivemedia/v3/a/c/c;->a(JIII[B)V

    .line 773
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a:Lcom/google/ads/interactivemedia/v3/a/c/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->d(Lcom/google/ads/interactivemedia/v3/a/c/h;)I

    .line 774
    return-void
.end method
