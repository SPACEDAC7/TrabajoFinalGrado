.class public Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;
.super Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;
.source "QCUPackageCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter",
        "<",
        "Lcom/buzzfeed/buffet/ui/holder/QCUStory;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUB_POSITION_START:I = 0x1


# instance fields
.field private mFeedPosition:I

.field private mIsBulleted:Z

.field private mPackagePosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation
.end field

.field private mParentContent:Lcom/buzzfeed/toolkit/content/PackageContent;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/toolkit/content/PackageContent;Ljava/util/List;IZ)V
    .registers 5
    .param p1, "parentContent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p3, "feedPosition"    # I
    .param p4, "isBulleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "packagePosts":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mParentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 24
    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mPackagePosts:Ljava/util/List;

    .line 25
    iput p3, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mFeedPosition:I

    .line 26
    iput-boolean p4, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mIsBulleted:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mPackagePosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 14
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/QCUStory;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/QCUStory;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V
    .registers 3

    .prologue
    .line 14
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/QCUStory;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/QCUStory;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/QCUStory;I)V
    .registers 7
    .param p1, "holder"    # Lcom/buzzfeed/buffet/ui/holder/QCUStory;
    .param p2, "position"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V

    .line 39
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mParentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mPackagePosts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    iget v2, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mFeedPosition:I

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->populateFrom(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V

    .line 40
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/QCUStory;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/QCUStory;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 31
    iget-boolean v2, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mIsBulleted:Z

    if-eqz v2, :cond_1b

    sget v0, Lcom/buzzfeed/buffet/R$layout;->qcu_breaking_story_layout:I

    .line 32
    .local v0, "layoutResourceId":I
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/QCUStory;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->mIsBulleted:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/QCUStory;-><init>(Landroid/view/View;Z)V

    return-object v2

    .line 31
    .end local v0    # "layoutResourceId":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1b
    sget v0, Lcom/buzzfeed/buffet/R$layout;->qcu_story_layout:I

    goto :goto_6
.end method

.method public bridge synthetic setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V
    .registers 2
    .param p1    # Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    return-void
.end method
