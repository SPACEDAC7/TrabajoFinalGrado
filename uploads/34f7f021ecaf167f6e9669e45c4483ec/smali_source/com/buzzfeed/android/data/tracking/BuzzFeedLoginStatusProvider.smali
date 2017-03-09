.class public Lcom/buzzfeed/android/data/tracking/BuzzFeedLoginStatusProvider;
.super Ljava/lang/Object;
.source "BuzzFeedLoginStatusProvider.java"

# interfaces
.implements Lcom/buzzfeed/analytics/provider/LoginStatusProvider;


# instance fields
.field buzzUser:Lcom/buzzfeed/android/data/BuzzUser;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 2
    .param p1, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/buzzfeed/android/data/tracking/BuzzFeedLoginStatusProvider;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 25
    return-void
.end method


# virtual methods
.method public getLoginStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuzzFeedLoginStatusProvider;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getLoginType()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "loginStatus":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 32
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_44

    :cond_14
    :goto_14
    packed-switch v1, :pswitch_data_52

    .line 43
    sget-object v0, Lcom/buzzfeed/analytics/client/DustBusterMetaDataValues;->NO_LOGIN:Ljava/lang/String;

    .line 49
    :goto_19
    return-object v0

    .line 32
    :sswitch_1a
    const-string v2, "buzzfeedAccount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    goto :goto_14

    :sswitch_24
    const-string v2, "googleAccount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    goto :goto_14

    :sswitch_2e
    const-string v2, "facebookAccount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x2

    goto :goto_14

    .line 34
    :pswitch_38
    const-string v0, "buzzfeed"

    .line 35
    goto :goto_19

    .line 37
    :pswitch_3b
    const-string v0, "google"

    .line 38
    goto :goto_19

    .line 40
    :pswitch_3e
    const-string v0, "facebook"

    .line 41
    goto :goto_19

    .line 46
    :cond_41
    sget-object v0, Lcom/buzzfeed/analytics/client/DustBusterMetaDataValues;->NO_LOGIN:Ljava/lang/String;

    goto :goto_19

    .line 32
    :sswitch_data_44
    .sparse-switch
        -0x34c9fe4c -> :sswitch_24
        -0x266ff604 -> :sswitch_1a
        0x6571fc87 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method
