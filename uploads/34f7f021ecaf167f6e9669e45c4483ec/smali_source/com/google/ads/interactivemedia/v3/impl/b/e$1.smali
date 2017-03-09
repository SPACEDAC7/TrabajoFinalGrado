.class Lcom/google/ads/interactivemedia/v3/impl/b/e$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/b/e;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/b/e;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/b/e;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Lcom/google/ads/interactivemedia/v3/impl/b/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;

    .line 166
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;->c()V

    goto :goto_a

    .line 168
    :cond_1a
    return-void
.end method
