.class public Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "FeaturedCard.java"


# instance fields
.field private mDek:Landroid/widget/TextView;

.field protected mHeadline:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/buzzfeed/buffet/R$id;->featured_card_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/buzzfeed/buffet/R$id;->featured_card_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mHeadline:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->featured_card_dek:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mDek:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 9
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 35
    .local v0, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 36
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v4

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 37
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mHeadline:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mDek:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getViewCount()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->formatViewCount(J)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "views":Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 41
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    :cond_57
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
