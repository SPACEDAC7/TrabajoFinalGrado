.class public Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;
.super Lcom/buzzfeed/buffet/ui/holder/QCUCard;
.source "BreakingQCUCard.java"


# instance fields
.field private mBreakingQCUHeader:Landroid/widget/TextView;

.field private mBreakingQCUHeadline:Landroid/widget/TextView;

.field private mCardLayout:Lcom/buzzfeed/buffet/ui/view/InterceptTouchCardView;

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

.field private mPrimaryTimestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_qcu_primary_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buffet/ui/view/InterceptTouchCardView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mCardLayout:Lcom/buzzfeed/buffet/ui/view/InterceptTouchCardView;

    .line 27
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_qcu_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mHeaderImage:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_breaking_header_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mBreakingQCUHeader:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_headline:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mBreakingQCUHeadline:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_qcu_breaking_header_timestamp:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;)Lcom/buzzfeed/toolkit/content/PackageContent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mHeaderImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected isBreakingBulleted()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 6
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/PackageContent;

    iput-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    .line 37
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mBreakingQCUHeader:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5b

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "primaryPos":I
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 41
    .local v0, "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->loadCardImage(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V

    .line 42
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mPrimaryTimestamp:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->getTimeStringFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mBreakingQCUHeadline:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mCardLayout:Lcom/buzzfeed/buffet/ui/view/InterceptTouchCardView;

    new-instance v3, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;

    invoke-direct {v3, p0, v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v2, v3}, Lcom/buzzfeed/buffet/ui/view/InterceptTouchCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mStoriesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->setUpStories(Lcom/buzzfeed/toolkit/content/PackageContent;Landroid/support/v7/widget/RecyclerView;)V

    .line 55
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->setUpTransition(Lcom/buzzfeed/toolkit/content/PostContent;Landroid/widget/ImageView;)V

    .line 57
    .end local v0    # "primary":Lcom/buzzfeed/toolkit/content/PostContent;
    .end local v1    # "primaryPos":I
    :cond_5b
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
