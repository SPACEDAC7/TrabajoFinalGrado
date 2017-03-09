.class public Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "CorrectionUpdateViewHolder.java"


# instance fields
.field private mCaptionText:Landroid/widget/TextView;

.field private mDescriptionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_update_correction_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->mDescriptionText:Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_update_correction_caption:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->mCaptionText:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 7
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/4 v4, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/CorrectionUpdateSpice;

    .line 28
    .local v0, "spice":Lcom/buzzfeed/spicerack/data/model/subbuzz/CorrectionUpdateSpice;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/CorrectionUpdateSpice;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 29
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->mCaptionText:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/CorrectionUpdateSpice;->getPublishedTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->setDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method
