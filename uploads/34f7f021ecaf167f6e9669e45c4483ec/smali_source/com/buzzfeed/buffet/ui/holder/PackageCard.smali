.class public Lcom/buzzfeed/buffet/ui/holder/PackageCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "PackageCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_SHOW_AMOUNT:I = 0x1

.field private static final SECONDARY_AMOUNT:I = 0x2


# instance fields
.field private mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

.field private mPackageHeader:Landroid/widget/TextView;

.field private mPrimaryClickableView:Landroid/view/ViewGroup;

.field private mPrimaryDek:Landroid/widget/TextView;

.field private mPrimaryHeader:Landroid/widget/TextView;

.field private mPrimaryTimestamp:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSecondaryClickableView:Landroid/view/ViewGroup;

.field private mSecondaryHeader:Landroid/widget/TextView;

.field private mSecondaryTimestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 52
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mHeaderImage:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_view_package_header:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPackageHeader:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_header_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryHeader:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_header_dek:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryDek:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_header_timestamp:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_secondary_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryHeader:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_secondary_timestamp:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryTimestamp:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_primary_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryClickableView:Landroid/view/ViewGroup;

    .line 63
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_secondary_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryClickableView:Landroid/view/ViewGroup;

    .line 65
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_package_recycler_view:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)Lcom/buzzfeed/toolkit/content/PackageContent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mHeaderImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getPackageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onViewHolderRecycled()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->onViewHolderRecycled()V

    .line 162
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    if-eqz v0, :cond_f

    .line 163
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    .line 166
    :cond_f
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 14
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/toolkit/content/PackageContent;

    iput-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 90
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPackageHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v9, :cond_90

    .line 93
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 94
    .local v1, "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mHeaderImage:Landroid/widget/ImageView;

    .line 95
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v5

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v6

    invoke-static {v8}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v7

    .line 94
    invoke-static {v3, v4, v5, v6, v7}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 97
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryHeader:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryDek:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mPrimaryClickableView:Landroid/view/ViewGroup;

    new-instance v4, Lcom/buzzfeed/buffet/ui/holder/PackageCard$2;

    invoke-direct {v4, p0, v1}, Lcom/buzzfeed/buffet/ui/holder/PackageCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 112
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    .end local v1    # "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_90
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_a7

    .line 118
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryClickableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 148
    :cond_a6
    :goto_a6
    return-void

    .line 120
    :cond_a7
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v11, :cond_ee

    .line 121
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 122
    .local v2, "secondary":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryHeader:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryTimestamp:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryClickableView:Landroid/view/ViewGroup;

    new-instance v4, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;

    invoke-direct {v4, p0, v2}, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 136
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryClickableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_a6

    .line 137
    .end local v2    # "secondary":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_ee
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_a6

    .line 138
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mSecondaryClickableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 141
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v8, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 142
    .local v0, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    new-instance v3, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 143
    invoke-interface {v5}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v9, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getAdapterPosition()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;-><init>(Lcom/buzzfeed/toolkit/content/PackageContent;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    .line 144
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    new-instance v4, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;)V

    invoke-virtual {v3, v4}, Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/PackageCardAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_a6
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 27
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
