.class public Lcom/buzzfeed/androidabframework/data/Variant;
.super Ljava/lang/Object;
.source "Variant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Variant;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_a

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public static variantListFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "variantListJsonArray"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_b

    .line 56
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v5, "variantListJsonArray parameter cannot be null"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "variantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/androidabframework/data/Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2d

    .line 60
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "variantName":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/androidabframework/data/Variant;

    invoke-direct {v1}, Lcom/buzzfeed/androidabframework/data/Variant;-><init>()V

    .line 62
    .local v1, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    invoke-direct {v1, v3}, Lcom/buzzfeed/androidabframework/data/Variant;->setName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Variant;

    .line 63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 65
    .end local v1    # "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    .end local v3    # "variantName":Ljava/lang/String;
    :cond_2d
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_5

    .line 77
    :cond_4
    :goto_4
    return v1

    .line 71
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/buzzfeed/androidabframework/data/Variant;

    .line 75
    .local v0, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 83
    .local v0, "result":I
    :goto_a
    return v0

    .line 82
    .end local v0    # "result":I
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variant{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Variant;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
