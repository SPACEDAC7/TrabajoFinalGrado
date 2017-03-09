.class public Lcom/buzzfeed/buffet/ui/holder/BreakingCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "BreakingCard.java"


# instance fields
.field private mBreakingImageView:Landroid/widget/ImageView;

.field private mDekTextView:Landroid/widget/TextView;

.field private mHeadlineTextView:Landroid/widget/TextView;

.field private mTimeStampTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_headline:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mHeadlineTextView:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_dek:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mDekTextView:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_breaking_time_stamp:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mTimeStampTextView:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/BreakingCard;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTimeStampTextFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private setUpClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/BreakingCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->onViewHolderRecycled()V

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 37
    .local v0, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    .line 38
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v3

    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v5

    .line 37
    invoke-static {v1, v2, v3, v4, v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 39
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mHeadlineTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mDekTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mTimeStampTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->getTimeStampTextFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->setUpClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 45
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 46
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    :cond_58
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 18
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
