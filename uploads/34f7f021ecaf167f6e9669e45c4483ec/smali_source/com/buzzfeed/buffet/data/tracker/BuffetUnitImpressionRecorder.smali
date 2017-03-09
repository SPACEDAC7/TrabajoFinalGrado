.class public Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;
.super Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
.source "BuffetUnitImpressionRecorder.java"


# instance fields
.field private mCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

.field private mChildRecorders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFeed:Ljava/lang/String;

.field private mShouldRecordUnitImpressions:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;ZLjava/lang/String;)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "adapter"    # Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
    .param p3, "shouldRecordUnitImpressions"    # Z
    .param p4, "currentFeed"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 34
    iput-object p2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .line 35
    iput-boolean p3, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mShouldRecordUnitImpressions:Z

    .line 36
    iput-object p4, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    .line 38
    return-void
.end method

.method private detachChildRecorderForKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;

    .line 78
    .local v0, "childRecorder":Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
    if-eqz v0, :cond_12

    .line 79
    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->detachListenerFromRecyclerView()V

    .line 80
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_12
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 45
    .local v7, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v0, v7, Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    if-eqz v0, :cond_3e

    move-object v0, v7

    .line 46
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 47
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v1, :cond_3d

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 49
    .local v4, "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    iget-object v8, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;

    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    .line 50
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iget-object v6, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/HashMap;ILcom/buzzfeed/toolkit/content/PackageContent;ILjava/lang/String;)V

    .line 49
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v4    # "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    :cond_3d
    :goto_3d
    return-void

    .line 52
    :cond_3e
    instance-of v0, v7, Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    if-eqz v0, :cond_3d

    move-object v0, v7

    .line 53
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 54
    .restart local v1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v1, :cond_3d

    .line 55
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 56
    .restart local v4    # "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    iget-object v8, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;

    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mUnitImpressionCollection:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iget-object v6, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/HashMap;ILcom/buzzfeed/toolkit/content/PackageContent;ILjava/lang/String;)V

    .line 56
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 67
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v2, v0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    if-eqz v2, :cond_17

    .line 68
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->detachChildRecorderForKey(Ljava/lang/String;)V

    .line 74
    .end local v1    # "key":Ljava/lang/String;
    :cond_16
    :goto_16
    return-void

    .line 70
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_17
    instance-of v2, v0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    if-eqz v2, :cond_16

    .line 71
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->detachChildRecorderForKey(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected onCreateUnitImpressionsForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 24
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
    .line 86
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v18, "impressions":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mShouldRecordUnitImpressions:Z

    if-eqz v2, :cond_19a

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    .line 89
    .local v4, "adapterPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v2, v4}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v8

    .line 90
    .local v8, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "contentId":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 93
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v15

    check-cast v15, Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 94
    .local v15, "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "packageId":Ljava/lang/String;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "packageName":Ljava/lang/String;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    .line 101
    .local v20, "packageSize":I
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d0

    const/16 v19, 0x2

    .line 102
    .local v19, "numToCount":I
    :goto_4e
    const/16 v17, 0x0

    .end local v8    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .local v17, "i":I
    :goto_50
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_19a

    .line 103
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 104
    .local v21, "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    invoke-virtual/range {v21 .. v21}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 105
    invoke-virtual/range {v21 .. v21}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getDataSource()Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-static/range {v2 .. v10}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v3, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package impression was recorded with id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " at position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  with sub position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for feed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v17, v17, 0x1

    goto :goto_50

    .line 101
    .end local v17    # "i":I
    .end local v19    # "numToCount":I
    .end local v21    # "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    .restart local v8    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_d0
    const/16 v19, 0x1

    goto/16 :goto_4e

    .line 110
    .end local v6    # "packageId":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v15    # "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    .end local v20    # "packageSize":I
    :cond_d4
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 111
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 112
    :cond_f4
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v15

    check-cast v15, Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 113
    .restart local v15    # "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v6

    .line 114
    .restart local v6    # "packageId":Ljava/lang/String;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v7

    .line 115
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    .line 117
    .restart local v20    # "packageSize":I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-lt v0, v2, :cond_19a

    .line 119
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 122
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getCategory()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v8    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    const/4 v9, 0x0

    .line 126
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 127
    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getDataSource()Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-static/range {v2 .. v10}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v3, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package impression was recorded with id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " at position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  with sub position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for feed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v4    # "adapterPos":I
    .end local v6    # "packageId":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v15    # "content":Lcom/buzzfeed/toolkit/content/PackageContent;
    .end local v16    # "contentId":Ljava/lang/String;
    .end local v20    # "packageSize":I
    :cond_19a
    :goto_19a
    return-object v18

    .line 140
    .restart local v4    # "adapterPos":I
    .restart local v8    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .restart local v16    # "contentId":Ljava/lang/String;
    :cond_19b
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->containsUnitImpression(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19a

    .line 141
    sget-object v2, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unit impression was recorded with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for feed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, v4

    .line 143
    invoke-static/range {v8 .. v14}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19a
.end method

.method public recordAttachedViews()V
    .registers 5

    .prologue
    .line 155
    invoke-super {p0}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->recordAttachedViews()V

    .line 156
    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->mChildRecorders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;

    .line 158
    .local v0, "child":Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;->recordAttachedViews()V

    goto :goto_d

    .line 160
    .end local v0    # "child":Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
    .end local v1    # "key":Ljava/lang/String;
    :cond_25
    return-void
.end method
