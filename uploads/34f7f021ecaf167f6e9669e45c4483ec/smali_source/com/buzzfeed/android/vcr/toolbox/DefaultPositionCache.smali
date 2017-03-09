.class public Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;
.super Ljava/lang/Object;
.source "DefaultPositionCache.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/PositionCache;


# instance fields
.field private final mLruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxItemCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxItemCount"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I

    .line 28
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;

    iget v1, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I

    const v2, 0x3f333333

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;-><init>(Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;IFZ)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    .prologue
    .line 14
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I

    return v0
.end method


# virtual methods
.method public clearCache()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    return-void
.end method

.method getCachedItemCount()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getMaxItemCount()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I

    return v0
.end method

.method public getPosition(Ljava/lang/String;)J
    .registers 4
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_14
    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_14
.end method

.method public putPosition(Ljava/lang/String;J)V
    .registers 6
    .param p1, "contentUri"    # Ljava/lang/String;
    .param p2, "position"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public removePosition(Ljava/lang/String;)V
    .registers 3
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mLruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 69
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "DefaultPositionCache[maxSize=%d, itemCount=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->getCachedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
