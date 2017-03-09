.class final Lcom/google/ads/interactivemedia/v3/impl/aa$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/b/s",
        "<",
        "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 9

    .prologue
    .line 137
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getHeight()I

    move-result v2

    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 5

    .prologue
    .line 133
    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->a(Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    return-object v0
.end method
