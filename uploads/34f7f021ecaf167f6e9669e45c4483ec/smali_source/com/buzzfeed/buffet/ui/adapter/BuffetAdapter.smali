.class public Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;
.super Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
.source "BuffetAdapter.java"


# instance fields
.field private mShouldUseSmallCells:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "shouldUseSmallCells"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    .line 38
    iput-boolean p1, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    .line 39
    return-void
.end method


# virtual methods
.method public appendItems(Ljava/util/List;)V
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
    .line 118
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->appendItems(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    .line 44
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->toInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/buffet/ui/holder/BaseCard;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-static {p2}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_10e

    .line 106
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_post:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/PostCard;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/PostCard;-><init>(Landroid/view/View;Z)V

    :goto_25
    return-object v2

    .line 52
    .end local v1    # "view":Landroid/view/View;
    :pswitch_26
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_video_default:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 55
    .end local v1    # "view":Landroid/view/View;
    :pswitch_32
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_video_fixed_height:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 58
    .end local v1    # "view":Landroid/view/View;
    :pswitch_3e
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_post:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/TrendingCardSmall;-><init>(Landroid/view/View;Z)V

    goto :goto_25

    .line 61
    .end local v1    # "view":Landroid/view/View;
    :pswitch_4c
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_trending:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 64
    .end local v1    # "view":Landroid/view/View;
    :pswitch_58
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_trending:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizTrendingFeedCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizTrendingFeedCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 67
    .end local v1    # "view":Landroid/view/View;
    :pswitch_64
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_post:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/QuizCard;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/QuizCard;-><init>(Landroid/view/View;Z)V

    goto :goto_25

    .line 70
    .end local v1    # "view":Landroid/view/View;
    :pswitch_72
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_video_ad_sponsored:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 73
    .end local v1    # "view":Landroid/view/View;
    :pswitch_7e
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_post:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/AdCard;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/AdCard;-><init>(Landroid/view/View;Z)V

    goto :goto_25

    .line 76
    .end local v1    # "view":Landroid/view/View;
    :pswitch_8c
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_featured:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 79
    .end local v1    # "view":Landroid/view/View;
    :pswitch_98
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_featured:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedQuizCard;-><init>(Landroid/view/View;)V

    goto :goto_25

    .line 82
    .end local v1    # "view":Landroid/view/View;
    :pswitch_a4
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_post:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;

    iget-boolean v3, p0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;->mShouldUseSmallCells:Z

    invoke-direct {v2, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/TrendingQuizCard;-><init>(Landroid/view/View;Z)V

    goto/16 :goto_25

    .line 85
    .end local v1    # "view":Landroid/view/View;
    :pswitch_b3
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_breaking_bar:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 88
    .end local v1    # "view":Landroid/view/View;
    :pswitch_c0
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_show:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 91
    .end local v1    # "view":Landroid/view/View;
    :pswitch_cd
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_package:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 94
    .end local v1    # "view":Landroid/view/View;
    :pswitch_da
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_breaking:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 97
    .end local v1    # "view":Landroid/view/View;
    :pswitch_e7
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_qcu_normal:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/QCUCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 100
    .end local v1    # "view":Landroid/view/View;
    :pswitch_f4
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_qcu_breaking:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 103
    .end local v1    # "view":Landroid/view/View;
    :pswitch_101
    sget v2, Lcom/buzzfeed/buffet/R$layout;->card_featured:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;

    invoke-direct {v2, v1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;-><init>(Landroid/view/View;)V

    goto/16 :goto_25

    .line 50
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_32
        :pswitch_3e
        :pswitch_4c
        :pswitch_58
        :pswitch_64
        :pswitch_72
        :pswitch_7e
        :pswitch_8c
        :pswitch_98
        :pswitch_a4
        :pswitch_b3
        :pswitch_c0
        :pswitch_cd
        :pswitch_da
        :pswitch_e7
        :pswitch_f4
        :pswitch_101
    .end packed-switch
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
    .line 113
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->setList(Ljava/util/List;)V

    .line 114
    return-void
.end method
