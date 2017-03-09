.class public Lcom/urbanairship/json/JsonMap$Builder;
.super Ljava/lang/Object;
.source "JsonMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/json/JsonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/json/JsonMap$Builder;->map:Ljava/util/Map;

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/json/JsonMap$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/urbanairship/json/JsonMap$1;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/urbanairship/json/JsonMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/urbanairship/json/JsonMap;
    .registers 3

    .prologue
    .line 351
    new-instance v0, Lcom/urbanairship/json/JsonMap;

    iget-object v1, p0, Lcom/urbanairship/json/JsonMap$Builder;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;C)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # C

    .prologue
    .line 342
    invoke-static {p2}, Lcom/urbanairship/json/JsonValue;->wrap(C)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # D

    .prologue
    .line 331
    invoke-static {p2, p3}, Lcom/urbanairship/json/JsonValue;->wrap(D)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 309
    invoke-static {p2}, Lcom/urbanairship/json/JsonValue;->wrap(I)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 320
    invoke-static {p2, p3}, Lcom/urbanairship/json/JsonValue;->wrap(J)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/urbanairship/json/JsonSerializable;

    .prologue
    .line 251
    if-eqz p2, :cond_c

    invoke-interface {p2}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 252
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap$Builder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_11
    return-object p0

    .line 254
    :cond_12
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap$Builder;->map:Ljava/util/Map;

    invoke-interface {p2}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 282
    invoke-static {p2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 287
    :goto_d
    return-object p0

    .line 284
    :cond_e
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap$Builder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public put(Ljava/lang/String;Z)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 298
    invoke-static {p2}, Lcom/urbanairship/json/JsonValue;->wrap(Z)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 6
    .param p1, "map"    # Lcom/urbanairship/json/JsonMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/json/JsonSerializable;

    invoke-virtual {p0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    goto :goto_8

    .line 240
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_24
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 269
    invoke-static {p2}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 270
    return-object p0
.end method
