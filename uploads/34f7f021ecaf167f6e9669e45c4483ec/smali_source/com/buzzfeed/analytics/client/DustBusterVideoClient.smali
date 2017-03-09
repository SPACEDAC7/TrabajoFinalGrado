.class public Lcom/buzzfeed/analytics/client/DustBusterVideoClient;
.super Ljava/lang/Object;
.source "DustBusterVideoClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Reason;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Action;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$ContentType;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$ShareActivitySource;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$ShareButtonLocation;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$PlayerLocation;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Orientation;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Field;,
        Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DustBusterVideoClient"

.field private static final VIDEO:Ljava/lang/String; = "video"

.field private static sDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;


# instance fields
.field private final mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

.field private mIsLoggingEnabled:Z

.field private final mLogBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;)V
    .registers 3
    .param p1, "dustbuster"    # Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mLogBuffer:Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method

.method private buildFormattedLogString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
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
    .line 176
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mLogBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 177
    iget-object v1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mLogBuffer:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mLogBuffer:Ljava/lang/StringBuilder;

    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->formatValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 184
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_56
    iget-object v1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 188
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 189
    .end local p1    # "value":Ljava/lang/Object;
    :cond_e
    return-object p1
.end method

.method private getOrientationString(Z)Ljava/lang/String;
    .registers 3
    .param p1, "isLandscapeOrientation"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_5

    const-string v0, "landscape"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "portrait"

    goto :goto_4
.end method

.method public static setDustbuster(Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;)V
    .registers 1
    .param p0, "dustbuster"    # Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    sput-object p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->sDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    .line 45
    return-void
.end method


# virtual methods
.method public setLoggingEnabled(Z)V
    .registers 2
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mIsLoggingEnabled:Z

    .line 40
    return-void
.end method

.method public traceInstallAppEvent(Ljava/lang/String;)V
    .registers 4
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "install_app"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public traceShareEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "isLandscapeOrientation"    # Z
    .param p4, "playerLocation"    # Ljava/lang/String;
    .param p5, "positionInFeed"    # I
    .param p6, "currentPositionInVideo"    # J
    .param p8, "application"    # Ljava/lang/String;
    .param p9, "shareButtonLocation"    # Ljava/lang/String;
    .param p10, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "content_id"

    invoke-direct {p0, p2}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->createContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "content_type"

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "orientation"

    invoke-direct {p0, p3}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->getOrientationString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "player_location"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "position"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "video_ts"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "share_type"

    invoke-static {p8}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "share_button_location"

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "share_activity_source"

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "share_tap_outcome"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "share"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public traceShareShowEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "application"    # Ljava/lang/String;
    .param p3, "shareButtonLocation"    # Ljava/lang/String;
    .param p4, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "share_type"

    invoke-static {p2}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "share_button_location"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "share_activity_source"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "share_tap_outcome"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "share"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V
    .registers 14
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isLandscapeOrientation"    # Z
    .param p6, "playerLocation"    # Ljava/lang/String;
    .param p7, "positionInFeed"    # I
    .param p8, "currentPositionInVideo"    # J

    .prologue
    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 73
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "content_id"

    invoke-direct {p0, p2}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->createContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "content_type"

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "action"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "orientation"

    invoke-direct {p0, p5}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->getOrientationString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "player_location"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "position"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "video_ts"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "video_player"

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method protected trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
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
    .line 161
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->sDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    if-eqz v0, :cond_17

    .line 162
    sget-object v0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->sDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .line 167
    :goto_9
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_16

    .line 168
    const-string v0, "DustBusterVideoClient"

    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->buildFormattedLogString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_16
    return-void

    .line 164
    :cond_17
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->mDustbuster:Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;->trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    goto :goto_9
.end method
