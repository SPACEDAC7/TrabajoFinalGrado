.class public Lcom/google/ads/interactivemedia/v3/impl/p;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;


# static fields
.field private static d:I


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/google/ads/interactivemedia/v3/impl/p;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->b:Ljava/util/Collection;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->c:Ljava/util/Map;

    if-nez v0, :cond_42

    .line 55
    new-instance v1, Lcom/google/c/b/n$a;

    invoke-direct {v1}, Lcom/google/c/b/n$a;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 57
    if-eqz v0, :cond_f

    .line 58
    sget v3, Lcom/google/ads/interactivemedia/v3/impl/p;->d:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/google/ads/interactivemedia/v3/impl/p;->d:I

    const/16 v4, 0x14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "compSlot_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/c/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n$a;

    goto :goto_f

    .line 61
    :cond_3c
    invoke-virtual {v1}, Lcom/google/c/b/n$a;->a()Lcom/google/c/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->c:Ljava/util/Map;

    .line 63
    :cond_42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getAdContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCompanionSlots()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public setAdContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->a:Landroid/view/ViewGroup;

    .line 35
    return-void
.end method

.method public setCompanionSlots(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/p;->b:Ljava/util/Collection;

    .line 51
    return-void
.end method
