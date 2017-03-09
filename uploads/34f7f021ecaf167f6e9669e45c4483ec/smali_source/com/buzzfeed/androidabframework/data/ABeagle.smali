.class public Lcom/buzzfeed/androidabframework/data/ABeagle;
.super Ljava/lang/Object;
.source "ABeagle.java"


# static fields
.field private static final ABEAGLE_RESPONSE_ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ABEAGLE_RESPONSE_EXPERIMENT_ID_KEY:Ljava/lang/String; = "id"

.field private static final ABEAGLE_RESPONSE_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final ABEAGLE_RESPONSE_RESOLVED_KEY:Ljava/lang/String; = "resolved"

.field private static final ABEAGLE_RESPONSE_VARIANT_ID_KEY:Ljava/lang/String; = "variant_id"

.field private static final ABEAGLE_RESPONSE_VARIANT_NAME_KEY:Ljava/lang/String; = "value"

.field private static final ABEAGLE_RESPONSE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final ABEAGLE_URL_DOMAIN_BASE:Ljava/lang/String; = "buzzfeed.com"

.field private static final ABEAGLE_URL_DOMAIN_PROD:Ljava/lang/String; = "abeagle-public.buzzfeed.com"

.field private static final ABEAGLE_URL_DOMAIN_STAGE:Ljava/lang/String; = "abeagle-public-stage.buzzfeed.com"

.field private static final ABEAGLE_URL_PATH:Ljava/lang/String; = "/public/v2/experiment_variants"

.field private static final ABEAGLE_URL_QUERY_CLIENT_ID_KEY:Ljava/lang/String; = "client_id"

.field private static final ABEAGLE_URL_QUERY_CLIENT_ID_VALUE:Ljava/lang/String; = "4"

.field private static final ABEAGLE_URL_QUERY_EXPERIMENTS_KEY:Ljava/lang/String; = "experiment_names"

.field private static final ABEAGLE_URL_QUERY_USER_ID_KEY:Ljava/lang/String; = "user_id"

.field private static final ABEAGLE_URL_SCHEME:Ljava/lang/String; = "https"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mABeagleDataMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/ABeagleData;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExperimentList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseTime:J

.field private mUserId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/buzzfeed/androidabframework/data/ABeagle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/androidabframework/data/ABeagle;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mABeagleDataMap:Ljava/util/Map;

    .line 96
    return-void
.end method

.method private generateABeagleUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 192
    .local v1, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_20

    .line 193
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_20
    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 197
    .end local v1    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "experiments":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 201
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v4, "https"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 202
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/data/ABeagle;->getABeagleDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "/public/v2/experiment_variants"

    .line 203
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "client_id"

    const-string v6, "4"

    .line 204
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "user_id"

    .line 205
    invoke-virtual {v4, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "experiment_names"

    .line 206
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private loadABeagleJsonObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/androidabframework/data/ABeagle;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "loadABeagleJsonObjectFromUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "TAG":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading ABeagle JSON from URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v4, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v4}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v4}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v1

    .line 222
    .local v1, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-static {p1}, Lcom/buzzfeed/androidabframework/util/Util;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mResponseTime:J

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network call took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mResponseTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ABeagle JSON returned from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v2
.end method

.method public static newInstance(Lcom/buzzfeed/androidabframework/util/Environment;JLjava/lang/String;Ljava/util/List;)Lcom/buzzfeed/androidabframework/data/ABeagle;
    .registers 10
    .param p0, "environment"    # Lcom/buzzfeed/androidabframework/util/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheTTL"    # J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/androidabframework/util/Environment;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;)",
            "Lcom/buzzfeed/androidabframework/data/ABeagle;"
        }
    .end annotation

    .prologue
    .line 111
    .local p4, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/androidabframework/data/ABeagle;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".newInstance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/androidabframework/data/ABeagle;

    invoke-direct {v1}, Lcom/buzzfeed/androidabframework/data/ABeagle;-><init>()V

    .line 113
    .local v1, "aBeagle":Lcom/buzzfeed/androidabframework/data/ABeagle;
    iput-object p0, v1, Lcom/buzzfeed/androidabframework/data/ABeagle;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 114
    iput-object p3, v1, Lcom/buzzfeed/androidabframework/data/ABeagle;->mUserId:Ljava/lang/String;

    .line 115
    iput-object p4, v1, Lcom/buzzfeed/androidabframework/data/ABeagle;->mExperimentList:Ljava/util/List;

    .line 116
    const-string v2, "Initialized with:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Environment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/util/Environment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Cache TTL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Experiment List: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v1
.end method

