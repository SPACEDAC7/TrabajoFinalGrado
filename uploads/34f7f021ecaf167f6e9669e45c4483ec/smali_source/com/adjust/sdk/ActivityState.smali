.class public Lcom/adjust/sdk/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static ORDER_ID_MAXCOUNT:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7d728a246d4bab64L


# instance fields
.field protected adid:Ljava/lang/String;

.field protected askingAttribution:Z

.field protected enabled:Z

.field protected eventCount:I

.field protected lastActivity:J

.field protected lastInterval:J

.field private transient logger:Lcom/adjust/sdk/ILogger;

.field protected orderIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pushToken:Ljava/lang/String;

.field protected sessionCount:I

.field protected sessionLength:J

.field protected subsessionCount:I

.field protected timeSpent:J

.field protected updatePackages:Z

.field protected uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0xa

    .line 25
    sput v5, Lcom/adjust/sdk/ActivityState;->ORDER_ID_MAXCOUNT:I

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "uuid"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "enabled"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "askingAttribution"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "eventCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "sessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "subsessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "sessionLength"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "timeSpent"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lastActivity"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lastInterval"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "updatePackages"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "orderIds"

    const-class v4, Ljava/util/LinkedList;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pushToken"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "adid"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityState;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->logger:Lcom/adjust/sdk/ILogger;

    .line 71
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 73
    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 75
    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 76
    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 78
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 79
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 80
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 81
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 82
    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->updatePackages:Z

    .line 83
    iput-object v4, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 84
    iput-object v4, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 85
    iput-object v4, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 168
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "eventCount"

    invoke-static {v0, v1, v4}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 169
    const-string v1, "sessionCount"

    invoke-static {v0, v1, v4}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 170
    const-string/jumbo v1, "subsessionCount"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 171
    const-string v1, "sessionLength"

    invoke-static {v0, v1, v6, v7}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 172
    const-string/jumbo v1, "timeSpent"

    invoke-static {v0, v1, v6, v7}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 173
    const-string v1, "lastActivity"

    invoke-static {v0, v1, v6, v7}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 174
    const-string v1, "lastInterval"

    invoke-static {v0, v1, v6, v7}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 177
    const-string/jumbo v1, "uuid"

    invoke-static {v0, v1, v5}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 178
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 179
    const-string v1, "askingAttribution"

    invoke-static {v0, v1, v4}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 181
    const-string/jumbo v1, "updatePackages"

    invoke-static {v0, v1, v4}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->updatePackages:Z

    .line 183
    const-string v1, "orderIds"

    invoke-static {v0, v1, v5}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 185
    const-string v1, "pushToken"

    invoke-static {v0, v1, v5}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 187
    const-string v1, "adid"

    invoke-static {v0, v1, v5}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    if-nez v1, :cond_8a

    .line 191
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 193
    :cond_8a
    return-void
.end method

.method private static stamp(J)Ljava/lang/String;
    .registers 8
    .param p0, "dateMillis"    # J

    .prologue
    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 201
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xb

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0xd

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 197
    return-void
.end method


# virtual methods
.method protected addOrderId(Ljava/lang/String;)V
    .registers 4
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    .line 101
    :cond_b
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/adjust/sdk/ActivityState;->ORDER_ID_MAXCOUNT:I

    if-lt v0, v1, :cond_1a

    .line 102
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 104
    :cond_1a
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p1, p0, :cond_5

    .line 143
    :cond_4
    :goto_4
    return v1

    .line 126
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 127
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/adjust/sdk/ActivityState;

    .line 130
    .local v0, "otherActivityState":Lcom/adjust/sdk/ActivityState;
    iget-object v3, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    move v1, v2

    goto :goto_4

    .line 131
    :cond_24
    iget-boolean v3, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_38

    move v1, v2

    goto :goto_4

    .line 132
    :cond_38
    iget-boolean v3, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_4c

    move v1, v2

    goto :goto_4

    .line 133
    :cond_4c
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_60

    move v1, v2

    goto :goto_4

    .line 134
    :cond_60
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_74

    move v1, v2

    goto :goto_4

    .line 135
    :cond_74
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_89

    move v1, v2

    goto/16 :goto_4

    .line 136
    :cond_89
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_9e

    move v1, v2

    goto/16 :goto_4

    .line 137
    :cond_9e
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_b3

    move v1, v2

    goto/16 :goto_4

    .line 138
    :cond_b3
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_c8

    move v1, v2

    goto/16 :goto_4

    .line 139
    :cond_c8
    iget-boolean v3, p0, Lcom/adjust/sdk/ActivityState;->updatePackages:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/adjust/sdk/ActivityState;->updatePackages:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_dd

    move v1, v2

    goto/16 :goto_4

    .line 140
    :cond_dd
    iget-object v3, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ea

    move v1, v2

    goto/16 :goto_4

    .line 141
    :cond_ea
    iget-object v3, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f7

    move v1, v2

    goto/16 :goto_4

    .line 142
    :cond_f7
    iget-object v3, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto/16 :goto_4
.end method

.method protected findOrderId(Ljava/lang/String;)Z
    .registers 3
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    if-nez v0, :cond_6

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 148
    const/16 v0, 0x11

    .line 149
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 150
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v2

    add-int v0, v1, v2

    .line 151
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v2

    add-int v0, v1, v2

    .line 152
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int v0, v1, v2

    .line 153
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int v0, v1, v2

    .line 154
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int v0, v1, v2

    .line 155
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 156
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 157
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 158
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->updatePackages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v2

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->orderIds:Ljava/util/LinkedList;

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 161
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 162
    return v0
.end method

.method protected resetSessionAttributes(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 90
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 91
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 92
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const-wide v6, 0x408f400000000000L

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 120
    invoke-static {v4, v5}, Lcom/adjust/sdk/ActivityState;->stamp(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 116
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
