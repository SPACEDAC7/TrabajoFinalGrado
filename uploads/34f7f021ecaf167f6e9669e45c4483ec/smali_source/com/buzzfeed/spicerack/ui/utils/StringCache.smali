.class public Lcom/buzzfeed/spicerack/ui/utils/StringCache;
.super Ljava/lang/Object;
.source "StringCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/spicerack/ui/utils/StringCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheItems:J

.field private cacheSize:J

.field private cacheTime:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxItems:J

.field private maxSize:J

.field private maxTimeToLive:J

.field private name:Ljava/lang/String;

.field private final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    .line 17
    iput-wide v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    .line 18
    iput-wide v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    .line 19
    iput-wide v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->name:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    .line 23
    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    .line 24
    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 26
    return-void
.end method

.method private getCacheTimeKeyFromValue(Ljava/lang/String;)Ljava/lang/Long;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "result":Ljava/lang/Long;
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 188
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .restart local v1    # "result":Ljava/lang/Long;
    goto :goto_13

    .line 192
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_32
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/buzzfeed/spicerack/ui/utils/StringCache;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getInstance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "TAG":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 31
    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    .line 38
    :goto_25
    return-object v2

    .line 34
    :cond_26
    new-instance v1, Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    invoke-direct {v1}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;-><init>()V

    .line 35
    .local v1, "objectCache":Lcom/buzzfeed/spicerack/ui/utils/StringCache;
    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->setName(Ljava/lang/String;)V

    .line 36
    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 38
    goto :goto_25
.end method

.method private logStats()V
    .registers 7

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".logStats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private reduceTimeToLive()V
    .registers 11

    .prologue
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".reduceTimeToLive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_7f

    move-result-object v1

    .line 155
    .local v1, "time":Ljava/lang/Long;
    :goto_20
    :try_start_20
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_7d

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_7d

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max cache time-to-live exceeded, reducing: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (max)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->removeOldest()V
    :try_end_7b
    .catch Ljava/util/NoSuchElementException; {:try_start_20 .. :try_end_7b} :catch_7c
    .catchall {:try_start_20 .. :try_end_7b} :catchall_7f

    goto :goto_20

    .line 159
    :catch_7c
    move-exception v2

    .line 160
    :cond_7d
    :try_start_7d
    monitor-exit v3

    .line 161
    return-void

    .line 160
    .end local v1    # "time":Ljava/lang/Long;
    :catchall_7f
    move-exception v2

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_7f

    throw v2
.end method

.method private removeOldest()V
    .registers 9

    .prologue
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".removeOldest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 177
    .local v2, "time":Ljava/lang/Long;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "key":Ljava/lang/String;
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    .line 179
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 180
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed oldest cache item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->name:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".clear"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "TAG":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_18
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 167
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 168
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    .line 169
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 170
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_44

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 170
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduceTimeToLive()V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduceTimeToLive()V

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItems()J
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduceTimeToLive()V

    .line 79
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    return-wide v0
.end method

.method public getMaxItems()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    return-wide v0
.end method

.method public getMaxSize()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    return-wide v0
.end method

.method public getMaxTimeToLive()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduceTimeToLive()V

    .line 84
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    return-wide v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".put"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 100
    :try_start_18
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 101
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 102
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->getCacheTimeKeyFromValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 104
    .local v1, "time":Ljava/lang/Long;
    if-eqz v1, :cond_43

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 106
    :goto_4b
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4b

    .line 107
    :cond_5c
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing cache item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_18 .. :try_end_83} :catchall_d3

    .line 120
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduce()V

    .line 121
    return-void

    .line 111
    .end local v1    # "time":Ljava/lang/Long;
    :cond_87
    :try_start_87
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 113
    .restart local v1    # "time":Ljava/lang/Long;
    :goto_94
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_94

    .line 114
    :cond_a5
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    .line 116
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added cache item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 119
    .end local v1    # "time":Ljava/lang/Long;
    :catchall_d3
    move-exception v2

    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_87 .. :try_end_d5} :catchall_d3

    throw v2
.end method

.method public reduce()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".reduce"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "TAG":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    :goto_1a
    :try_start_1a
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_59

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    iget-wide v6, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_59

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max cache items exceeded, reducing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (max)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->removeOldest()V

    goto :goto_1a

    .line 146
    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_1a .. :try_end_58} :catchall_56

    throw v1

    .line 142
    :cond_59
    :goto_59
    :try_start_59
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_95

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    iget-wide v6, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_95

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max cache size exceeded, reducing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (max)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->removeOldest()V

    goto :goto_59

    .line 146
    :cond_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_59 .. :try_end_96} :catchall_56

    .line 147
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->reduceTimeToLive()V

    .line 148
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    :try_start_18
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheItems:J

    .line 127
    iget-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheSize:J

    .line 128
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->getCacheTimeKeyFromValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 130
    .local v1, "time":Ljava/lang/Long;
    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->cacheTime:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_5a

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed cache item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    .end local v1    # "time":Ljava/lang/Long;
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public setMaxItems(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;
    .registers 4
    .param p1, "maxItems"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxItems:J

    .line 48
    return-object p0
.end method

.method public setMaxSize(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;
    .registers 4
    .param p1, "maxSize"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxSize:J

    .line 57
    return-object p0
.end method

.method public setMaxTimeToLive(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;
    .registers 4
    .param p1, "maxTimeToLive"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->maxTimeToLive:J

    .line 66
    return-object p0
.end method