.method private parseABeagleDataFromJson(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 10
    .param p1, "aBeagleJson"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/ABeagleData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/androidabframework/data/ABeagle;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".parseABeagleDataFromJson"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "TAG":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing A/Beagle response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v2, "aBeagleDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/ABeagleData;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 244
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_165

    .line 245
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "experimentName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 247
    .local v3, "data":Lorg/json/JSONObject;
    new-instance v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;

    invoke-direct {v1}, Lcom/buzzfeed/androidabframework/data/ABeagleData;-><init>()V

    .line 248
    .local v1, "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    iput-object v4, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->experimentName:Ljava/lang/String;

    .line 249
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 250
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->experimentId:Ljava/lang/Integer;

    .line 252
    :cond_67
    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 253
    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    .line 255
    :cond_86
    const-string v6, "resolved"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const-string v6, "resolved"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a2

    .line 256
    const-string v6, "resolved"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->resolved:Ljava/lang/Boolean;

    .line 258
    :cond_a2
    const-string/jumbo v6, "value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bd

    const-string/jumbo v6, "value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bd

    .line 259
    const-string/jumbo v6, "value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    .line 261
    :cond_bd
    const-string/jumbo v6, "variant_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_dc

    const-string/jumbo v6, "variant_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_dc

    .line 262
    const-string/jumbo v6, "variant_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantId:Ljava/lang/Integer;

    .line 264
    :cond_dc
    const-string v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f4

    const-string v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f4

    .line 265
    const-string v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->message:Ljava/lang/String;

    .line 267
    :cond_f4
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10c

    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10c

    .line 268
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->error:Ljava/lang/String;

    .line 270
    :cond_10c
    iget-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->message:Ljava/lang/String;

    if-eqz v6, :cond_136

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Experiment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_136
    iget-object v6, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->error:Ljava/lang/String;

    if-eqz v6, :cond_160

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Experiment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_160
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_34

    .line 278
    .end local v1    # "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v4    # "experimentName":Ljava/lang/String;
    :cond_165
    return-object v2
.end method


# virtual methods
.method public declared-synchronized getABeagleDataMap()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/ABeagleData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mABeagleDataMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getABeagleDomain()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    sget-object v1, Lcom/buzzfeed/androidabframework/util/Environment;->Stage:Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/androidabframework/util/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    const-string v0, "abeagle-public-stage.buzzfeed.com"

    .line 134
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "abeagle-public.buzzfeed.com"

    goto :goto_c
.end method

.method public getResponseTime()J
    .registers 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mResponseTime:J

    return-wide v0
.end method

.method public declared-synchronized loadABeagleData(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/androidabframework/data/ABeagle;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".loadABeagleData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "TAG":Ljava/lang/String;
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mResponseTime:J

    .line 158
    iget-object v5, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mUserId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 159
    sget-object v5, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoUserId:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_88

    .line 176
    :goto_24
    monitor-exit p0

    return-object v5

    .line 161
    :cond_26
    :try_start_26
    iget-object v5, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mExperimentList:Ljava/util/List;

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mExperimentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_35

    .line 162
    :cond_32
    sget-object v5, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoExperiments:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    goto :goto_24

    .line 164
    :cond_35
    iget-object v5, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mExperimentList:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/buzzfeed/androidabframework/data/ABeagle;->generateABeagleUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/androidabframework/util/Util;->isNetworkConnectionUp(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 166
    sget-object v5, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoNetworkConnection:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_88

    goto :goto_24

    .line 169
    :cond_46
    :try_start_46
    new-instance v5, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v5}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v5}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v2

    .line 170
    .local v2, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-direct {p0, v4}, Lcom/buzzfeed/androidabframework/data/ABeagle;->loadABeagleJsonObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "aBeagleJson":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/buzzfeed/androidabframework/data/ABeagle;->parseABeagleDataFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/buzzfeed/androidabframework/data/ABeagle;->mABeagleDataMap:Ljava/util/Map;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded and parsed ABeagle data in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_7d} :catch_80
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_7d} :catch_85
    .catchall {:try_start_46 .. :try_end_7d} :catchall_88

    .line 176
    :try_start_7d
    sget-object v5, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    goto :goto_24

    .line 173
    .end local v1    # "aBeagleJson":Lorg/json/JSONObject;
    .end local v2    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    :catch_80
    move-exception v5

    move-object v3, v5

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    :goto_82
    sget-object v5, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadRemoteJson:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_88

    goto :goto_24

    .line 173
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_85
    move-exception v5

    move-object v3, v5

    goto :goto_82

    .line 156
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catchall_88
    move-exception v5

    monitor-exit p0

    throw v5
.end method
