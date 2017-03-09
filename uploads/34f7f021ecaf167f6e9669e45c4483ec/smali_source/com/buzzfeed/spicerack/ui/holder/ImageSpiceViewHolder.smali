.class public Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "ImageSpiceViewHolder.java"


# instance fields
.field public mAttribution:Landroid/widget/TextView;

.field public mDescription:Landroid/widget/TextView;

.field public mImage:Landroid/widget/ImageView;

.field private mIsList:Z

.field private mShareIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isList"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mIsList:Z

    .line 27
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_image_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mImage:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_image_attribution:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mAttribution:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_image_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mDescription:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_image_share_icon:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mShareIcon:Landroid/widget/ImageView;

    .line 31
    iput-boolean p2, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mIsList:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getImageWidth()I
    .registers 6

    .prologue
    .line 55
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/UIUtil;->convertPxToDp(Landroid/content/Context;F)F

    move-result v2

    .line 56
    .local v2, "widthDp":F
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->convertDpToPx(Landroid/content/Context;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 57
    .local v1, "width":I
    iget-boolean v3, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mIsList:Z

    if-eqz v3, :cond_34

    .line 59
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/nativecontent/R$dimen;->padding_large:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    .line 60
    .local v0, "margin":F
    int-to-float v3, v1

    const/high16 v4, 0x40000000

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 62
    .end local v0    # "margin":F
    :cond_34
    return v1
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 7
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    move-object v1, p1

    .line 37
    check-cast v1, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;

    .line 38
    .local v1, "spice":Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;
    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getImageStack()Ljava/util/Stack;

    move-result-object v0

    .line 39
    .local v0, "images":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageSpice(Ljava/util/Stack;ILandroid/widget/ImageView;)V

    .line 41
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mAttribution:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getAttribution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 42
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 44
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->mShareIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;

    invoke-direct {v3, p0, v1}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
