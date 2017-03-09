.class public Lcom/urbanairship/json/JsonList;
.super Ljava/lang/Object;
.source "JsonList.java"

# interfaces
.implements Lcom/urbanairship/json/JsonSerializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/urbanairship/json/JsonValue;",
        ">;",
        "Lcom/urbanairship/json/JsonSerializable;"
    }
.end annotation


# static fields
.field static final EMPTY_LIST:Lcom/urbanairship/json/JsonList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcom/urbanairship/json/JsonList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/urbanairship/json/JsonList;->EMPTY_LIST:Lcom/urbanairship/json/JsonList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    iput-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    .line 32
    return-void

    .line 31
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a
.end method


# virtual methods
.method public contains(Lcom/urbanairship/json/JsonValue;)Z
    .registers 3
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 121
    if-ne p1, p0, :cond_4

    .line 122
    const/4 v0, 0x1

    .line 129
    .end local p1    # "object":Ljava/lang/Object;
    :goto_3
    return v0

    .line 125
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_13

    .line 126
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    check-cast p1, Lcom/urbanairship/json/JsonList;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 129
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get(I)Lcom/urbanairship/json/JsonValue;
    .registers 3
    .param p1, "location"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/urbanairship/json/JsonValue;)I
    .registers 3
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

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
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Lcom/urbanairship/json/JsonValue;)I
    .registers 3
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 2

    .prologue
    .line 172
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 147
    .local v1, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v1}, Lcom/urbanairship/json/JsonList;->write(Lorg/json/JSONStringer;)V

    .line 148
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 152
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :goto_c
    return-object v2

    .line 149
    :catch_d
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JsonList - Failed to create JSON String."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    const-string v2, ""

    goto :goto_c
.end method

.method write(Lorg/json/JSONStringer;)V
    .registers 5
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 164
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 165
    .local v0, "actionValue":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->write(Lorg/json/JSONStringer;)V

    goto :goto_7

    .line 167
    .end local v0    # "actionValue":Lcom/urbanairship/json/JsonValue;
    :cond_17
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 168
    return-void
.end method
