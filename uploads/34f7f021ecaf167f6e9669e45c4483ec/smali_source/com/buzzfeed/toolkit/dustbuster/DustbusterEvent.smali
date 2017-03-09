.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
.super Ljava/lang/Object;
.source "DustbusterEvent.java"


# static fields
.field private static final JSON_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final JSON_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final JSON_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final JSON_SOURCE:Ljava/lang/String; = "source"

.field private static final JSON_TIME_STAMP:Ljava/lang/String; = "client_ts"

.field private static final JSON_TYPE:Ljava/lang/String; = "type"

.field private static final RESERVED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mTimestamp:J

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const-class v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "client_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "device_id"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->RESERVED_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->getMetadata()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "event_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mEventId:Ljava/lang/String;

    .line 72
    const-string v3, "client_ts"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mTimestamp:J

    .line 73
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mType:Ljava/lang/String;

    .line 74
    const-string v3, "source"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSource:Ljava/lang/String;

    .line 76
    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mDeviceId:Ljava/lang/String;

    .line 77
    const-string v3, "session_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSessionId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    .line 82
    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->RESERVED_KEYS:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 87
    iget-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 90
    .end local v1    # "key":Ljava/lang/String;
    :cond_68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSessionId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mDeviceId:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mType:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSource:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mTimestamp:J

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mEventId:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->validateMetadata()V

    .line 62
    return-void
.end method

.method public static getEventIdKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 208
    const-string v0, "event_id"

    return-object v0
.end method

.method private processObject(Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;Ljava/lang/String;Ljava/lang/Object;)Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    .registers 13
    .param p1, "base"    # Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 133
    instance-of v6, p3, Ljava/util/Map;

    if-eqz v6, :cond_2e

    move-object v4, p3

    .line 134
    check-cast v4, Ljava/util/Map;

    .line 135
    .local v4, "map":Ljava/util/Map;
    new-instance v3, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;-><init>()V

    .line 136
    .local v3, "jsonObject":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "mapKey":Ljava/lang/Object;
    move-object v6, v5

    .line 137
    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v6, v8}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->processObject(Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;Ljava/lang/String;Ljava/lang/Object;)Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;

    goto :goto_15

    .line 140
    .end local v5    # "mapKey":Ljava/lang/Object;
    :cond_2a
    invoke-interface {p1, p2, v3}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .end local v3    # "jsonObject":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    .end local v4    # "map":Ljava/util/Map;
    .end local p3    # "object":Ljava/lang/Object;
    :goto_2d
    return-object p1

    .line 142
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_2e
    instance-of v6, p3, Ljava/util/Collection;

    if-eqz v6, :cond_50

    .line 143
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;-><init>()V

    .local v0, "array":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    move-object v1, p3

    .line 144
    check-cast v1, Ljava/util/Collection;

    .line 145
    .local v1, "collection":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "item":Ljava/lang/Object;
    invoke-direct {p0, v0, v8, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->processObject(Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;Ljava/lang/String;Ljava/lang/Object;)Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;

    goto :goto_3e

    .line 149
    .end local v2    # "item":Ljava/lang/Object;
    :cond_4c
    invoke-interface {p1, p2, v0}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .line 151
    .end local v0    # "array":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    .end local v1    # "collection":Ljava/util/Collection;
    :cond_50
    instance-of v6, p3, [Ljava/lang/Object;

    if-eqz v6, :cond_6e

    .line 152
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;-><init>()V

    .line 153
    .restart local v0    # "array":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "object":Ljava/lang/Object;
    move-object v1, p3

    check-cast v1, [Ljava/lang/Object;

    .line 154
    .local v1, "collection":[Ljava/lang/Object;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_60
    if-ge v6, v7, :cond_6a

    aget-object v2, v1, v6

    .line 155
    .restart local v2    # "item":Ljava/lang/Object;
    invoke-direct {p0, v0, v8, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->processObject(Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;Ljava/lang/String;Ljava/lang/Object;)Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 158
    .end local v2    # "item":Ljava/lang/Object;
    :cond_6a
    invoke-interface {p1, p2, v0}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .line 161
    .end local v0    # "array":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    .end local v1    # "collection":[Ljava/lang/Object;
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_6e
    if-eqz p3, :cond_74

    .end local p3    # "object":Ljava/lang/Object;
    :goto_70
    invoke-interface {p1, p2, p3}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .restart local p3    # "object":Ljava/lang/Object;
    :cond_74
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_70
.end method

.method private validateMetadata()V
    .registers 5

    .prologue
    .line 212
    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 219
    :cond_c
    return-void

    .line 214
    :cond_d
    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->RESERVED_KEYS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in metadata because it is already being used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mTimestamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJsonObject(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Z)Ljava/lang/String;
    .registers 3
    .param p1, "includeEventId"    # Z

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJsonObject(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJsonObject(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toJsonObject(Z)Lorg/json/JSONObject;
    .registers 10
    .param p1, "includeEventId"    # Z

    .prologue
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".toJsonObject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonObject;-><init>()V

    .line 106
    .local v2, "jsonObject":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    if-eqz p1, :cond_23

    .line 107
    :try_start_1c
    const-string v5, "event_id"

    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mEventId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_23
    const-string v5, "client_ts"

    iget-wide v6, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string/jumbo v5, "type"

    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mType:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v5, "source"

    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSource:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v6, "device_id"

    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mDeviceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_93

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_49
    invoke-interface {v2, v6, v5}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v6, "session_id"

    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSessionId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_96

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_58
    invoke-interface {v2, v6, v5}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_99

    .line 118
    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mMetadata:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v3, v4}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->processObject(Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;Ljava/lang/String;Ljava/lang/Object;)Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_8a} :catch_8b

    goto :goto_75

    .line 126
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_8b
    move-exception v1

    .line 127
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "Error writing JSON"

    invoke-static {v0, v5, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v2, 0x0

    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    :goto_92
    return-object v2

    .line 114
    .restart local v2    # "jsonObject":Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;
    :cond_93
    :try_start_93
    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mDeviceId:Ljava/lang/String;

    goto :goto_49

    .line 115
    :cond_96
    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->mSessionId:Ljava/lang/String;

    goto :goto_58

    .line 124
    :cond_99
    check-cast v2, Lorg/json/JSONObject;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_9b} :catch_8b

    goto :goto_92
.end method
