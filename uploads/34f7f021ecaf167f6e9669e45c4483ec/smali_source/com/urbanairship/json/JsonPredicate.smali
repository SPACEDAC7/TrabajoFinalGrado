.class public Lcom/urbanairship/json/JsonPredicate;
.super Ljava/lang/Object;
.source "JsonPredicate.java"

# interfaces
.implements Lcom/urbanairship/Predicate;
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/json/JsonPredicate$Builder;,
        Lcom/urbanairship/json/JsonPredicate$PredicateType;
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
.field public static final AND_PREDICATE_TYPE:Ljava/lang/String; = "and"

.field public static final NOT_PREDICATE_TYPE:Ljava/lang/String; = "not"

.field public static final OR_PREDICATE_TYPE:Ljava/lang/String; = "or"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/Predicate",
            "<",
            "Lcom/urbanairship/json/JsonSerializable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/json/JsonPredicate$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/urbanairship/json/JsonPredicate$Builder;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    # getter for: Lcom/urbanairship/json/JsonPredicate$Builder;->items:Ljava/util/List;
    invoke-static {p1}, Lcom/urbanairship/json/JsonPredicate$Builder;->access$000(Lcom/urbanairship/json/JsonPredicate$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    .line 48
    # getter for: Lcom/urbanairship/json/JsonPredicate$Builder;->type:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/json/JsonPredicate$Builder;->access$100(Lcom/urbanairship/json/JsonPredicate$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/json/JsonPredicate$Builder;Lcom/urbanairship/json/JsonPredicate$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/json/JsonPredicate$Builder;
    .param p2, "x1"    # Lcom/urbanairship/json/JsonPredicate$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/urbanairship/json/JsonPredicate;-><init>(Lcom/urbanairship/json/JsonPredicate$Builder;)V

    return-void
.end method

.method private static getPredicateType(Lcom/urbanairship/json/JsonMap;)Ljava/lang/String;
    .registers 2
    .param p0, "jsonMap"    # Lcom/urbanairship/json/JsonMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    const-string v0, "and"

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    const-string v0, "and"

    .line 127
    :goto_a
    return-object v0

    .line 119
    :cond_b
    const-string v0, "or"

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 120
    const-string v0, "or"

    goto :goto_a

    .line 123
    :cond_16
    const-string v0, "not"

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 124
    const-string v0, "not"

    goto :goto_a

    .line 127
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static newBuilder()Lcom/urbanairship/json/JsonPredicate$Builder;
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/urbanairship/json/JsonPredicate$Builder;

    invoke-direct {v0}, Lcom/urbanairship/json/JsonPredicate$Builder;-><init>()V

    return-object v0
.end method

.method public static parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonPredicate;
    .registers 9
    .param p0, "jsonValue"    # Lcom/urbanairship/json/JsonValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 76
    :cond_12
    new-instance v5, Lcom/urbanairship/json/JsonException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse empty JsonValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_2b
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v3

    .line 81
    .local v3, "map":Lcom/urbanairship/json/JsonMap;
    invoke-static {}, Lcom/urbanairship/json/JsonPredicate;->newBuilder()Lcom/urbanairship/json/JsonPredicate$Builder;

    move-result-object v0

    .line 83
    .local v0, "builder":Lcom/urbanairship/json/JsonPredicate$Builder;
    invoke-static {v3}, Lcom/urbanairship/json/JsonPredicate;->getPredicateType(Lcom/urbanairship/json/JsonMap;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_74

    .line 86
    invoke-virtual {v0, v4}, Lcom/urbanairship/json/JsonPredicate$Builder;->setPredicateType(Ljava/lang/String;)Lcom/urbanairship/json/JsonPredicate$Builder;

    .line 87
    invoke-virtual {v3, v4}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->optList()Lcom/urbanairship/json/JsonList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    .line 88
    .local v1, "child":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 93
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/json/JsonPredicate;->getPredicateType(Lcom/urbanairship/json/JsonMap;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6c

    .line 94
    invoke-static {v1}, Lcom/urbanairship/json/JsonPredicate;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonPredicate;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/JsonPredicate$Builder;->addPredicate(Lcom/urbanairship/json/JsonPredicate;)Lcom/urbanairship/json/JsonPredicate$Builder;

    goto :goto_48

    .line 99
    :cond_6c
    invoke-static {v1}, Lcom/urbanairship/json/JsonMatcher;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonMatcher;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/JsonPredicate$Builder;->addMatcher(Lcom/urbanairship/json/JsonMatcher;)Lcom/urbanairship/json/JsonPredicate$Builder;

    goto :goto_48

    .line 102
    .end local v1    # "child":Lcom/urbanairship/json/JsonValue;
    :cond_74
    invoke-static {p0}, Lcom/urbanairship/json/JsonMatcher;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonMatcher;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/json/JsonPredicate$Builder;->addMatcher(Lcom/urbanairship/json/JsonMatcher;)Lcom/urbanairship/json/JsonPredicate$Builder;

    .line 106
    :cond_7b
    :try_start_7b
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonPredicate$Builder;->build()Lcom/urbanairship/json/JsonPredicate;
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_7e} :catch_80

    move-result-object v5

    return-object v5

    .line 107
    :catch_80
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/urbanairship/json/JsonException;

    const-string v6, "Unable to parse JsonPredicate."

    invoke-direct {v5, v6, v2}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public apply(Lcom/urbanairship/json/JsonSerializable;)Z
    .registers 8
    .param p1, "value"    # Lcom/urbanairship/json/JsonSerializable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 157
    :cond_a
    :goto_a
    return v2

    .line 136
    :cond_b
    iget-object v4, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_7e

    :cond_15
    :goto_15
    packed-switch v1, :pswitch_data_8c

    .line 151
    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/Predicate;

    .line 152
    .local v0, "item":Lcom/urbanairship/Predicate;, "Lcom/urbanairship/Predicate<Lcom/urbanairship/json/JsonSerializable;>;"
    invoke-interface {v0, p1}, Lcom/urbanairship/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_a

    .line 136
    .end local v0    # "item":Lcom/urbanairship/Predicate;, "Lcom/urbanairship/Predicate<Lcom/urbanairship/json/JsonSerializable;>;"
    :sswitch_31
    const-string v5, "not"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v1, v3

    goto :goto_15

    :sswitch_3b
    const-string v5, "and"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v1, v2

    goto :goto_15

    :sswitch_45
    const-string v5, "or"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v1, 0x2

    goto :goto_15

    .line 138
    :pswitch_4f
    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/Predicate;

    invoke-interface {v1, p1}, Lcom/urbanairship/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    move v1, v2

    :goto_5e
    move v2, v1

    goto :goto_a

    :cond_60
    move v1, v3

    goto :goto_5e

    .line 141
    :pswitch_62
    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/Predicate;

    .line 142
    .restart local v0    # "item":Lcom/urbanairship/Predicate;, "Lcom/urbanairship/Predicate<Lcom/urbanairship/json/JsonSerializable;>;"
    invoke-interface {v0, p1}, Lcom/urbanairship/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    move v2, v3

    .line 143
    goto :goto_a

    .end local v0    # "item":Lcom/urbanairship/Predicate;, "Lcom/urbanairship/Predicate<Lcom/urbanairship/json/JsonSerializable;>;"
    :cond_7c
    move v2, v3

    .line 157
    goto :goto_a

    .line 136
    :sswitch_data_7e
    .sparse-switch
        0xde3 -> :sswitch_45
        0x179d7 -> :sswitch_3b
        0x1aad3 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_62
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 32
    check-cast p1, Lcom/urbanairship/json/JsonSerializable;

    invoke-virtual {p0, p1}, Lcom/urbanairship/json/JsonPredicate;->apply(Lcom/urbanairship/json/JsonSerializable;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    if-ne p0, p1, :cond_5

    .line 237
    :cond_4
    :goto_4
    return v1

    .line 228
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 229
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/urbanairship/json/JsonPredicate;

    .line 234
    .local v0, "that":Lcom/urbanairship/json/JsonPredicate;
    iget-object v3, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 235
    goto :goto_4

    .line 234
    :cond_26
    iget-object v3, v0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    if-nez v3, :cond_24

    .line 237
    :cond_2a
    iget-object v3, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    if-eqz v3, :cond_37

    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_37
    iget-object v3, v0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v2, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 244
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 245
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 243
    goto :goto_b
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 4

    .prologue
    .line 62
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/json/JsonPredicate;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/json/JsonPredicate;->items:Ljava/util/List;

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 62
    return-object v0
.end method
