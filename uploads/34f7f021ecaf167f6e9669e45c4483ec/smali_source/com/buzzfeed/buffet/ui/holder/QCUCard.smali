.class public Lcom/buzzfeed/buffet/ui/holder/QCUCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "QCUCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buffet/ui/holder/QCUCard$InternalPackageOverflowItemClickListener;
    }
.end annotation


# static fields
.field protected static final ALWAYS_SHOW_AMOUNT:I = 0x1


# instance fields
.field private mHeaderImage:Landroid/widget/ImageView;

.field private mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

.field private mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPrimaryClickableView:Landroid/view/ViewGroup;

.field private mPrimaryDescription:Landroid/widget/TextView;

.field private mPrimaryTimestamp:Landroid/widget/TextView;

.field private mQCUHeader:Landroid/widget/TextView;

.field mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 49
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_primary_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryClickableView:Landroid/view/ViewGroup;

    .line 50
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_header_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mQCUHeader:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mHeaderImage:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_header_timestamp:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_primary_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryDescription:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_stories:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/QCUCard;)Lcom/buzzfeed/toolkit/content/PackageContent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buffet/ui/holder/QCUCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mHeaderImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getPackageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getTimeStringFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 116
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected isBreakingBulleted()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected loadCardImage(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V
    .registers 9
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "headerImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "appContext":Landroid/content/Context;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v2

    .line 102
    .local v2, "urls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v3

    .line 103
    .local v3, "width":I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v4

    .line 104
    .local v4, "height":I
    const v5, 0x106000c

    .local v5, "placeholderColor":I
    move-object v1, p2

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStackWithCustomPlaceholderColor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;III)V

    .line 107
    return-void
.end method

.method public onViewHolderRecycled()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-super {p0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->onViewHolderRecycled()V

    .line 135
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 137
    iput-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    .line 139
    :cond_f
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 5
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/PackageContent;

    iput-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 64
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mQCUHeader:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5a

    .line 66
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 67
    .local v0, "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->loadCardImage(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V

    .line 68
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->getTimeStringFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryClickableView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/QCUCard$1;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/QCUCard;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPrimaryDescription:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->setUpTransition(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V

    .line 81
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->setUpStories(Lcom/buzzfeed/toolkit/content/PackageContent;Landroid/support/v7/widget/RecyclerView;)V

    .line 83
    .end local v0    # "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_5a
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method

.method protected setUpStories(Lcom/buzzfeed/toolkit/content/PackageContent;Landroid/support/v7/widget/RecyclerView;)V
    .registers 9
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p2, "storiesRecyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/QCUCard$2;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, v4, v5}, Lcom/buzzfeed/buffet/ui/holder/QCUCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/QCUCard;Landroid/content/Context;IZ)V

    .line 92
    .local v0, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "stories":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    new-instance v2, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->isBreakingBulleted()Z

    move-result v4

    invoke-direct {v2, p1, v1, v3, v4}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;-><init>(Lcom/buzzfeed/toolkit/content/PackageContent;Ljava/util/List;IZ)V

    iput-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    .line 94
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    new-instance v3, Lcom/buzzfeed/buffet/ui/holder/QCUCard$InternalPackageOverflowItemClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/buzzfeed/buffet/ui/holder/QCUCard$InternalPackageOverflowItemClickListener;-><init>(Lcom/buzzfeed/buffet/ui/holder/QCUCard;Lcom/buzzfeed/buffet/ui/holder/QCUCard$1;)V

    invoke-virtual {v2, v3}, Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 95
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard;->mPackageCardAdapter:Lcom/buzzfeed/buffet/ui/adapter/QCUPackageCardAdapter;

    invoke-virtual {p2, v2, v5}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 97
    return-void
.end method

.method protected setUpTransition(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "headerImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 110
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 113
    :cond_d
    return-void
.end method
