.class public abstract Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
.super Ljava/lang/Object;
.source "AbstractUnitImpressionRecorder.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mUnitImpressionCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    .line 33
    const-string v0, "RecyclerView cant be null"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 35
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/HashMap;)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "unitImpressionCollection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 40
    const-string v0, "Hashmap cant be null"

    invoke-static {p2, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public clearUnitImpressionCollection()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    return-void
.end method

.method public containsUnitImpression(Ljava/lang/String;)Z
    .registers 3
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public detachListenerFromRecyclerView()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 58
    return-void
.end method

.method public getUnitImpressionCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 87
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->recordUnitImpressionForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 88
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method protected abstract onCreateUnitImpressionsForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;"
        }
    .end annotation
.end method

.method public recordAttachedViews()V
    .registers 8

    .prologue
    .line 64
    iget-object v5, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 65
    .local v3, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    if-eqz v3, :cond_28

    .line 66
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_42

    .line 68
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 73
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    .line 74
    invoke-virtual {p0, v1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->recordUnitImpressionForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 67
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 78
    .end local v0    # "childCount":I
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "i":I
    .end local v4    # "view":Landroid/view/View;
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".recordAttachedViews"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No impressions were recorded. LayoutManager is not attached to the RecyclerView"

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_42
    return-void
.end method

.method public final recordUnitImpressionForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->onCreateUnitImpressionsForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "unitImpressions":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    if-eqz v1, :cond_20

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/model/UnitImpression;

    .line 99
    .local v0, "unitImpression":Lcom/buzzfeed/analytics/model/UnitImpression;
    if-eqz v0, :cond_a

    .line 100
    iget-object v3, p0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/buzzfeed/analytics/model/UnitImpression;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 104
    .end local v0    # "unitImpression":Lcom/buzzfeed/analytics/model/UnitImpression;
    :cond_20
    return-void
.end method
