.class public Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;
.super Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;
.source "TrendingQuizCard.java"


# instance fields
.field private quizBadge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShrinked"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;-><init>(Landroid/view/View;Z)V

    .line 18
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_badge:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;->quizBadge:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 24
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;->quizBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 12
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
