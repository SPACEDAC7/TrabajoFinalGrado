.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
.super Ljava/lang/Object;
.source "DustbusterLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;
    }
.end annotation


# static fields
.field private static final ERROR_HTTP_CLIENT:Ljava/lang/String; = "exception in httpClient.post()"

.field public static final PREFS_SAVED_EVENT_FILE_NAME:Ljava/lang/String; = "com.buzzfeed.dustbuster.savedevents"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;

.field private mMaxBatchSize:I

.field private mMinBatchSize:I

.field private mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

.field private mSavedEventPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpClient"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "com.buzzfeed.dustbuster.savedevents"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    .line 38
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    .line 39
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mHttpClient:Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;

    .line 40
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->reloadPrefs()V

    .line 41
    return-void
.end method

.method private static getExceptionResultBroadcastIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.buzzfeed.dustbuster.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v1, "response_message"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "keys_sent"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    return-object v0
.end method

.method public static getJsonArrayForCollection(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 186
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 188
    :cond_1c
    return-object v0
.end method

.method private static getResultBroadcastIntent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 5
    .param p0, "response"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.buzzfeed.dustbuster.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_success"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string v1, "response_message"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->getResponseText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "keys_sent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 171
    return-object v0
.end method

.method private sendExceptionResultBroadcast(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->getExceptionResultBroadcastIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method private sendResultBroadcast(Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "response"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->getResultBroadcastIntent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventJson"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public addEventCollection(Ljava/lang/String;)V
    .registers 9
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2a

    .line 88
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    .local v0, "current":Lorg/json/JSONObject;
    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->getEventIdKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "eventId":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->addEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_22

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 92
    .end local v0    # "current":Lorg/json/JSONObject;
    .end local v2    # "eventId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_22
    move-exception v1

    .line 93
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->TAG:Ljava/lang/String;

    const-string v6, "error reading json from addEventCollection"

    invoke-static {v5, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2a
    return-void
.end method

.method public checkMinimumEventsToProcess(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->getEventCount()I

    move-result v0

    .line 104
    .local v0, "pendingEventCount":I
    iget v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mMinBatchSize:I

    if-lt v0, v1, :cond_d

    .line 105
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->processBatches(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x1

    .line 109
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getEventsToProcess(I)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;
    .registers 14
    .param p1, "maxBatchSize"    # I

    .prologue
    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".getEventsToProcess"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "TAG":Ljava/lang/String;
    iget-object v9, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v8

    .line 47
    .local v8, "processCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "all event count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "isOverLimit":Z
    if-le v8, p1, :cond_3a

    .line 50
    move v8, p1

    .line 51
    const/4 v5, 0x1

    .line 54
    :cond_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v3, "eventsProcessed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 58
    .local v4, "i":I
    iget-object v9, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_53
    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 59
    .local v7, "key":Ljava/lang/String;
    if-lt v4, p1, :cond_6c

    .line 60
    const-string v9, "reached max batch size, stopping until next time"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v7    # "key":Ljava/lang/String;
    :cond_66
    new-instance v9, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;

    invoke-direct {v9, v5, v3, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;-><init>(ZLjava/util/ArrayList;Lorg/json/JSONArray;)V

    return-object v9

    .line 64
    .restart local v7    # "key":Ljava/lang/String;
    :cond_6c
    iget-object v10, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "json":Ljava/lang/String;
    if-eqz v6, :cond_53

    .line 67
    :try_start_75
    new-instance v10, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-direct {v10, v6}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJsonObject(Z)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding event to be processed: id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_a5} :catch_a8

    .line 73
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 70
    :catch_a8
    move-exception v2

    .line 71
    .local v2, "e":Lorg/json/JSONException;
    const-string v10, "exception in recreating event from json string"

    invoke-static {v0, v10, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a5
.end method

.method public processBatches(Ljava/lang/String;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processBatches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "TAG":Ljava/lang/String;
    iget v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mMaxBatchSize:I

    invoke-virtual {p0, v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->getEventsToProcess(I)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;

    move-result-object v2

    .line 115
    .local v2, "keysToProcess":Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;
    const/4 v3, 0x0

    .line 117
    .local v3, "reachedApiEndpoint":Z
    :try_start_1c
    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mHttpClient:Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->getJsonParams()Lorg/json/JSONArray;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;->post(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;

    move-result-object v4

    .line 118
    .local v4, "response":Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processed the following keys: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->getEventsProcessed()Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/EZUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing events was successful. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->getResponseText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->getEventsProcessed()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->removeEventsFromStorage(Ljava/util/List;)V

    .line 124
    const/4 v3, 0x1

    .line 129
    :goto_6e
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->getEventsProcessed()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->sendResultBroadcast(Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;Ljava/util/ArrayList;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_75} :catch_9c

    .line 136
    .end local v4    # "response":Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    :goto_75
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->isShouldProcessMore()Z

    move-result v5

    if-eqz v5, :cond_80

    if-eqz v3, :cond_80

    .line 137
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->processBatches(Ljava/lang/String;)V

    .line 139
    :cond_80
    return-void

    .line 126
    .restart local v4    # "response":Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    :cond_81
    :try_start_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing events was unsuccessful. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->getResponseText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9b} :catch_9c

    goto :goto_6e

    .line 130
    .end local v4    # "response":Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    :catch_9c
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "exception in httpClient.post()"

    invoke-static {v0, v5, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const-string v5, "exception in httpClient.post()"

    invoke-direct {p0, v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->sendExceptionResultBroadcast(Ljava/lang/String;)V

    goto :goto_75
.end method

.method public reloadPrefs()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->getMinBatchSize()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mMinBatchSize:I

    .line 155
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->getMaxBatchSize()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mMaxBatchSize:I

    .line 156
    return-void
.end method

.method public removeEventsFromStorage(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->mSavedEventPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_a

    .line 146
    .end local v1    # "key":Ljava/lang/String;
    :cond_1a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method
