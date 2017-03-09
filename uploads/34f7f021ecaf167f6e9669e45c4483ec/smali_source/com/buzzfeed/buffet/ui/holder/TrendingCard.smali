.class public Lcom/buzzfeed/buffet/ui/holder/TrendingCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "TrendingCard.java"


# instance fields
.field private mHeadline:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mRankCount:Landroid/widget/TextView;

.field private mShareButtonWrapper:Landroid/view/ViewGroup;

.field private mViewCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/buzzfeed/buffet/R$id;->trending_card_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/buzzfeed/buffet/R$id;->trending_card_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mHeadline:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/buzzfeed/buffet/R$id;->share_button_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    .line 33
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_views:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mViewCount:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/buzzfeed/buffet/R$id;->trending_card_rank:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mRankCount:Landroid/widget/TextView;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getRank()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getAdapterPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 5
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->itemView:Landroid/view/View;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getAdapterPosition()I

    move-result v0

    .line 62
    .local v0, "pos":I
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method private showViewCount(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 9
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getViewCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_29

    .line 75
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mViewCount:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getViewCount()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->formatViewCount(J)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "views":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mViewCount:Landroid/widget/TextView;

    sget v2, Lcom/buzzfeed/buffet/R$string;->trending_views:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v0    # "views":Ljava/lang/String;
    :goto_28
    return-void

    .line 79
    :cond_29
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mViewCount:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 40
    .local v0, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 41
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v3

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 42
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mHeadline:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->showViewCount(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 44
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mRankCount:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getRank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 46
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    :cond_52
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
