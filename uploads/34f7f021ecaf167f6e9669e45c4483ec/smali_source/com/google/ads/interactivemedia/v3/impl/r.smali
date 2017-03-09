.class public Lcom/google/ads/interactivemedia/v3/impl/r;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/ViewGroup;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public addClickListener(Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;)V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->a:I

    return v0
.end method

.method public isFilled()Z
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeClickListener(Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->c:Landroid/view/ViewGroup;

    .line 77
    return-void
.end method

.method public setSize(II)V
    .registers 3

    .prologue
    .line 52
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->a:I

    .line 53
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/impl/r;->b:I

    .line 54
    return-void
.end method
