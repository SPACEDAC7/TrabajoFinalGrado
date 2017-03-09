.class Lcom/buzzfeed/showx/showpage/ShowPageAdapter;
.super Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
.source "ShowPageAdapter.java"


# static fields
.field private static final HEADER_ITEMS:I = 0x1


# instance fields
.field private mEnableShowSubscriptions:Z

.field private mShowSubscribeEmptyContent:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method public constructor <init>(Z)V
    .registers 5
    .param p1, "enableShowSubscriptions"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;-><init>()V

    .line 28
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/showx/showpage/data/model/EmptySubscribeContent;

    invoke-direct {v2}, Lcom/buzzfeed/showx/showpage/data/model/EmptySubscribeContent;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mShowSubscribeEmptyContent:Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 24
    iput-boolean p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mEnableShowSubscriptions:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mEnableShowSubscriptions:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mEnableShowSubscriptions:Z

    if-eqz v0, :cond_11

    .line 47
    sget-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mShowSubscribeEmptyContent:Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 54
    :goto_e
    return-object v0

    .line 51
    :cond_f
    add-int/lit8 p1, p1, 0x1

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->mEnableShowSubscriptions:Z

    if-eqz v1, :cond_13

    .line 33
    if-nez p1, :cond_11

    .line 34
    sget-object v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->toInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    :goto_10
    return v1

    .line 37
    :cond_11
    add-int/lit8 p1, p1, 0x1

    .line 40
    :cond_13
    invoke-virtual {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    .line 41
    .local v0, "item":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->toInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_10
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/BaseCard;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/buzzfeed/showx/showpage/ShowPageAdapter$1;->$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType:[I

    invoke-static {p2}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->fromInt(I)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_56

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View type not supported. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :pswitch_31
    sget v2, Lcom/buzzfeed/showx/R$layout;->card_show_page_subscribe:I

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;-><init>(Landroid/view/View;)V

    .line 71
    :goto_3c
    return-object v2

    .line 67
    .end local v1    # "view":Landroid/view/View;
    :pswitch_3d
    sget v2, Lcom/buzzfeed/showx/R$layout;->card_video_default:I

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCard;-><init>(Landroid/view/View;)V

    goto :goto_3c

    .line 70
    .end local v1    # "view":Landroid/view/View;
    :pswitch_49
    sget v2, Lcom/buzzfeed/showx/R$layout;->card_video_fixed_height:I

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCardFixedHeight;

    invoke-direct {v2, v1}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCardFixedHeight;-><init>(Landroid/view/View;)V

    goto :goto_3c

    .line 62
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_31
        :pswitch_3d
        :pswitch_49
    .end packed-switch
.end method
