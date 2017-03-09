.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;
.super Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
.source "BaseShowPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitImpressionRecorder"
.end annotation


# instance fields
.field mUnitImpressionFactory:Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;

.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Landroid/support/v7/widget/RecyclerView;)V
    .registers 4
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .line 860
    invoke-direct {p0, p2}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 857
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;

    invoke-direct {v0}, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->mUnitImpressionFactory:Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;

    .line 861
    return-void
.end method


# virtual methods
.method protected onCreateUnitImpressionsForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 10
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
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

    .prologue
    .line 865
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 866
    .local v0, "adapterPos":I
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    # getter for: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
    invoke-static {v5}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$700(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v2

    .line 867
    .local v2, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "contentId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    invoke-static {v5}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->fromInt(I)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v3

    .line 869
    .local v3, "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v4, "unitImpressions":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-virtual {p0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->containsUnitImpression(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 871
    sget-object v5, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unit impression was recorded with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for feed name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v7, v7, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->mUnitImpressionFactory:Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;

    invoke-virtual {v5, v2, v3, v0}, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;->createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;I)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_5e
    return-object v4
.end method
