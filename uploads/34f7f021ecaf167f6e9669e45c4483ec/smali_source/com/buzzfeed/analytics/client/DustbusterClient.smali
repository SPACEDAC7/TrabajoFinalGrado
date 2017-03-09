.class public Lcom/buzzfeed/analytics/client/DustbusterClient;
.super Ljava/lang/Object;
.source "DustbusterClient.java"


# static fields
.field private static final AUTHOR_ID:I = 0x0

.field private static final AUTHOR_NAME:I = 0x1

.field private static final NO_POSITION:I = -0x1

.field private static final SESSION_TIMEOUT:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/buzzfeed/analytics/client/DustbusterClient;


# instance fields
.field private mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

.field private mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

.field private mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

.field private mLastActiveTime:J

.field private mSubscriptionProvider:Lcom/buzzfeed/analytics/client/SubscriptionProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/analytics/Analytics$Configuration;Lcom/buzzfeed/analytics/client/SubscriptionProvider;)V
    .registers 5
    .param p1, "dustbuster"    # Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
    .param p2, "doorbell"    # Lcom/buzzfeed/toolkit/doorbell/Doorbell;
    .param p3, "config"    # Lcom/buzzfeed/analytics/Analytics$Configuration;
    .param p4, "subscriptionProvider"    # Lcom/buzzfeed/analytics/client/SubscriptionProvider;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    .line 63
    iput-object p2, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    .line 64
    iput-object p3, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    .line 65
    iput-object p4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mSubscriptionProvider:Lcom/buzzfeed/analytics/client/SubscriptionProvider;

    .line 66
    return-void
.end method

