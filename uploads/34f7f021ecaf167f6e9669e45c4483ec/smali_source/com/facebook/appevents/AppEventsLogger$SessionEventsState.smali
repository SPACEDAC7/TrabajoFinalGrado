.class Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEventsState"
.end annotation


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousAppDeviceGUID:Ljava/lang/String;

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "anonymousGUID"    # Ljava/lang/String;

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 1159
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 1165
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 1166
    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    .line 1167
    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1168
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 1282
    const/4 v1, 0x0

    .line 1284
    .local v1, "jsonUtf8":[B
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 1289
    :goto_7
    return-object v1

    .line 1285
    :catch_8
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Encoding exception: "

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method private populateRequest(Lcom/facebook/GraphRequest;ILorg/json/JSONArray;Z)V
    .registers 10
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "numSkipped"    # I
    .param p3, "events"    # Lorg/json/JSONArray;
    .param p4, "limitEventUsage"    # Z

    .prologue
    .line 1238
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1240
    .local v1, "publishParams":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "event"

    const-string v4, "CUSTOM_APP_EVENTS"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    iget v3, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v3, :cond_15

    .line 1243
    const-string v3, "num_skipped_events"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1246
    :cond_15
    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    invoke-static {v1, v3, v4, p4}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_4e

    .line 1253
    :try_start_1c
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_50
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_23} :catch_4e

    .line 1260
    :goto_23
    :try_start_23
    const-string v3, "application_package_name"

    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2a} :catch_4e

    .line 1264
    :goto_2a
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 1266
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 1267
    .local v2, "requestParameters":Landroid/os/Bundle;
    if-nez v2, :cond_38

    .line 1268
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1271
    .restart local v2    # "requestParameters":Landroid/os/Bundle;
    :cond_38
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_4a

    .line 1273
    const-string v3, "custom_events_file"

    invoke-direct {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1276
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 1278
    :cond_4a
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 1279
    return-void

    .line 1261
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v2    # "requestParameters":Landroid/os/Bundle;
    :catch_4e
    move-exception v3

    goto :goto_2a

    .line 1256
    :catch_50
    move-exception v3

    goto :goto_23
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1234
    monitor-exit p0

    return-void

    .line 1233
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/appevents/AppEventsLogger$AppEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1a

    .line 1174
    iget v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    .line 1178
    :goto_18
    monitor-exit p0

    return-void

    .line 1176
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_18

    .line 1173
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .registers 4
    .param p1, "moveToAccumulated"    # Z

    .prologue
    .line 1185
    monitor-enter p0

    if-eqz p1, :cond_a

    .line 1186
    :try_start_3
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1188
    :cond_a
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1189
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 1190
    monitor-exit p0

    return-void

    .line 1185
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .registers 2

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1224
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1225
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1226
    monitor-exit p0

    return-object v0

    .line 1224
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public populateRequest(Lcom/facebook/GraphRequest;ZZ)I
    .registers 10
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "includeImplicitEvents"    # Z
    .param p3, "limitEventUsage"    # Z

    .prologue
    .line 1197
    monitor-enter p0

    .line 1198
    :try_start_1
    iget v3, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 1201
    .local v3, "numSkipped":I
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1202
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1204
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1205
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    .line 1206
    .local v0, "event":Lcom/facebook/appevents/AppEventsLogger$AppEvent;
    if-nez p2, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->getIsImplicit()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1207
    :cond_2e
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a

    .line 1214
    .end local v0    # "event":Lcom/facebook/appevents/AppEventsLogger$AppEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "numSkipped":I
    :catchall_36
    move-exception v4

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v4

    .line 1211
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "numSkipped":I
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_42

    .line 1212
    const/4 v4, 0x0

    monitor-exit p0

    .line 1217
    :goto_41
    return v4

    .line 1214
    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_36

    .line 1216
    invoke-direct {p0, p1, v3, v2, p3}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;ILorg/json/JSONArray;Z)V

    .line 1217
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_41
.end method
