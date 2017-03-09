.class public Lcom/urbanairship/json/JsonMatcher;
.super Ljava/lang/Object;
.source "JsonMatcher.java"

# interfaces
.implements Lcom/urbanairship/Predicate;
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/json/JsonMatcher$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/urbanairship/json/JsonSerializable;",
        "Lcom/urbanairship/Predicate",
        "<",
        "Lcom/urbanairship/json/JsonSerializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_KEY:Ljava/lang/String; = "key"

.field private static final SCOPE_KEY:Ljava/lang/String; = "scope"

.field private static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private final key:Ljava/lang/String;

.field private final scopeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Lcom/urbanairship/json/ValueMatcher;


# direct methods
.method private constructor <init>(Lcom/urbanairship/json/JsonMatcher$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/urbanairship/json/JsonMatcher$Builder;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/urbanairship/json/JsonMatcher$Builder;->access$000(Lcom/urbanairship/json/JsonMatcher$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/urbanairship/json/JsonMatcher$Builder;->access$100(Lcom/urbanairship/json/JsonMatcher$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    .line 26
    invoke-static {p1}, Lcom/urbanairship/json/JsonMatcher$Builder;->access$200(Lcom/urbanairship/json/JsonMatcher$Builder;)Lcom/urbanairship/json/ValueMatcher;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/urbanairship/json/ValueMatcher;->newIsPresentMatcher()Lcom/urbanairship/json/ValueMatcher;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    .line 27
    return-void

    .line 26
    :cond_1c
    invoke-static {p1}, Lcom/urbanairship/json/JsonMatcher$Builder;->access$200(Lcom/urbanairship/json/JsonMatcher$Builder;)Lcom/urbanairship/json/ValueMatcher;

    move-result-object v0

    goto :goto_19
.end method

.method synthetic constructor <init>(Lcom/urbanairship/json/JsonMatcher$Builder;Lcom/urbanairship/json/JsonMatcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/json/JsonMatcher$Builder;
    .param p2, "x1"    # Lcom/urbanairship/json/JsonMatcher$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/urbanairship/json/JsonMatcher;-><init>(Lcom/urbanairship/json/JsonMatcher$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/json/JsonMatcher$Builder;
    .registers 2

    .prologue
    .line 100
    new-instance v0, Lcom/urbanairship/json/JsonMatcher$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonMatcher$Builder;-><init>(Lcom/urbanairship/json/JsonMatcher$1;)V

    return-object v0
.end method

.method public static parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonMatcher;
    .registers 8
    .param p0, "jsonValue"    # Lcom/urbanairship/json/JsonValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 69
    :cond_12
    new-instance v4, Lcom/urbanairship/json/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse empty JsonValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_2b
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    .line 74
    .local v2, "map":Lcom/urbanairship/json/JsonMap;
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 75
    new-instance v4, Lcom/urbanairship/json/JsonException;

    const-string v5, "JsonMatcher must contain a value matcher."

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_40
    invoke-static {}, Lcom/urbanairship/json/JsonMatcher;->newBuilder()Lcom/urbanairship/json/JsonMatcher$Builder;

    move-result-object v4

    const-string v5, "key"

    .line 79
    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMatcher$Builder;->setKey(Ljava/lang/String;)Lcom/urbanairship/json/JsonMatcher$Builder;

    move-result-object v4

    const-string/jumbo v5, "value"

    .line 80
    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/json/ValueMatcher;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/ValueMatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMatcher$Builder;->setValueMatcher(Lcom/urbanairship/json/ValueMatcher;)Lcom/urbanairship/json/JsonMatcher$Builder;

    move-result-object v0

    .line 82
    .local v0, "builder":Lcom/urbanairship/json/JsonMatcher$Builder;
    const-string v4, "scope"

    invoke-virtual {v2, v4}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    .line 83
    .local v3, "scope":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 84
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/urbanairship/json/JsonMatcher$Builder;->setScope(Ljava/lang/String;)Lcom/urbanairship/json/JsonMatcher$Builder;

    .line 91
    :cond_75
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMatcher$Builder;->build()Lcom/urbanairship/json/JsonMatcher;

    move-result-object v4

    return-object v4

    .line 85
    :cond_7a
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 86
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->optList()Lcom/urbanairship/json/JsonList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonList;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    .line 87
    .local v1, "field":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/json/JsonMatcher$Builder;->setScope(Ljava/lang/String;)Lcom/urbanairship/json/JsonMatcher$Builder;

    goto :goto_8c
.end method


# virtual methods
.method public apply(Lcom/urbanairship/json/JsonSerializable;)Z
    .registers 6
    .param p1, "jsonSerializable"    # Lcom/urbanairship/json/JsonSerializable;

    .prologue
    .line 41
    if-nez p1, :cond_3d

    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 42
    .local v0, "jsonValue":Lcom/urbanairship/json/JsonValue;
    :goto_4
    if-nez v0, :cond_8

    .line 43
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 46
    :cond_8
    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 53
    .end local v1    # "scope":Ljava/lang/String;
    :cond_28
    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 54
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 57
    :cond_36
    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/ValueMatcher;->apply(Lcom/urbanairship/json/JsonSerializable;)Z

    move-result v2

    return v2

    .line 41
    .end local v0    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :cond_3d
    invoke-interface {p1}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    goto :goto_4
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 13
    check-cast p1, Lcom/urbanairship/json/JsonSerializable;

    invoke-virtual {p0, p1}, Lcom/urbanairship/json/JsonMatcher;->apply(Lcom/urbanairship/json/JsonSerializable;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 189
    :cond_5
    :goto_5
    return v2

    .line 177
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 181
    check-cast v0, Lcom/urbanairship/json/JsonMatcher;

    .line 183
    .local v0, "matcher":Lcom/urbanairship/json/JsonMatcher;
    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    :cond_23
    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    iget-object v4, v0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    :cond_31
    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    if-eqz v3, :cond_49

    iget-object v1, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    iget-object v2, v0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/ValueMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3d
    :goto_3d
    move v2, v1

    goto :goto_5

    .line 183
    :cond_3f
    iget-object v3, v0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    if-eqz v3, :cond_23

    goto :goto_5

    .line 186
    :cond_44
    iget-object v3, v0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    if-eqz v3, :cond_31

    goto :goto_5

    .line 189
    :cond_49
    iget-object v3, v0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    if-eqz v3, :cond_3d

    move v1, v2

    goto :goto_3d
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 196
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    invoke-virtual {v1}, Lcom/urbanairship/json/ValueMatcher;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 198
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 195
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 196
    goto :goto_17
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 4

    .prologue
    .line 31
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->key:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "scope"

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->scopeList:Ljava/util/List;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/urbanairship/json/JsonMatcher;->value:Lcom/urbanairship/json/ValueMatcher;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 31
    return-object v0
.end method