.method private static appendUnitImpressionLog(Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "impression"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 462
    const-string/jumbo v2, "{ type : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unit_impression"

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t\t"

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 467
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t\t"

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 475
    .end local v1    # "key":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v2, "}\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    return-void
.end method

.method private static convertImpressionToJsonObject(Lcom/buzzfeed/analytics/model/UnitImpression;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "unitImpression"    # Lcom/buzzfeed/analytics/model/UnitImpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;-><init>()V

    .line 480
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "content_id"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v1, "content_type"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v1, "position"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->position:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string/jumbo v1, "unit"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v1, "unit_client_id"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->unitClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string v1, "post_category"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->postCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    const-string/jumbo v1, "variation_id"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->variationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v1, "package_id"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v1, "package_size"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v1, "sub_position"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->subPosition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v1, "data_source"

    iget-object v2, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->dataSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    return-object v0
.end method

.method private convertStringToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 749
    if-nez p1, :cond_4

    .line 750
    const/4 v0, 0x0

    .line 752
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->stringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method private formatLogMessage(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 765
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{ type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "logString":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 767
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->formatLogValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    goto :goto_22

    .line 772
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatLogValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 783
    if-nez p1, :cond_4

    .line 784
    const/4 v3, 0x0

    .line 804
    .end local p1    # "value":Ljava/lang/Object;
    :goto_3
    return-object v3

    .line 787
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [Ljava/lang/String;

    if-eqz v3, :cond_45

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .local v1, "builder":Ljava/lang/StringBuilder;
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 791
    .local v0, "array":[Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    array-length v4, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_3b

    aget-object v2, v0, v3

    .line 794
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_29

    .line 795
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_29
    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 800
    .end local v2    # "val":Ljava/lang/String;
    :cond_3b
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 804
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/buzzfeed/analytics/client/DustbusterClient$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient$1;-><init>(Lcom/buzzfeed/analytics/client/DustbusterClient;I)V

    .line 145
    .local v0, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorUserPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;
    .registers 3

    .prologue
    .line 73
    const-class v1, Lcom/buzzfeed/analytics/client/DustbusterClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/analytics/client/DustbusterClient;->sInstance:Lcom/buzzfeed/analytics/client/DustbusterClient;

    if-nez v0, :cond_12

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "You must call initialize on DustbusterClient in the application"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 73
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    :cond_12
    :try_start_12
    sget-object v0, Lcom/buzzfeed/analytics/client/DustbusterClient;->sInstance:Lcom/buzzfeed/analytics/client/DustbusterClient;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/analytics/Analytics$Configuration;Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;Lcom/buzzfeed/analytics/client/SubscriptionProvider;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "doorbell"    # Lcom/buzzfeed/toolkit/doorbell/Doorbell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Lcom/buzzfeed/analytics/Analytics$Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dustbusterLauncher"    # Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "subscriptionProvider"    # Lcom/buzzfeed/analytics/client/SubscriptionProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    const-class v7, Lcom/buzzfeed/analytics/client/DustbusterClient;

    monitor-enter v7

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getDustbusterInstance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Dustbuster singleton for build environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getBuildEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p2}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getBuildEnvironment()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;)V

    .line 100
    .local v0, "dustbuster":Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
    new-instance v1, Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-direct {v1, v0, p1, p2, p4}, Lcom/buzzfeed/analytics/client/DustbusterClient;-><init>(Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/analytics/Analytics$Configuration;Lcom/buzzfeed/analytics/client/SubscriptionProvider;)V

    sput-object v1, Lcom/buzzfeed/analytics/client/DustbusterClient;->sInstance:Lcom/buzzfeed/analytics/client/DustbusterClient;
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    .line 101
    monitor-exit v7

    return-void

    .line 91
    .end local v0    # "dustbuster":Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
    .end local v6    # "TAG":Ljava/lang/String;
    :catchall_4e
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method private trackBookmarkCommon(Ljava/util/HashMap;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "authorName"    # Ljava/lang/String;
    .param p4, "authorId"    # Ljava/lang/String;
    .param p5, "bookmarked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "buzz_id"

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "author"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v0, "author_id"

    invoke-virtual {p1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v0, "post_category"

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "bookmark_state"

    if-eqz p5, :cond_2b

    const-string v0, "bookmarked"

    :goto_22
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "bookmark"

    invoke-virtual {p0, v0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 410
    return-void

    .line 408
    :cond_2b
    const-string/jumbo v0, "unbookmarked"

    goto :goto_22
.end method

.method private trackComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "buzzId"    # Ljava/lang/String;
    .param p3, "authorName"    # Ljava/lang/String;
    .param p4, "authorId"    # Ljava/lang/String;
    .param p5, "postCategory"    # Ljava/lang/String;
    .param p6, "commentType"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "author"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "author_id"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "post_category"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "comment_type"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 345
    return-void
.end method

.method private trackNotificationInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "interactionType"    # Ljava/lang/String;
    .param p4, "buckets"    # [Ljava/lang/String;

    .prologue
    .line 686
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 687
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v1, "destination"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string/jumbo v1, "type_of_interaction"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v1, "bucket"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v1, "notification_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 692
    return-void
.end method

.method private trackShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "buzzId"    # Ljava/lang/String;
    .param p3, "authorName"    # Ljava/lang/String;
    .param p4, "authorId"    # Ljava/lang/String;
    .param p5, "postCategory"    # Ljava/lang/String;
    .param p6, "shareType"    # Ljava/lang/String;
    .param p7, "shareButtonLocation"    # Ljava/lang/String;
    .param p8, "shareActivitySource"    # Ljava/lang/String;
    .param p9, "shareTapOutcome"    # Ljava/lang/String;
    .param p10, "resultId"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "author"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "author_id"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "post_category"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "share_type"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "share_button_location"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "share_activity_source"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "share_tap_outcome"

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "result_id"

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "share"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method private trackShareEventInFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "position"    # I
    .param p5, "shareType"    # Ljava/lang/String;
    .param p6, "shareButtonLocation"    # Ljava/lang/String;
    .param p7, "shareActivitySource"    # Ljava/lang/String;
    .param p8, "shareTapOutcome"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 217
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "content_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "content_type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v1, -0x1

    if-eq p4, v1, :cond_20

    const-string v1, "position"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_20
    const-string v1, "share_type"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "share_button_location"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "share_activity_source"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "share_tap_outcome"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "share"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method private updateLastActiveTime()V
    .registers 3

    .prologue
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mLastActiveTime:J

    .line 164
    return-void
.end method


# virtual methods
.method public forceProcessEvents()V
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->forceProcessEvents()V

    .line 760
    return-void
.end method

.method public getDustbuster()Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    return-object v0
.end method

.method public getUserPoundIdentifier()J
    .registers 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserPoundIdentifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized pauseSession()V
    .registers 5

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pauseSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "TAG":Ljava/lang/String;
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->updateLastActiveTime()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mLastActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mLastActiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->forceProcessEvents()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 160
    monitor-exit p0

    return-void

    .line 155
    .end local v0    # "TAG":Ljava/lang/String;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resumeSession(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".resumeSession"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mLastActiveTime:J

    sub-long v2, v4, v6

    .line 173
    .local v2, "elapsedTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if we need to resume session, elapsedTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mLastActiveTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mLastActiveTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4e

    .line 176
    const-string v1, "We need to start a new session because elapsedTime >= 120000"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->startSessionWithMetaData(Landroid/content/Context;)V

    .line 179
    :cond_4e
    return-void
.end method

.method startSessionWithMetaData(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".startSessionWithMetaData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "TAG":Ljava/lang/String;
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->updateLastActiveTime()V

    .line 110
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 111
    .local v2, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app_edition"

    iget-object v5, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    invoke-virtual {v5}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getEdition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    invoke-virtual {v4}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getLoginStatusProvider()Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 114
    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    invoke-virtual {v4}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getLoginStatusProvider()Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    move-result-object v1

    .line 115
    .local v1, "loginStatusProvider":Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    const-string v4, "login_status"

    invoke-interface {v1, p1}, Lcom/buzzfeed/analytics/provider/LoginStatusProvider;->getLoginStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v1    # "loginStatusProvider":Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    :goto_3f
    const-string v5, "notification_status"

    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    invoke-virtual {v4}, Lcom/buzzfeed/analytics/Analytics$Configuration;->isPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v4, "opt_in"

    :goto_4b
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mSubscriptionProvider:Lcom/buzzfeed/analytics/client/SubscriptionProvider;

    if-nez v4, :cond_92

    const/4 v3, 0x0

    .line 123
    .local v3, "subscriptions":[Ljava/lang/String;
    :goto_53
    const-string/jumbo v4, "subscriptions"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v4, v2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->startNewSessionWithMetadata(Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .line 128
    const-string v4, "source"

    iget-object v5, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mConfig:Lcom/buzzfeed/analytics/Analytics$Configuration;

    invoke-virtual {v5}, Lcom/buzzfeed/analytics/Analytics$Configuration;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v4, "device_id"

    iget-object v5, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v4, "session_id"

    iget-object v5, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v4, "session"

    invoke-direct {p0, v4, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->formatLogMessage(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 117
    .end local v3    # "subscriptions":[Ljava/lang/String;
    :cond_89
    const-string v4, "No LoginStatusProvider registered. Unable to track login status."

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 120
    :cond_8f
    const-string v4, "opt_out"

    goto :goto_4b

    .line 122
    :cond_92
    iget-object v4, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mSubscriptionProvider:Lcom/buzzfeed/analytics/client/SubscriptionProvider;

    invoke-interface {v4}, Lcom/buzzfeed/analytics/client/SubscriptionProvider;->getSubscriptions()[Ljava/lang/String;

    move-result-object v3

    goto :goto_53
.end method

.method public trackABeagleExperimentRequest(J)V
    .registers 6
    .param p1, "responseTime"    # J

    .prologue
    .line 707
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 708
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "response_time_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v1, "experiment_request"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 711
    return-void
.end method

.method public trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 8
    .param p1, "experimentId"    # Ljava/lang/Integer;
    .param p2, "experimentName"    # Ljava/lang/String;
    .param p3, "experimentVersion"    # Ljava/lang/Integer;
    .param p4, "variantId"    # Ljava/lang/Integer;
    .param p5, "variantName"    # Ljava/lang/String;

    .prologue
    .line 715
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 716
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "experiment_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v1, "experiment_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v1, "experiment_version"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v1, "variant_id"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string/jumbo v1, "variant_name"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v1, "experiment_status"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 723
    return-void
.end method

.method public trackBookmarkBuzzPage(Lcom/buzzfeed/toolkit/content/PostContent;Z)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "bookmarked"    # Z

    .prologue
    .line 392
    if-eqz p1, :cond_3f

    .line 393
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v6

    .line 394
    .local v6, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v1, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "screen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/post/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBookmarkCommon(Ljava/util/HashMap;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    .end local v1    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    return-void
.end method

.method public trackBreakingNewsUnitTap(ILjava/lang/String;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "screen"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 623
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 624
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "screen_type"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v1, "content_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v1, "content_type"

    const-string v2, "breaking_news"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v1, "unit"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v1, "unit_client_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v1, "post_category"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v1, "variation_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v1, "sub_position"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v1, "package_name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "package_size"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "package_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string/jumbo v1, "unit_tap"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 639
    return-void
.end method

.method public trackBuzzFeedComment(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v7

    .line 353
    .local v7, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 355
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    .line 356
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 357
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v6, "buzzfeed"

    move-object v0, p0

    .line 353
    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public trackBuzzPageView(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 18
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "viewStateString"    # Ljava/lang/String;
    .param p3, "feedTag"    # Ljava/lang/String;
    .param p5, "sourceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 513
    .local p4, "unsupportedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_43

    .line 514
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v11

    .line 516
    .local v11, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bpage"

    .line 518
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 519
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x0

    .line 520
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 521
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 516
    invoke-virtual/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 528
    .end local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_43
    return-void
.end method

.method public trackBuzzUnitTap(Lcom/buzzfeed/toolkit/content/PostContent;ILjava/lang/String;)V
    .registers 8
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "position"    # I
    .param p3, "screen"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 581
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 582
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "screen_type"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "content_id"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v1, "content_type"

    const-string v2, "buzz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string/jumbo v1, "unit"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v1, "unit_client_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v1, "post_category"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string/jumbo v1, "variation_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string/jumbo v1, "sub_position"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "package_name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v1, "package_size"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v1, "package_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v1, "data_source"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getDataSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v1, "unit_tap"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 597
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p2, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".trackEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "TAG":Ljava/lang/String;
    const-string v5, "buzz_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 731
    .local v4, "buzzIdStr":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->convertStringToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 732
    .local v3, "buzzId":Ljava/lang/Integer;
    const-string v5, "buzz_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 733
    const-string v5, "buzz_id"

    invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_2e
    const-string v5, "author_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 736
    const-string v5, "author_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 737
    .local v2, "authorIdStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->convertStringToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 738
    .local v1, "authorId":Ljava/lang/Integer;
    const-string v5, "author_id"

    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .end local v1    # "authorId":Ljava/lang/Integer;
    .end local v2    # "authorIdStr":Ljava/lang/String;
    :cond_47
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_5c

    .line 741
    :cond_4f
    iget-object v5, p0, Lcom/buzzfeed/analytics/client/DustbusterClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v5, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->formatLogMessage(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_5b
    return-void

    .line 744
    :cond_5c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid buzzId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", not sending event for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method public trackFeedPageView(Ljava/lang/String;)V
    .registers 13
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string v2, "feed"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-virtual/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public trackGenericShare(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "shareLocation"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 254
    if-eqz p1, :cond_41

    .line 255
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v11

    .line 257
    .local v11, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 259
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    .line 260
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 261
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v8, "share_sheet"

    move-object v0, p0

    move-object v6, p3

    move-object v7, p2

    move-object v10, v9

    .line 257
    invoke-direct/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_41
    return-void
.end method

.method public trackLinkTap(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    .local v0, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 652
    .local v1, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "screen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/post/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v2, "buzz_id"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v2, "author"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v2, "author_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v2, "post_category"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v2, "link_url"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v2, "link_tap"

    invoke-virtual {p0, v2, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 660
    return-void
.end method

.method public trackNativeShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 16
    .param p1, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "shareBarLocation"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 291
    if-eqz p2, :cond_4a

    .line 292
    invoke-direct {p0, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v11

    .line 293
    .local v11, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "shareType":Ljava/lang/String;
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 296
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    .line 297
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 298
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v8, "on_screen"

    move-object v0, p0

    move-object v7, p3

    move-object v10, v9

    .line 294
    invoke-direct/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v6    # "shareType":Ljava/lang/String;
    .end local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4a
    return-void

    .restart local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4b
    move-object v6, v9

    .line 293
    goto :goto_11
.end method

.method public trackNewsPackageUnitTap(Lcom/buzzfeed/toolkit/content/PostContent;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "position"    # I
    .param p3, "screen"    # Ljava/lang/String;
    .param p4, "subPosition"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "packageCount"    # I
    .param p7, "packageId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 600
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 601
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "screen_type"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "content_id"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "content_type"

    const-string v2, "buzz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v1, "unit"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v1, "unit_client_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "post_category"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v1, "variation_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v1, "sub_position"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "package_size"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "package_id"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "data_source"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getDataSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string/jumbo v1, "unit_tap"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    return-void
.end method

.method public trackNotificationDismissed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 699
    const-string v0, "dismiss"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNotificationInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public trackNotificationOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 695
    const-string v0, "open"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNotificationInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public trackNotificationReceived(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "buckets"    # [Ljava/lang/String;

    .prologue
    .line 678
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 679
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v1, "destination"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "bucket"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v1, "notification"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 683
    return-void
.end method

.method public trackNotificationStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "bucket"    # Ljava/lang/String;

    .prologue
    .line 671
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 672
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "bucket"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "new_status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "notification_status_change"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 675
    return-void
.end method

.method public trackReaction(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "reactionType"    # Ljava/lang/String;

    .prologue
    .line 369
    if-eqz p1, :cond_5b

    .line 370
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v1, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "screen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/post/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "buzz_id"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "author"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v2, "author_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "post_category"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v2, "reaction_type"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "react"

    invoke-virtual {p0, v2, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 382
    .end local v0    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5b
    return-void
.end method

.method public trackScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "screenType"    # Ljava/lang/String;
    .param p3, "buzzId"    # Ljava/lang/String;
    .param p4, "author"    # Ljava/lang/String;
    .param p5, "authorId"    # Ljava/lang/String;
    .param p6, "postCategory"    # Ljava/lang/String;
    .param p7, "viewState"    # Ljava/lang/String;
    .param p8, "previousScreen"    # Ljava/lang/String;
    .param p10, "openUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 536
    .local p9, "unsupportedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 537
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "author"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "author_id"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "post_category"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string/jumbo v1, "view_state"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v2, "unsupported_modules"

    if-eqz p9, :cond_34

    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_50

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "bpage"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 546
    const-string v1, "previous_screen"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_45
    const-string v1, "open_url"

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "screenview"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 551
    return-void

    .line 544
    :cond_50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_35
.end method

.method public trackSubbuzzShare(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 15
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 309
    if-eqz p1, :cond_43

    .line 310
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v11

    .line 312
    .local v11, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 314
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    .line 315
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "subbuzz"

    const-string v8, "share_sheet"

    move-object v0, p0

    move-object v6, p2

    move-object v10, v9

    .line 312
    invoke-direct/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_43
    return-void
.end method

.method public trackTrendingShare(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p1, :cond_13

    .line 279
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "feed_module"

    const-string v7, "share_sheet"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p5

    move v4, p3

    move-object v5, p4

    .line 277
    invoke-direct/range {v0 .. v8}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackShareEventInFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_13
    return-void
.end method

.method public trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "uiItem"    # Ljava/lang/String;
    .param p3, "uiItemId"    # Ljava/lang/String;
    .param p4, "uiItemLocation"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 423
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v1, "ui_item"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v1, "ui_item_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string/jumbo v1, "ui_item_location"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "ui_tap"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 428
    return-void
.end method

.method public declared-synchronized trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 12
    .param p1, "screen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "impressions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    monitor-enter p0

    if-eqz p2, :cond_5a

    :try_start_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_5a

    .line 439
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 441
    .local v5, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "screen"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v7, "screen_type"

    const-string v8, "feed"

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/analytics/client/DustbusterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".trackUnitImpressions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_6b

    move-result-object v0

    .line 445
    .local v0, "TAG":Ljava/lang/String;
    :try_start_2f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 446
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/analytics/model/UnitImpression;

    .line 448
    .local v6, "unitImpression":Lcom/buzzfeed/analytics/model/UnitImpression;
    invoke-static {v6}, Lcom/buzzfeed/analytics/client/DustbusterClient;->convertImpressionToJsonObject(Lcom/buzzfeed/analytics/model/UnitImpression;)Lorg/json/JSONObject;

    move-result-object v4

    .line 449
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 450
    invoke-static {v2, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->appendUnitImpressionLog(Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_53} :catch_54
    .catchall {:try_start_2f .. :try_end_53} :catchall_6b

    goto :goto_3d

    .line 455
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "unitImpression":Lcom/buzzfeed/analytics/model/UnitImpression;
    :catch_54
    move-exception v3

    .line 456
    .local v3, "e":Lorg/json/JSONException;
    :try_start_55
    const-string v7, "Cannot convert to json array"

    invoke-static {v0, v7, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_6b

    .line 459
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    .line 452
    .restart local v0    # "TAG":Ljava/lang/String;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5c
    :try_start_5c
    const-string v7, "item"

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 454
    const-string/jumbo v7, "unit_impression"

    invoke-virtual {p0, v7, v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_6a} :catch_54
    .catchall {:try_start_5c .. :try_end_6a} :catchall_6b

    goto :goto_5a

    .line 437
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_6b
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public trackUserEdge(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;J)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "sourceUri"    # Ljava/lang/String;
    .param p3, "fromClientId"    # J

    .prologue
    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 571
    :cond_6
    :goto_6
    return-void

    .line 562
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_6

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/post/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "buzz_id"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "post_category"

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "from_client_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "user_edge"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6
.end method

.method public trackWebShare(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const/4 v7, 0x0

    .line 233
    if-eqz p2, :cond_41

    .line 234
    invoke-direct {p0, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;

    move-result-object v11

    .line 236
    .local v11, "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 238
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    .line 239
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v8, "on_screen"

    move-object v0, p0

    move-object v6, p1

    move-object v9, v7

    move-object v10, v7

    .line 236
    invoke-direct/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v11    # "authorInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_41
    return-void
.end method
