.class public Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "SubscribeCard.java"


# instance fields
.field private mSubscribeButton:Landroid/view/ViewGroup;

.field private mSubscribeDescriptionTextView:Landroid/widget/TextView;

.field private mSubscribeIconImageView:Landroid/widget/ImageView;

.field private mSubscribeTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/buzzfeed/showx/R$id;->show_page_subscribe_button:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeButton:Landroid/view/ViewGroup;

    .line 28
    sget v0, Lcom/buzzfeed/showx/R$id;->show_page_subscribe_icon:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeIconImageView:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/buzzfeed/showx/R$id;->show_page_subscribe_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeTitleTextView:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/buzzfeed/showx/R$id;->show_page_subscribe_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeDescriptionTextView:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->updateSubscribeModuleState(Z)V

    return-void
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v1

    instance-of v1, v1, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;

    if-nez v1, :cond_10

    .line 43
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ShowPageBuffetEventListener must be provided for subscription actions."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;

    .line 50
    .local v0, "listener":Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;
    invoke-interface {v0}, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;->isSubscribedToShow()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->updateSubscribeModuleState(Z)V

    .line 52
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeButton:Landroid/view/ViewGroup;

    new-instance v2, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;-><init>(Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method private updateSubscribeModuleState(Z)V
    .registers 6
    .param p1, "isSubscribed"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_23

    sget v2, Lcom/buzzfeed/showx/R$string;->showpage_subscribe_content_title_subscribed:I

    .line 63
    invoke-virtual {p0, v2}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "descriptionTitle":Ljava/lang/String;
    :goto_8
    if-eqz p1, :cond_2a

    sget v2, Lcom/buzzfeed/showx/R$string;->showpage_subscribe_cta_title_subscribed:I

    .line 66
    invoke-virtual {p0, v2}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "actionTitle":Ljava/lang/String;
    :goto_10
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->mSubscribeIconImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_31

    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    return-void

    .line 63
    .end local v0    # "actionTitle":Ljava/lang/String;
    .end local v1    # "descriptionTitle":Ljava/lang/String;
    :cond_23
    sget v2, Lcom/buzzfeed/showx/R$string;->showpage_subscribe_content_title_unsubscribed:I

    .line 64
    invoke-virtual {p0, v2}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 66
    .restart local v1    # "descriptionTitle":Ljava/lang/String;
    :cond_2a
    sget v2, Lcom/buzzfeed/showx/R$string;->showpage_subscribe_cta_title_unsubscribed:I

    .line 67
    invoke-virtual {p0, v2}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 70
    .restart local v0    # "actionTitle":Ljava/lang/String;
    :cond_31
    const/16 v2, 0x8

    goto :goto_1f
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 2
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->initialize()V

    .line 36
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 18
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
