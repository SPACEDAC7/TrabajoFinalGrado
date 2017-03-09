.class public Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;
.super Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;
.source "FeaturedQuizCard.java"


# instance fields
.field quizBadge:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_badge:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;->quizBadge:Landroid/view/View;

    .line 20
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
    .line 24
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 25
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;->quizBadge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 13
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
