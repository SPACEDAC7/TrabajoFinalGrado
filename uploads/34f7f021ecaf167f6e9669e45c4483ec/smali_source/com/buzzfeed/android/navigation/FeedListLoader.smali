.class Lcom/buzzfeed/android/navigation/FeedListLoader;
.super Ljava/lang/Object;
.source "FeedListLoader.java"

# interfaces
.implements Lcom/buzzfeed/android/navigation/FeedListDataSource;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNavigationModelFactory:Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/navigation/FeedListLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/navigation/FeedListLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/navigation/FeedListLoader;->getModelFactoryForEdition(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListLoader;->mNavigationModelFactory:Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;

    .line 29
    return-void
.end method


# virtual methods
.method getModelFactoryForEdition(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    .registers 5
    .param p1, "edition"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ea

    :cond_8
    :goto_8
    packed-switch v1, :pswitch_data_11c

    .line 74
    sget-object v1, Lcom/buzzfeed/android/navigation/FeedListLoader;->TAG:Ljava/lang/String;

    const-string v2, "Unable to match edition to handler. Defaulting to EN-US"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnUSNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnUSNavigationModelFactory;-><init>()V

    .line 78
    .local v0, "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :goto_17
    return-object v0

    .line 36
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :sswitch_18
    const-string v2, "de-de"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :sswitch_22
    const-string v2, "en-au"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :sswitch_2c
    const-string v2, "en-ca"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x2

    goto :goto_8

    :sswitch_36
    const-string v2, "en-in"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x3

    goto :goto_8

    :sswitch_40
    const-string v2, "en-uk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x4

    goto :goto_8

    :sswitch_4a
    const-string v2, "en-us"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x5

    goto :goto_8

    :sswitch_54
    const-string v2, "es"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x6

    goto :goto_8

    :sswitch_5e
    const-string v2, "es-es"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x7

    goto :goto_8

    :sswitch_68
    const-string v2, "es-mx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x8

    goto :goto_8

    :sswitch_73
    const-string v2, "fr-fr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x9

    goto :goto_8

    :sswitch_7e
    const-string v2, "ja-jp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0xa

    goto :goto_8

    :sswitch_89
    const-string v2, "pt-br"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0xb

    goto/16 :goto_8

    .line 38
    :pswitch_95
    new-instance v0, Lcom/buzzfeed/android/navigation/data/DeDENavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/DeDENavigationModelFactory;-><init>()V

    .line 39
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 41
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_9c
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnAUNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnAUNavigationModelFactory;-><init>()V

    .line 42
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 44
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_a3
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnCANavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnCANavigationModelFactory;-><init>()V

    .line 45
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 47
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_aa
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnINNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnINNavigationModelFactory;-><init>()V

    .line 48
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 50
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_b1
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnUKNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnUKNavigationModelFactory;-><init>()V

    .line 51
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 53
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_b8
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EnUSNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EnUSNavigationModelFactory;-><init>()V

    .line 54
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 56
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_bf
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EsNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EsNavigationModelFactory;-><init>()V

    .line 57
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 59
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_c6
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EsESNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EsESNavigationModelFactory;-><init>()V

    .line 60
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 62
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_cd
    new-instance v0, Lcom/buzzfeed/android/navigation/data/EsMXNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/EsMXNavigationModelFactory;-><init>()V

    .line 63
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 65
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_d4
    new-instance v0, Lcom/buzzfeed/android/navigation/data/FrFRNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/FrFRNavigationModelFactory;-><init>()V

    .line 66
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 68
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_db
    new-instance v0, Lcom/buzzfeed/android/navigation/data/JaJPNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/JaJPNavigationModelFactory;-><init>()V

    .line 69
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 71
    .end local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    :pswitch_e2
    new-instance v0, Lcom/buzzfeed/android/navigation/data/PtBRNavigationModelFactory;

    invoke-direct {v0}, Lcom/buzzfeed/android/navigation/data/PtBRNavigationModelFactory;-><init>()V

    .line 72
    .restart local v0    # "modelFactory":Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
    goto/16 :goto_17

    .line 36
    nop

    :sswitch_data_ea
    .sparse-switch
        0xcae -> :sswitch_54
        0x5afcd4d -> :sswitch_18
        0x5c1fbd8 -> :sswitch_22
        0x5c1fc02 -> :sswitch_2c
        0x5c1fcc9 -> :sswitch_36
        0x5c1fe3a -> :sswitch_40
        0x5c1fe42 -> :sswitch_4a
        0x5c4422d -> :sswitch_5e
        0x5c4432a -> :sswitch_68
        0x5d1e56d -> :sswitch_73
        0x602899c -> :sswitch_7e
        0x65fb8b9 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_95
        :pswitch_9c
        :pswitch_a3
        :pswitch_aa
        :pswitch_b1
        :pswitch_b8
        :pswitch_bf
        :pswitch_c6
        :pswitch_cd
        :pswitch_d4
        :pswitch_db
        :pswitch_e2
    .end packed-switch
.end method

.method public getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListLoader;->mNavigationModelFactory:Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;

    invoke-virtual {v0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->createNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;

    move-result-object v0

    return-object v0
.end method
