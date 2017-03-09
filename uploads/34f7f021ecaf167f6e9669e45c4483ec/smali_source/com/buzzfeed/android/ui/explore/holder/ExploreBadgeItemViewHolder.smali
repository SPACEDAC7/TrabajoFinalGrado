.class public Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;
.super Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;
.source "ExploreBadgeItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder",
        "<",
        "Lcom/buzzfeed/android/data/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    const v0, 0x7f110157

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->mBadgeTitleTextView:Landroid/widget/TextView;

    .line 21
    return-void
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p1, "model"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->mBadgeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder$1;-><init>(Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;Lcom/buzzfeed/android/data/Feed;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    check-cast p1, Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->populateFrom(Lcom/buzzfeed/android/data/Feed;)V

    return-void
.end method
