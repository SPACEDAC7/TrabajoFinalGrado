.class public Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
.super Ljava/lang/Object;
.source "Dustbuster.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/dustbuster/DustbusterInterface;


# static fields
.field public static final API_URL_PRODUCTION:Ljava/lang/String; = "https://pixiedust.buzzfeed.com/events"

.field public static final API_URL_STAGING:Ljava/lang/String; = "https://pixiedust-stage.buzzfeed.com/events"

.field private static final KEY_SESSION:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuildEnvironment:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

.field private final mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

.field private mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

.field private mSessionId:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;)V
    .registers 8
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "buildEnvironment"    # Ljava/lang/String;
    .param p4, "doorbell"    # Lcom/buzzfeed/toolkit/doorbell/Doorbell;
    .param p5, "dustbusterLauncher"    # Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass valid (non empty) app name to dustbuster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass in valid (non empty) build environment to dustbuster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1f
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSource:Ljava/lang/String;

    .line 40
    invoke-virtual {p4}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDeviceId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mBuildEnvironment:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    .line 44
    iput-object p5, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    .line 45
    iput-object p4, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    .line 46
    return-void
.end method

.method private generateNewSession()V
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->newUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private static newUuid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 159
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processEventCollection(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->processEventCollection(Lorg/json/JSONArray;)V

    .line 148
    return-void
.end method

.method private processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V

    .line 144
    return-void
.end method

.method private refreshServicePrefs()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->refreshServicePrefs()V

    .line 152
    return-void
.end method


# virtual methods
.method public convertCollectionToEvents(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;)Ljava/util/List;
    .registers 10
    .param p1, "collection"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;>;"
    iget-object v4, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mBuildEnvironment:Ljava/lang/String;

    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserPoundIdentifier()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getBaseMetadataForEvent(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 165
    .local v0, "allMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 166
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;

    .line 167
    .local v1, "currentEvent":Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->getMetadata()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 168
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->getMetadata()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_35
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->setMetadata(Ljava/util/Map;)V

    .line 171
    new-instance v4, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    iget-object v5, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDeviceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSource:Ljava/lang/String;

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;-><init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 174
    .end local v1    # "currentEvent":Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;
    :cond_49
    return-object v2
.end method

.method public forceProcessEvents()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDustbusterLauncher:Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->forceProcessEvents()V

    .line 140
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBatchSize()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->getMaxBatchSize()I

    move-result v0

    return v0
.end method

.method public getMinBatchSize()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->getMinBatchSize()I

    move-result v0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionStarted()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setMaxBatchSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 54
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max batch size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->setMaxBatchSize(I)V

    .line 59
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->refreshServicePrefs()V

    .line 60
    return-void
.end method

.method public setMinBatchSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mPrefs:Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->setMinBatchSize(I)V

    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->refreshServicePrefs()V

    .line 51
    return-void
.end method

.method public startNewSession()Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getMetadataForSessionEvent()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->startNewSessionWithMetadata(Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    move-result-object v0

    return-object v0
.end method

.method public startNewSessionWithMetadata(Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->generateNewSession()V

    .line 131
    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getMetadataForSessionEvent()Ljava/util/Map;

    move-result-object v0

    .line 132
    .local v0, "sessionMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_c

    .line 133
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    :cond_c
    const-string v1, "session"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->trackEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    move-result-object v1

    return-object v1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .registers 11
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
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 98
    sget-object v1, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->TAG:Ljava/lang/String;

    const-string v2, "Session not started yet. Event will not have a session id."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_b
    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mBuildEnvironment:Ljava/lang/String;

    iget-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDoorbell:Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserPoundIdentifier()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getBaseMetadataForEvent(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, "baseMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1e

    .line 103
    invoke-interface {v5, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    :cond_1e
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSource:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    .local v0, "event":Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V

    .line 108
    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "useIdentifyingData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    move-result-object v0

    return-object v0
.end method

.method public trackEvents(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;)Ljava/util/List;
    .registers 5
    .param p1, "eventCollection"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->mSessionId:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 113
    sget-object v1, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->TAG:Ljava/lang/String;

    const-string v2, "Session not started yet. Event will not have a session id."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->convertCollectionToEvents(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;>;"
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->getJsonArrayForCollection(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->processEventCollection(Lorg/json/JSONArray;)V

    .line 118
    return-object v0
.end method
