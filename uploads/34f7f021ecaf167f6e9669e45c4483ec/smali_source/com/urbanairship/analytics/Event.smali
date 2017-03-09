.class public abstract Lcom/urbanairship/analytics/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field static final CARRIER_KEY:Ljava/lang/String; = "carrier"

.field static final CONNECTION_SUBTYPE_KEY:Ljava/lang/String; = "connection_subtype"

.field static final CONNECTION_TYPE_KEY:Ljava/lang/String; = "connection_type"

.field static final DATA_KEY:Ljava/lang/String; = "data"

.field static final DAYLIGHT_SAVINGS_KEY:Ljava/lang/String; = "daylight_savings"

.field static final EVENT_ID_KEY:Ljava/lang/String; = "event_id"

.field protected static final HIGH_PRIORITY:I = 0x2

.field static final LAST_METADATA_KEY:Ljava/lang/String; = "last_metadata"

.field static final LIB_VERSION_KEY:Ljava/lang/String; = "lib_version"

.field protected static final LOW_PRIORITY:I = 0x0

.field static final METADATA_KEY:Ljava/lang/String; = "metadata"

.field protected static final NORMAL_PRIORITY:I = 0x1

.field static final OS_VERSION_KEY:Ljava/lang/String; = "os_version"

.field static final PACKAGE_VERSION_KEY:Ljava/lang/String; = "package_version"

.field static final PUSH_ID_KEY:Ljava/lang/String; = "push_id"

.field static final SESSION_ID_KEY:Ljava/lang/String; = "session_id"

.field static final TIME_KEY:Ljava/lang/String; = "time"

.field static final TIME_ZONE_KEY:Ljava/lang/String; = "time_zone"

.field static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private final eventId:Ljava/lang/String;

.field private final time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/Event;-><init>(J)V

    .line 87
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "timeMS"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    .line 79
    invoke-static {p1, p2}, Lcom/urbanairship/analytics/Event;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    .line 80
    return-void
.end method

.method protected static millisecondsToSecondsString(J)Ljava/lang/String;
    .registers 10
    .param p0, "milliseconds"    # J

    .prologue
    .line 275
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-double v4, p0

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createEventPayload(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v1

    .line 114
    .local v1, "object":Lcom/urbanairship/json/JsonMap$Builder;
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->getEventData()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 117
    .local v0, "data":Lcom/urbanairship/json/JsonMap;
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap$Builder;->putAll(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    const-string v3, "session_id"

    .line 119
    invoke-virtual {v2, v3, p1}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 122
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    const-string/jumbo v3, "time"

    iget-object v4, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    const-string v3, "data"

    .line 125
    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 127
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getCarrier()Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 235
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionSubType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 218
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_19

    .line 220
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 221
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    .line 222
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 225
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :goto_18
    return-object v2

    :cond_19
    const-string v2, ""

    goto :goto_18
.end method

.method public getConnectionType()Ljava/lang/String;
    .registers 7

    .prologue
    .line 177
    const/4 v2, -0x1

    .line 182
    .local v2, "type":I
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_19

    .line 184
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 185
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    .line 186
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 191
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_19
    sparse-switch v2, :sswitch_data_2a

    .line 202
    const-string v3, "none"

    .line 205
    .local v3, "typeString":Ljava/lang/String;
    :goto_1e
    return-object v3

    .line 193
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_1f
    const-string v3, "cell"

    .line 194
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_1e

    .line 196
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v3, "wifi"

    .line 197
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_1e

    .line 199
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v3, "wimax"

    .line 200
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_1e

    .line 191
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_22
        0x6 -> :sswitch_26
    .end sparse-switch
.end method

.method protected abstract getEventData()Lcom/urbanairship/json/JsonMap;
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTypes()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "notificationTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    .line 154
    .local v1, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 155
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 156
    const-string v2, "sound"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1e
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 159
    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2a
    return-object v0
.end method

.method protected getPriority()I
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimezone()J
    .registers 5

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 245
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    return-wide v2
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method protected isDaylightSavingsTime()Z
    .registers 3

    .prologue
    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method
