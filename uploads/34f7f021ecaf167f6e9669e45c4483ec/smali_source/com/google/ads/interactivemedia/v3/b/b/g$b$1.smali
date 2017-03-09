.class Lcom/google/ads/interactivemedia/v3/b/b/g$b$1;
.super Lcom/google/ads/interactivemedia/v3/b/b/g$c;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/g$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/b/g$c",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/g$b;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/g$b;)V
    .registers 3

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b$1;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$b;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g$c;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/g$b$1;->b()Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->f:Ljava/lang/Object;

    return-object v0
.end method
