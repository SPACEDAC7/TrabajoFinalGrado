.class public Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;
.super Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;
.source "PackageCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter",
        "<",
        "Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUB_POSITION_START:I = 0x1


# instance fields
.field private mFeedPosition:I

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
.method public constructor <init>(Lcom/buzzfeed/toolkit/content/PackageContent;Ljava/util/List;I)V
    .registers 4
    .param p1, "parentContent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p3, "feedPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "packagePosts":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mParentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 22
    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mPackagePosts:Ljava/util/List;

    .line 23
    iput p3, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mFeedPosition:I

    .line 24
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mPackagePosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 13
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V
    .registers 3

    .prologue
    .line 13
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;I)V
    .registers 7
    .param p1, "holder"    # Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;
    .param p2, "position"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V

    .line 35
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mParentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mPackagePosts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    iget v2, p0, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->mFeedPosition:I

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->populateFrom(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V

    .line 36
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_package_overflow:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V
    .registers 2
    .param p1    # Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    return-void
.end method
