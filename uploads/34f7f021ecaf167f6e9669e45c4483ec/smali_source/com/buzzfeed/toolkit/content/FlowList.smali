.class public Lcom/buzzfeed/toolkit/content/FlowList;
.super Ljava/lang/Object;
.source "FlowList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/buzzfeed/toolkit/content/FlowItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    .line 27
    if-eqz p1, :cond_2f

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 29
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_1f

    .line 32
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_2f
    return-void
.end method

.method private getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/Content;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 10
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 40
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le p1, v4, :cond_14

    :cond_b
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v4

    monitor-exit p0

    throw v4

    .line 41
    :cond_14
    :try_start_14
    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43
    .local v0, "existing":Ljava/lang/Integer;
    if-nez v0, :cond_6e

    .line 44
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_65

    .line 46
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 48
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, p1, :cond_3b

    .line 49
    iget-object v5, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 53
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_65
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_14 .. :try_end_6e} :catchall_11

    .line 55
    :cond_6e
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    check-cast p2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method

.method public add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 3
    .param p1, "object"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 18
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_14

    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 66
    :cond_14
    :try_start_14
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 67
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 68
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_11

    move-result v3

    if-ge v2, v3, :cond_18

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 70
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_32
    const/4 v1, 0x1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 59
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 58
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1

    .line 61
    :cond_18
    const/4 v1, 0x1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsContent(Lcom/buzzfeed/toolkit/content/Content;)Z
    .registers 4
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/Content;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized copy()Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 5

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 102
    .local v0, "copyList":Lcom/buzzfeed/toolkit/content/FlowList;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 103
    .local v1, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_c

    .line 101
    .end local v0    # "copyList":Lcom/buzzfeed/toolkit/content/FlowList;
    .end local v1    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 105
    .restart local v0    # "copyList":Lcom/buzzfeed/toolkit/content/FlowList;
    :cond_1f
    monitor-exit p0

    return-object v0
.end method

.method public get(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 5
    .param p1, "location"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :try_start_1
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    move-object v1, v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_c

    .line 114
    :goto_b
    return-object v1

    .line 112
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->get(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    return-object v0
.end method

.method protected getId(Lcom/buzzfeed/toolkit/content/Content;)Ljava/lang/String;
    .registers 3
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 255
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/Content;->getFlowId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getLocationForContent(Lcom/buzzfeed/toolkit/content/Content;)I
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/Content;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    .local v0, "location":Ljava/lang/Integer;
    if-nez v0, :cond_10

    const/4 v1, -0x1

    .line 97
    :goto_f
    return v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f
.end method

.method public getLocationForId(Ljava/lang/String;)I
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 8
    .param p1, "location"    # I

    .prologue
    .line 146
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_14

    :cond_b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v3

    monitor-exit p0

    throw v3

    .line 147
    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 148
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_66

    .line 151
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 153
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, p1, :cond_3c

    .line 154
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_14 .. :try_end_65} :catchall_11

    goto :goto_3c

    .line 158
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_66
    monitor-exit p0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->remove(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
    monitor-enter p0

    const/4 v2, 0x0

    .line 163
    .local v2, "result":Z
    :try_start_2
    instance-of v3, p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    if-eqz v3, :cond_1e

    .line 164
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 166
    .local v1, "location":Ljava/lang/Integer;
    if-eqz v1, :cond_1e

    .line 167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/content/FlowList;->remove(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_20

    .line 168
    const/4 v2, 0x1

    .line 171
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "location":Ljava/lang/Integer;
    :cond_1e
    monitor-exit p0

    return v2

    .line 162
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 176
    .local v1, "result":Z
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1a

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    .line 179
    .end local v0    # "object":Ljava/lang/Object;
    :cond_18
    monitor-exit p0

    return v1

    .line 175
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    const/4 v2, 0x0

    .line 184
    .local v2, "result":Z
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_f
    if-ltz v0, :cond_27

    .line 186
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 190
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "index":I
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 191
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/toolkit/content/FlowList;->remove(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_42

    .line 192
    const/4 v2, 0x1

    .line 193
    goto :goto_2b

    .line 194
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_40
    monitor-exit p0

    return v2

    .line 183
    .end local v1    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(ILcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 9
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 198
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_14

    :cond_b
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v4

    monitor-exit p0

    throw v4

    .line 199
    :cond_14
    :try_start_14
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 200
    .local v2, "oldFlowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "oldId":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    .local v0, "existing":Ljava/lang/Integer;
    if-eqz v0, :cond_5d

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_48

    .line 205
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_11

    .line 217
    :goto_46
    monitor-exit p0

    return-object v2

    .line 208
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/toolkit/content/FlowList;->remove(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_59

    if-lez p1, :cond_59

    add-int/lit8 p1, p1, -0x1

    .line 210
    :cond_59
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->set(ILcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/FlowItem;

    goto :goto_46

    .line 213
    :cond_5d
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_11

    goto :goto_46
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 18
    check-cast p2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/content/FlowList;->set(ILcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 223
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 224
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/FlowList;->flowIdMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->getId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 226
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_27
    monitor-exit p0

    return-void

    .line 221
    .end local v1    # "i":I
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowItemList [list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/FlowList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
