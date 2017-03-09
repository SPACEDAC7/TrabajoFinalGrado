.class public Lcom/buzzfeed/androidabframework/data/Experiment;
.super Ljava/lang/Object;
.source "Experiment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EXPERIMENT_KEY_NAME:Ljava/lang/String; = "name"

.field private static final EXPERIMENT_KEY_VARIANTS:Ljava/lang/String; = "variants"

.field private static final serialVersionUID:J


# instance fields
.field private mId:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResolved:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedVariantId:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedVariantInitialBlockExecuted:Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedVariantName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTemporaryVariantName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVariantMap:Ljava/util/LinkedHashMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/Variant;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    .line 86
    return-void
.end method

.method private static experimentFromJson(Lorg/json/JSONObject;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 6
    .param p0, "experimentJsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p0, :cond_a

    .line 289
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "experimentJsonObject parameter cannot be null"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_a
    new-instance v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    invoke-direct {v0}, Lcom/buzzfeed/androidabframework/data/Experiment;-><init>()V

    .line 292
    .local v0, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/buzzfeed/androidabframework/data/Experiment;->setName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 293
    const-string/jumbo v3, "variants"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 294
    .local v2, "variantsJsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_28

    .line 295
    invoke-static {v2}, Lcom/buzzfeed/androidabframework/data/Variant;->variantListFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    .local v1, "variantList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Variant;>;"
    invoke-direct {v0, v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->setVariantList(Ljava/util/List;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 298
    .end local v1    # "variantList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Variant;>;"
    :cond_28
    return-object v0
.end method

.method public static experimentListFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "experimentListJsonArray"    # Lorg/json/JSONArray;
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
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p0, :cond_a

    .line 268
    new-instance v4, Lorg/json/JSONException;

    const-string v5, "experimentListJsonArray parameter cannot be null"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "experimentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_26

    .line 272
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 273
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/buzzfeed/androidabframework/data/Experiment;->experimentFromJson(Lorg/json/JSONObject;)Lcom/buzzfeed/androidabframework/data/Experiment;

    move-result-object v0

    .line 274
    .local v0, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 276
    .end local v0    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_26
    return-object v1
.end method

.method private setVariantList(Ljava/util/List;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Variant;",
            ">;)",
            "Lcom/buzzfeed/androidabframework/data/Experiment;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "variantList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Variant;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Variant;

    .line 136
    .local v0, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/Variant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 138
    .end local v0    # "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    :cond_21
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 401
    :cond_5
    :goto_5
    return v2

    .line 371
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 375
    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 377
    .local v0, "that":Lcom/buzzfeed/androidabframework/data/Experiment;
    iget-boolean v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    iget-boolean v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    if-ne v3, v4, :cond_5

    .line 380
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 383
    :cond_29
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    if-eqz v3, :cond_95

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 386
    :cond_37
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    :cond_45
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 392
    :cond_53
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 395
    :cond_61
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    :cond_6f
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 401
    :cond_7d
    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    :cond_8b
    move v1, v2

    :cond_8c
    :goto_8c
    move v2, v1

    goto/16 :goto_5

    .line 380
    :cond_8f
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    if-eqz v3, :cond_29

    goto/16 :goto_5

    .line 383
    :cond_95
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    if-eqz v3, :cond_37

    goto/16 :goto_5

    .line 386
    :cond_9b
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    if-eqz v3, :cond_45

    goto/16 :goto_5

    .line 389
    :cond_a1
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    if-eqz v3, :cond_53

    goto/16 :goto_5

    .line 392
    :cond_a7
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_61

    goto/16 :goto_5

    .line 395
    :cond_ad
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    if-eqz v3, :cond_6f

    goto/16 :goto_5

    .line 398
    :cond_b3
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    if-eqz v3, :cond_7d

    goto/16 :goto_5

    .line 401
    :cond_b9
    iget-object v3, v0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-nez v3, :cond_8b

    goto :goto_8c
.end method

.method public executeBlock(Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V
    .registers 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallbackBlock"    # Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
            ">;",
            "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "variantBlockMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    if-nez p1, :cond_b

    .line 342
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "variantBlockMap parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_b
    if-nez p2, :cond_15

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fallbackBlock parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_15
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "selectedVariantName":Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 350
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    .line 351
    .local v0, "selectedVariantBlock":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    if-eqz v0, :cond_34

    .line 353
    invoke-interface {v0, p0}, Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;->executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V

    .line 354
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/data/Experiment;->hasSelectedVariantInitialBlockExecuted()Z

    move-result v2

    if-nez v2, :cond_33

    .line 356
    invoke-interface {v0, p0}, Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;->initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V

    .line 357
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariantInitialBlockExecuted(Z)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 364
    .end local v0    # "selectedVariantBlock":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    :cond_33
    :goto_33
    return-void

    .line 363
    :cond_34
    invoke-interface {p2, p0}, Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;->executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V

    goto :goto_33
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResolved()Ljava/lang/Boolean;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSelectedVariantId()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    goto :goto_5
.end method

.method public getSelectedVariantName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    .line 160
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    goto :goto_6
.end method

.method public getTemporaryVariantName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Variant;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Variant;

    return-object v0
.end method

.method public getVariantList()Ljava/util/ArrayList;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasSelectedVariantInitialBlockExecuted()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    return v0
.end method

.method public hasTemporaryVariant()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasVariant(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 407
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 408
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 409
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 410
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v2

    :goto_41
    add-int v0, v3, v2

    .line 411
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4f
    add-int v0, v3, v2

    .line 412
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5d
    add-int v0, v3, v2

    .line 413
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    if-eqz v2, :cond_85

    const/4 v2, 0x1

    :goto_66
    add-int v0, v3, v2

    .line 414
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_74
    add-int v0, v2, v1

    .line 415
    return v0

    .end local v0    # "result":I
    :cond_77
    move v0, v1

    .line 406
    goto :goto_b

    .restart local v0    # "result":I
    :cond_79
    move v2, v1

    .line 407
    goto :goto_17

    :cond_7b
    move v2, v1

    .line 408
    goto :goto_25

    :cond_7d
    move v2, v1

    .line 409
    goto :goto_33

    :cond_7f
    move v2, v1

    .line 410
    goto :goto_41

    :cond_81
    move v2, v1

    .line 411
    goto :goto_4f

    :cond_83
    move v2, v1

    .line 412
    goto :goto_5d

    :cond_85
    move v2, v1

    .line 413
    goto :goto_66
.end method

.method public isSelectedVariant(Lcom/buzzfeed/androidabframework/data/Variant;)Z
    .registers 3
    .param p1, "variant"    # Lcom/buzzfeed/androidabframework/data/Variant;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Variant;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/androidabframework/data/Experiment;->isSelectedVariant(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelectedVariant(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 212
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method protected isSelectedVariantValid()Z
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setId(Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    .line 105
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setResolved(Ljava/lang/Boolean;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 2
    .param p1, "resolved"    # Ljava/lang/Boolean;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    .line 125
    return-object p0
.end method

.method public setSelectedVariant(Ljava/lang/String;Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 7
    .param p1, "selectedVariantName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selectedVariantId"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 189
    if-nez p1, :cond_10

    .line 190
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 191
    iput-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariantInitialBlockExecuted(Z)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 194
    :cond_d
    iput-object v3, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    .line 207
    :cond_f
    :goto_f
    return-object p0

    .line 196
    :cond_10
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Variant;

    .line 197
    .local v0, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    if-eqz v0, :cond_2e

    .line 198
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 199
    :cond_26
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    .line 201
    invoke-virtual {p0, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariantInitialBlockExecuted(Z)Lcom/buzzfeed/androidabframework/data/Experiment;

    goto :goto_f

    .line 204
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedVariantName parameter is not a valid variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setSelectedVariantInitialBlockExecuted(Z)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 2
    .param p1, "selectedVariantInitialBlockExecuted"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    .line 254
    return-object p0
.end method

.method public setTemporaryVariant(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 5
    .param p1, "temporaryVariantName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 234
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    .line 240
    :goto_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariantInitialBlockExecuted(Z)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 241
    return-object p0

    .line 235
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 236
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    goto :goto_d

    .line 238
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "temporaryVariantName parameter is not a valid variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVersion(Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 2
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    .line 115
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Experiment{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mResolved:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVariantMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mVariantMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectedVariant=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectedVariantId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectedVariantInitialBlockExecuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mSelectedVariantInitialBlockExecuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTemporaryVariant=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mTemporaryVariantName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWithExperiment(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 5
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 309
    if-nez p1, :cond_b

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "experiment parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_b
    iget-object v0, p1, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 314
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVariantList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/androidabframework/data/Experiment;->setVariantList(Ljava/util/List;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 316
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/data/Experiment;->isSelectedVariantValid()Z

    move-result v0

    if-nez v0, :cond_29

    .line 317
    invoke-virtual {p0, v2, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariant(Ljava/lang/String;Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 323
    :cond_29
    return-void

    .line 320
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Experiment names do not match: object="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/data/Experiment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", experiment.name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_57

    const-string v0, "null"

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method
