.class public Lcom/buzzfeed/buffet/ui/holder/PostCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "PostCard.java"


# instance fields
.field protected mImage:Landroid/widget/ImageView;

.field protected mIsShrinked:Z

.field protected mText:Landroid/widget/TextView;

.field protected mTextWrapper:Landroid/view/ViewGroup;

.field protected mWrapper:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShrinked"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 33
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_text:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mText:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_text_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mTextWrapper:Landroid/view/ViewGroup;

    .line 36
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mWrapper:Landroid/view/ViewGroup;

    .line 37
    iput-boolean p2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mIsShrinked:Z

    .line 38
    return-void
.end method

.method private setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/PostCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 9
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 43
    .local v0, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 44
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "postContentTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 46
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1c
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 49
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    :cond_34
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 53
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v4

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 58
    :goto_5c
    iget-boolean v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mIsShrinked:Z

    if-nez v2, :cond_72

    .line 59
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 60
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 65
    :cond_72
    :goto_72
    return-void

    .line 55
    :cond_73
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v4

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    goto :goto_5c

    .line 62
    :cond_90
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mText:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_72
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
