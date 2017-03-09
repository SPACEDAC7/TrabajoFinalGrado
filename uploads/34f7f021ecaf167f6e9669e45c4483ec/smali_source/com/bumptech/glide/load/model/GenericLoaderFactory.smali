.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"


# static fields
.field private static final NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final modelClassToResourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 155
    .local v0, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    if-nez v0, :cond_14

    .line 156
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local v0    # "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_14
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    sget-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 151
    return-void
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 164
    .local v0, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    const/4 v1, 0x0

    .line 165
    .local v1, "result":Lcom/bumptech/glide/load/model/ModelLoader;
    if-eqz v0, :cond_11

    .line 166
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoader;
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 169
    .restart local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoader;
    :cond_11
    return-object v1
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v5, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 174
    .local v3, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    const/4 v4, 0x0

    .line 175
    .local v4, "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    if-eqz v3, :cond_11

    .line 176
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 179
    .restart local v4    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :cond_11
    if-nez v4, :cond_41

    .line 180
    iget-object v5, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 186
    .local v2, "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 187
    iget-object v5, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    .local v0, "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    if-eqz v0, :cond_1d

    .line 190
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 191
    .restart local v4    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    if-eqz v4, :cond_1d

    .line 199
    .end local v0    # "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_41
    return-object v4
.end method


# virtual methods
.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v1

    .line 127
    .local v1, "result":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    if-eqz v1, :cond_14

    .line 131
    sget-object v2, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_29

    move-result v2

    if-eqz v2, :cond_12

    .line 132
    const/4 v2, 0x0

    .line 146
    :goto_10
    monitor-exit p0

    return-object v2

    :cond_12
    move-object v2, v1

    .line 134
    goto :goto_10

    .line 138
    :cond_14
    :try_start_14
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 139
    .local v0, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    if-eqz v0, :cond_25

    .line 140
    iget-object v2, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v1

    .line 141
    invoke-direct {p0, p1, p2, v1}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    :goto_23
    move-object v2, v1

    .line 146
    goto :goto_10

    .line 144
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_29

    goto :goto_23

    .line 126
    .end local v0    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    .end local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v4, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 76
    .local v3, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    if-nez v3, :cond_1a

    .line 77
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .restart local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1a
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 83
    .local v2, "previous":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    if-eqz v2, :cond_3f

    .line 86
    iget-object v4, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 87
    .local v0, "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_41

    move-result v4

    if-eqz v4, :cond_2c

    .line 88
    const/4 v2, 0x0

    .line 94
    .end local v0    # "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3f
    monitor-exit p0

    return-object v2

    .line 73
    .end local v2    # "previous":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .end local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    :catchall_41
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    iget-object v2, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 54
    .local v0, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    if-eqz v0, :cond_17

    .line 55
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 57
    .restart local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :cond_17
    monitor-exit p0

    return-object v1

    .line 50
    .end local v0    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    .end local v1    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2
.end method
