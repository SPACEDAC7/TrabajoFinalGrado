.class public Lcom/buzzfeed/buffet/ui/holder/TrendingQuizTrendingFeedCard;
.super Lcom/buzzfeed/buffet/ui/holder/TrendingCard;
.source "TrendingQuizTrendingFeedCard.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;-><init>(Landroid/view/View;)V

    .line 13
    sget v1, Lcom/buzzfeed/buffet/R$id;->trending_card_badge:I

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    .local v0, "quizView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    return-void
.end method
