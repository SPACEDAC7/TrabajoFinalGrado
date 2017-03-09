.class public Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SpicyAdapter.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;
.implements Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;",
        ">;",
        "Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;",
        "Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomCustomView:Landroid/view/View;

.field private mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

.field private mLastItemDisplayed:I

.field private mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

.field private mSpicyShareBarListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

.field private mSubBuzzList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mLastItemDisplayed:I

    .line 53
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 84
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->toInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLastItemDisplayed()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mLastItemDisplayed:I

    return v0
.end method

.method public getShareBarListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyShareBarListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    return-object v0
.end method

.method public getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 39
    check-cast p1, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->onBindViewHolder(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    .line 140
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "ctx":Landroid/content/Context;
    sget-object v2, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter$1;->$SwitchMap$com$buzzfeed$spicerack$data$factory$SpiceType:[I

    invoke-static {p2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->fromInt(I)Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ee

    .line 132
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_text:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;-><init>(Landroid/view/View;)V

    .end local v1    # "view":Landroid/view/View;
    :goto_23
    return-object v2

    .line 93
    :pswitch_24
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_header:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_23

    .line 96
    .end local v1    # "view":Landroid/view/View;
    :pswitch_34
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_image_list:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;-><init>(Landroid/view/View;Z)V

    goto :goto_23

    .line 99
    .end local v1    # "view":Landroid/view/View;
    :pswitch_45
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_image_article:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    invoke-direct {v2, v1, v4}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;-><init>(Landroid/view/View;Z)V

    goto :goto_23

    .line 102
    .end local v1    # "view":Landroid/view/View;
    :pswitch_55
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_loading:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_23

    .line 105
    .end local v1    # "view":Landroid/view/View;
    :pswitch_65
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/FallBackViewHolder;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-direct {v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/FallBackViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_23

    .line 107
    :pswitch_6d
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_empty:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/EmptyViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/EmptyViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_23

    .line 110
    .end local v1    # "view":Landroid/view/View;
    :pswitch_7d
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_share_bar:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    invoke-direct {v2, v1, p0}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;-><init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;)V

    goto :goto_23

    .line 113
    .end local v1    # "view":Landroid/view/View;
    :pswitch_8d
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/CustomViewHolder;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mBottomCustomView:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/CustomViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_23

    .line 115
    :pswitch_95
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_link:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 116
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_23

    .line 119
    .end local v1    # "view":Landroid/view/View;
    :pswitch_a6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_update_correction:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/CorrectionUpdateViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_23

    .line 122
    .end local v1    # "view":Landroid/view/View;
    :pswitch_b7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_embed_instagram:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;-><init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    goto/16 :goto_23

    .line 125
    .end local v1    # "view":Landroid/view/View;
    :pswitch_ca
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_youtube_video:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;-><init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    goto/16 :goto_23

    .line 128
    .end local v1    # "view":Landroid/view/View;
    :pswitch_dd
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/buzzfeed/nativecontent/R$layout;->spice_twitter:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 129
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

    invoke-direct {v2, v1}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_23

    .line 91
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_24
        :pswitch_34
        :pswitch_45
        :pswitch_55
        :pswitch_65
        :pswitch_6d
        :pswitch_7d
        :pswitch_8d
        :pswitch_95
        :pswitch_a6
        :pswitch_a6
        :pswitch_b7
        :pswitch_ca
        :pswitch_dd
    .end packed-switch
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 39
    check-cast p1, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->onViewAttachedToWindow(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V
    .registers 5
    .param p1, "holder"    # Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 145
    iget v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mLastItemDisplayed:I

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getAdapterPosition()I

    move-result v2

    if-le v1, v2, :cond_37

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {p1, p0, v1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->onAttachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;Z)V

    .line 146
    instance-of v1, p1, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v1, :cond_28

    .line 147
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    .line 148
    .local v0, "pos":I
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-interface {v2, v1, v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onItemDisplayed(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    .line 151
    .end local v0    # "pos":I
    :cond_28
    iget v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mLastItemDisplayed:I

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getAdapterPosition()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 152
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mLastItemDisplayed:I

    .line 154
    :cond_36
    return-void

    .line 145
    :cond_37
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 39
    check-cast p1, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->onViewDetachedFromWindow(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->onDetachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;)V

    .line 160
    return-void
.end method

.method public setBottomCustomView(Landroid/view/View;)V
    .registers 2
    .param p1, "bottomCustomView"    # Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mBottomCustomView:Landroid/view/View;

    .line 66
    return-void
.end method

.method public setFallback(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)V
    .registers 2
    .param p1, "fallbackView"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 62
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "subBuzzs":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSubBuzzList:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public setSpicyEventListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .line 70
    return-void
.end method

.method public setSpicyShareBarInfo(Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->mSpicyShareBarListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    .line 74
    return-void
.end method
