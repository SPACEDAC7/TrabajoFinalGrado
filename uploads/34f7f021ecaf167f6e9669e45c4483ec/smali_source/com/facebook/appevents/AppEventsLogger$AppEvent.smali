.class Lcom/facebook/appevents/AppEventsLogger$AppEvent;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "valueToSum"    # Ljava/lang/Double;
    .param p4, "parameters"    # Landroid/os/Bundle;
    .param p5, "isImplicitlyLogged"    # Z

    .prologue
    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    :try_start_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1311
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    .line 1312
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1313
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1315
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "_eventName"

    move-object/from16 v0, p2

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1316
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1317
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "_ui"

    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    if-eqz p3, :cond_46

    .line 1320
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "_valueToSum"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1323
    :cond_46
    iget-boolean v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    if-eqz v7, :cond_53

    .line 1324
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "_implicitlyLogged"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    :cond_53
    if-eqz p4, :cond_c9

    .line 1328
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1330
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1333
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_a7

    instance-of v7, v6, Ljava/lang/Number;

    if-nez v7, :cond_a7

    .line 1334
    new-instance v7, Lcom/facebook/FacebookException;

    const-string v8, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8f} :catch_8f
    .catch Lcom/facebook/FacebookException; {:try_start_3 .. :try_end_8f} :catch_b1

    .line 1351
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_8f
    move-exception v4

    .line 1354
    .local v4, "jsonException":Lorg/json/JSONException;
    sget-object v7, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "AppEvents"

    const-string v9, "JSON encoding for app event failed: \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1356
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1364
    .end local v4    # "jsonException":Lorg/json/JSONException;
    :cond_a6
    :goto_a6
    return-void

    .line 1343
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_a7
    :try_start_a7
    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_b0} :catch_8f
    .catch Lcom/facebook/FacebookException; {:try_start_a7 .. :try_end_b0} :catch_b1

    goto :goto_5d

    .line 1358
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_b1
    move-exception v2

    .line 1360
    .local v2, "e":Lcom/facebook/FacebookException;
    sget-object v7, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "AppEvents"

    const-string v9, "Invalid app event name or parameter:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    goto :goto_a6

    .line 1347
    .end local v2    # "e":Lcom/facebook/FacebookException;
    :cond_c9
    :try_start_c9
    iget-boolean v7, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    if-nez v7, :cond_a6

    .line 1348
    sget-object v7, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "AppEvents"

    const-string v9, "Created app event \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_e2} :catch_8f
    .catch Lcom/facebook/FacebookException; {:try_start_c9 .. :try_end_e2} :catch_b1

    goto :goto_a6
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1372
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1373
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/facebook/appevents/AppEventsLogger$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private validateIdentifier(Ljava/lang/String;)V
    .registers 12
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1388
    const-string v2, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 1390
    .local v2, "regex":Ljava/lang/String;
    const/16 v0, 0x28

    .line 1391
    .local v0, "MAX_IDENTIFIER_LENGTH":I
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_33

    .line 1394
    :cond_16
    if-nez p1, :cond_1a

    .line 1395
    const-string p1, "<None Provided>"

    .line 1397
    :cond_1a
    new-instance v3, Lcom/facebook/FacebookException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Identifier \'%s\' must be less than %d characters"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1406
    :cond_33
    const/4 v1, 0x0

    .line 1407
    .local v1, "alreadyValidated":Z
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 1408
    :try_start_37
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1409
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_52

    .line 1411
    if-nez v1, :cond_51

    .line 1412
    const-string v3, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1413
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 1414
    :try_start_4b
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1415
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_55

    .line 1427
    :cond_51
    return-void

    .line 1409
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v3

    .line 1415
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v3

    .line 1417
    :cond_58
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1445
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V

    return-object v0
.end method


# virtual methods
.method public getIsImplicit()Z
    .registers 2

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1450
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
