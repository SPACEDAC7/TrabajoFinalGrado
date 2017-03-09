.class public Lcom/buzzfeed/buffet/ui/holder/QCUStory;
.super Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;
.source "QCUStory.java"


# instance fields
.field private mBulletedSummaryTextView:Landroid/widget/TextView;

.field private mIsBulleted:Z

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBulleted"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;-><init>(Landroid/view/View;)V

    .line 21
    iput-boolean p2, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mIsBulleted:Z

    .line 22
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->itemView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/buffet/R$id;->qcu_story_summary:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mBulletedSummaryTextView:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->itemView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/buffet/R$id;->qcu_story_summary:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mSummaryTextView:Landroid/widget/TextView;

    .line 24
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V
    .registers 12
    .param p1, "parentContent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "adapterPosition"    # I
    .param p4, "subPosition"    # I

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mIsBulleted:Z

    if-eqz v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mBulletedSummaryTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_d
    return-void

    .line 30
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->mSummaryTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/QCUStory;->itemView:Landroid/view/View;

    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/QCUStory$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/holder/QCUStory$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/QCUStory;Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d
.end method
