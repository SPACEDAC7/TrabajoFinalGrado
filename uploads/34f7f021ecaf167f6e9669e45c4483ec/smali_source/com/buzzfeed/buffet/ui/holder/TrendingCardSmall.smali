.class public Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;
.super Lcom/buzzfeed/buffet/ui/holder/PostCard;
.source "TrendingCardSmall.java"


# static fields
.field private static final NUM_LINES_PHONE:I = 0x5

.field private static final NUM_LINES_TABLET:I = 0x3


# instance fields
.field private mNormalTrendingView:Landroid/view/View;

.field private mSmallerTrendingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShrinked"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/holder/PostCard;-><init>(Landroid/view/View;Z)V

    .line 25
    sget v0, Lcom/buzzfeed/buffet/R$id;->trending_text_normal:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mNormalTrendingView:Landroid/view/View;

    .line 26
    sget v0, Lcom/buzzfeed/buffet/R$id;->trending_text_smaller:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mSmallerTrendingView:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 10
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 32
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 33
    .local v1, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 34
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mImage:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mImage:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 38
    :cond_22
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v0, 0x3

    .line 39
    .local v0, "numLines":I
    :goto_2f
    iget-boolean v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mIsShrinked:Z

    if-eqz v2, :cond_64

    .line 40
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mSmallerTrendingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 42
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mTextWrapper:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mTextWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mTextWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mTextWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42300000

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/UIUtil;->convertDpToPx(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 47
    :goto_61
    return-void

    .line 38
    .end local v0    # "numLines":I
    :cond_62
    const/4 v0, 0x5

    goto :goto_2f

    .line 44
    .restart local v0    # "numLines":I
    :cond_64
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mNormalTrendingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_61
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
