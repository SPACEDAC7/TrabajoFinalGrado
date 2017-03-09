.class public Lcom/buzzfeed/ads/video/TraffickingParameters;
.super Ljava/lang/Object;
.source "TraffickingParameters.java"


# instance fields
.field private mBuzzId:I

.field private mIsAutoPlay:Z

.field private mUtmTerm:Ljava/lang/String;

.field private mVideoId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "traffickingParametersResponse"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v5, "\\s*,\\s*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 20
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    .local v0, "item":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 22
    .local v3, "splitIndex":I
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 26
    const-string v5, "\\s+"

    const-string v9, ""

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_94

    :cond_45
    :goto_45
    packed-switch v5, :pswitch_data_a6

    goto :goto_13

    .line 29
    :pswitch_49
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mBuzzId:I

    goto :goto_13

    .line 27
    :sswitch_50
    const-string v9, "bid"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    move v5, v7

    goto :goto_45

    :sswitch_5a
    const-string v9, "autoPlay"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    move v5, v6

    goto :goto_45

    :sswitch_64
    const-string/jumbo v9, "vid"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    const/4 v5, 0x2

    goto :goto_45

    :sswitch_6f
    const-string/jumbo v9, "utm_term"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    const/4 v5, 0x3

    goto :goto_45

    .line 32
    :pswitch_7a
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    move v5, v6

    :goto_83
    iput-boolean v5, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mIsAutoPlay:Z

    goto :goto_13

    :cond_86
    move v5, v7

    goto :goto_83

    .line 35
    :pswitch_88
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mVideoId:I

    goto :goto_13

    .line 38
    :pswitch_8f
    iput-object v4, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mUtmTerm:Ljava/lang/String;

    goto :goto_13

    .line 43
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "splitIndex":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_92
    return-void

    .line 27
    nop

    :sswitch_data_94
    .sparse-switch
        0x17cfd -> :sswitch_50
        0x1c811 -> :sswitch_64
        0x31ad945d -> :sswitch_6f
        0x55bf6d83 -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_49
        :pswitch_7a
        :pswitch_88
        :pswitch_8f
    .end packed-switch
.end method


# virtual methods
.method public getBuzzId()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mBuzzId:I

    return v0
.end method

.method public getUtmTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mUtmTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mVideoId:I

    return v0
.end method

.method public isAutoPlay()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/buzzfeed/ads/video/TraffickingParameters;->mIsAutoPlay:Z

    return v0
.end method
