.class public Lcom/buzzfeed/buffet/ui/holder/ShowCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "ShowCard.java"


# instance fields
.field private mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

.field private mText:Landroid/widget/TextView;

.field private mTextContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_show_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    .line 28
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_show_text_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mTextContainer:Landroid/view/ViewGroup;

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_show_text:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mText:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mTextContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    return-object v0
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/ShowListContent;

    .line 35
    .local v0, "content":Lcom/buzzfeed/toolkit/content/ShowListContent;
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mTextContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    const/high16 v2, 0x3fc00000

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setAspectRatio(F)V

    .line 37
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mText:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/buzzfeed/buffet/R$color;->buzzfeed_light_gray:I

    new-instance v5, Lcom/buzzfeed/buffet/ui/holder/ShowCard$1;

    invoke-direct {v5, p0}, Lcom/buzzfeed/buffet/ui/holder/ShowCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;)V

    .line 46
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 47
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setTransitionName(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    :cond_4b
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->itemView:Landroid/view/View;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
