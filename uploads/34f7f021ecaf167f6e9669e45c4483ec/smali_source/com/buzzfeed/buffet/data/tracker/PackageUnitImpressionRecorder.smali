.class public Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;
.super Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;
.source "PackageUnitImpressionRecorder.java"


# instance fields
.field private mAdapterPosition:I

.field private mCurrentFeed:Ljava/lang/String;

.field private mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

.field private mSubPositionOffset:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/HashMap;ILcom/buzzfeed/toolkit/content/PackageContent;ILjava/lang/String;)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "adapterPosition"    # I
    .param p4, "packageContent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p5, "subPositionOffset"    # I
    .param p6, "currentFeed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;I",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "unitImpressionCollection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/analytics/util/AbstractUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/HashMap;)V

    .line 31
    iput-object p4, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 32
    iput p3, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mAdapterPosition:I

    .line 33
    iput p5, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mSubPositionOffset:I

    .line 34
    iput-object p6, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreateUnitImpressionsForViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 14
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
    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v9, "impressions":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mSubPositionOffset:I

    add-int v11, v0, v1

    .line 43
    .local v11, "subPosition":I
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 44
    .local v10, "subItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    iget v2, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mAdapterPosition:I

    .line 45
    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 46
    invoke-interface {v5}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getDataSource()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static/range {v0 .. v8}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sub Package impression was recorded with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mAdapterPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  with sub position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for feed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/PackageUnitImpressionRecorder;->mCurrentFeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v9
.end method
