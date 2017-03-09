.class public Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory;
.super Ljava/lang/Object;
.source "ShareBarItemFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackgroundDrawable(Lcom/buzzfeed/toolkit/util/ShareItemType;)I
    .registers 3
    .param p0, "type"    # Lcom/buzzfeed/toolkit/util/ShareItemType;

    .prologue
    .line 65
    sget-object v0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 96
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 67
    :pswitch_d
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_facebook:I

    goto :goto_c

    .line 69
    :pswitch_10
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_copy_link:I

    goto :goto_c

    .line 71
    :pswitch_13
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_gplus:I

    goto :goto_c

    .line 73
    :pswitch_16
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_instagram:I

    goto :goto_c

    .line 75
    :pswitch_19
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_line:I

    goto :goto_c

    .line 77
    :pswitch_1c
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_linkedin:I

    goto :goto_c

    .line 79
    :pswitch_1f
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_facebook_messenger:I

    goto :goto_c

    .line 81
    :pswitch_22
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_pinterest:I

    goto :goto_c

    .line 83
    :pswitch_25
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_tumblr:I

    goto :goto_c

    .line 85
    :pswitch_28
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_twitter:I

    goto :goto_c

    .line 87
    :pswitch_2b
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_whats_app:I

    goto :goto_c

    .line 89
    :pswitch_2e
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_email:I

    goto :goto_c

    .line 91
    :pswitch_31
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_sms:I

    goto :goto_c

    .line 93
    :pswitch_34
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->share_bar_item_more:I

    goto :goto_c

    .line 65
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method private static getImageResource(Lcom/buzzfeed/toolkit/util/ShareItemType;)I
    .registers 3
    .param p0, "type"    # Lcom/buzzfeed/toolkit/util/ShareItemType;

    .prologue
    .line 30
    sget-object v0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 61
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 32
    :pswitch_d
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_facebook:I

    goto :goto_c

    .line 34
    :pswitch_10
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_copylink:I

    goto :goto_c

    .line 36
    :pswitch_13
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_gplus:I

    goto :goto_c

    .line 38
    :pswitch_16
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_instagram:I

    goto :goto_c

    .line 40
    :pswitch_19
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_line:I

    goto :goto_c

    .line 42
    :pswitch_1c
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_linkedin:I

    goto :goto_c

    .line 44
    :pswitch_1f
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_messenger:I

    goto :goto_c

    .line 46
    :pswitch_22
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_pinterest:I

    goto :goto_c

    .line 48
    :pswitch_25
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_tumblr:I

    goto :goto_c

    .line 50
    :pswitch_28
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_twitter:I

    goto :goto_c

    .line 52
    :pswitch_2b
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->icon_whatsapp:I

    goto :goto_c

    .line 54
    :pswitch_2e
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->ic_email_white_24dp:I

    goto :goto_c

    .line 56
    :pswitch_31
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->ic_share_white_24dp:I

    goto :goto_c

    .line 58
    :pswitch_34
    sget v0, Lcom/buzzfeed/nativecontent/R$drawable;->ic_textsms_white_24dp:I

    goto :goto_c

    .line 30
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method

.method public static getShareBarItem(Lcom/buzzfeed/toolkit/util/ShareItemType;)Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;
    .registers 4
    .param p0, "type"    # Lcom/buzzfeed/toolkit/util/ShareItemType;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory;->getImageResource(Lcom/buzzfeed/toolkit/util/ShareItemType;)I

    move-result v1

    .line 10
    .local v1, "image":I
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory;->getBackgroundDrawable(Lcom/buzzfeed/toolkit/util/ShareItemType;)I

    move-result v0

    .line 11
    .local v0, "drawable":I
    new-instance v2, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;-><init>(Lcom/buzzfeed/toolkit/util/ShareItemType;II)V

    return-object v2
.end method
