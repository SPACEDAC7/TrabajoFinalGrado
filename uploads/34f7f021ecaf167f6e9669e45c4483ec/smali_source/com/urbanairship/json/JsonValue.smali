.class public Lcom/urbanairship/json/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL:Lcom/urbanairship/json/JsonValue;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 752
    new-instance v0, Lcom/urbanairship/json/JsonValue$1;

    invoke-direct {v0}, Lcom/urbanairship/json/JsonValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .registers 5
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 330
    sget-object v2, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 336
    :goto_8
    return-object v2

    .line 333
    :cond_9
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "tokener":Lorg/json/JSONTokener;
    :try_start_e
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_8

    .line 337
    :catch_17
    move-exception v0

    .line 338
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/urbanairship/json/JsonException;

    const-string v3, "Unable to parse string"

    invoke-direct {v2, v3, v0}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static wrap(C)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "value"    # C
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 442
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(D)Lcom/urbanairship/json/JsonValue;
    .registers 4
    .param p0, "value"    # D
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 488
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 489
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 490
    :cond_10
    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 493
    :goto_12
    return-object v1

    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    goto :goto_12
.end method

.method public static wrap(I)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "value"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 453
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(J)Lcom/urbanairship/json/JsonValue;
    .registers 4
    .param p0, "value"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 464
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "value"    # Lcom/urbanairship/json/JsonSerializable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 505
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 554
    if-eqz p0, :cond_6

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v4, :cond_9

    .line 555
    :cond_6
    sget-object p0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 616
    .end local p0    # "object":Ljava/lang/Object;
    :goto_8
    return-object p0

    .line 558
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_9
    instance-of v4, p0, Lcom/urbanairship/json/JsonValue;

    if-eqz v4, :cond_10

    .line 559
    check-cast p0, Lcom/urbanairship/json/JsonValue;

    goto :goto_8

    .line 562
    :cond_10
    instance-of v4, p0, Lcom/urbanairship/json/JsonMap;

    if-nez v4, :cond_28

    instance-of v4, p0, Lcom/urbanairship/json/JsonList;

    if-nez v4, :cond_28

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_28

    instance-of v4, p0, Ljava/lang/Integer;

    if-nez v4, :cond_28

    instance-of v4, p0, Ljava/lang/Long;

    if-nez v4, :cond_28

    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 568
    :cond_28
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v3, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_8

    .line 571
    :cond_2f
    instance-of v4, p0, Lcom/urbanairship/json/JsonSerializable;

    if-eqz v4, :cond_3f

    .line 572
    check-cast p0, Lcom/urbanairship/json/JsonSerializable;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    .line 573
    .local v3, "jsonValue":Lcom/urbanairship/json/JsonValue;
    if-nez v3, :cond_3d

    sget-object v3, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .end local v3    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :cond_3d
    move-object p0, v3

    goto :goto_8

    .line 576
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3f
    instance-of v4, p0, Ljava/lang/Byte;

    if-nez v4, :cond_47

    instance-of v4, p0, Ljava/lang/Short;

    if-eqz v4, :cond_58

    .line 577
    :cond_47
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_8

    .line 580
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_58
    instance-of v4, p0, Ljava/lang/Character;

    if-eqz v4, :cond_69

    move-object v0, p0

    .line 581
    check-cast v0, Ljava/lang/Character;

    .line 582
    .local v0, "character":Ljava/lang/Character;
    new-instance p0, Lcom/urbanairship/json/JsonValue;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    .line 585
    .end local v0    # "character":Ljava/lang/Character;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_69
    instance-of v4, p0, Ljava/lang/Float;

    if-eqz v4, :cond_7e

    .line 586
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_8

    .line 589
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7e
    instance-of v4, p0, Ljava/lang/Double;

    if-eqz v4, :cond_b2

    move-object v1, p0

    .line 590
    check-cast v1, Ljava/lang/Double;

    .line 591
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_91

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 592
    :cond_91
    new-instance v4, Lcom/urbanairship/json/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Double value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :cond_aa
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v3, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto/16 :goto_8

    .line 599
    .end local v1    # "d":Ljava/lang/Double;
    :cond_b2
    :try_start_b2
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_be

    .line 600
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_8

    .line 603
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_be
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_ca

    .line 604
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_8

    .line 607
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_ca
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_d6

    .line 608
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_8

    .line 611
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_d6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 612
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_8

    .line 615
    :cond_e6
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_fd

    .line 616
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    :try_end_ef
    .catch Lcom/urbanairship/json/JsonException; {:try_start_b2 .. :try_end_ef} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ef} :catch_f4

    move-result-object p0

    goto/16 :goto_8

    .line 618
    :catch_f2
    move-exception v2

    .line 619
    .local v2, "exception":Lcom/urbanairship/json/JsonException;
    throw v2

    .line 620
    .end local v2    # "exception":Lcom/urbanairship/json/JsonException;
    :catch_f4
    move-exception v2

    .line 621
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v4, Lcom/urbanairship/json/JsonException;

    const-string v5, "Failed to wrap value."

    invoke-direct {v4, v5, v2}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 624
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_fd
    new-instance v4, Lcom/urbanairship/json/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 529
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_3
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p1

    .line 531
    .end local p1    # "defaultValue":Lcom/urbanairship/json/JsonValue;
    :goto_4
    return-object p1

    .line 530
    .restart local p1    # "defaultValue":Lcom/urbanairship/json/JsonValue;
    :catch_5
    move-exception v0

    .line 531
    .local v0, "ex":Lcom/urbanairship/json/JsonException;
    goto :goto_4
.end method

.method public static wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 431
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Z)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "value"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 476
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method private static wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .registers 7
    .param p0, "array"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 637
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1c

    .line 640
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 641
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_19

    .line 642
    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 647
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1c
    new-instance v4, Lcom/urbanairship/json/JsonValue;

    new-instance v5, Lcom/urbanairship/json/JsonList;

    invoke-direct {v5, v2}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v4
.end method

.method private static wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;
    .registers 5
    .param p0, "collection"    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 662
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 663
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 667
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1d
    new-instance v2, Lcom/urbanairship/json/JsonValue;

    new-instance v3, Lcom/urbanairship/json/JsonList;

    invoke-direct {v3, v0}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;
    .registers 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 705
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 706
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 707
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 712
    :cond_24
    new-instance v2, Lcom/urbanairship/json/JsonValue;

    new-instance v3, Lcom/urbanairship/json/JsonList;

    invoke-direct {v3, v1}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 726
    .local v1, "jsonValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 727
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 728
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 730
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 731
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 736
    .end local v2    # "key":Ljava/lang/String;
    :cond_27
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    new-instance v4, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v4, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method

.method private static wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    .registers 6
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/urbanairship/json/JsonValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v1, "jsonValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 682
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_29

    .line 683
    new-instance v2, Lcom/urbanairship/json/JsonException;

    const-string v3, "Only string map keys are accepted."

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 691
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_41
    new-instance v2, Lcom/urbanairship/json/JsonValue;

    new-instance v3, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v3, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 516
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {p0, v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 344
    instance-of v2, p1, Lcom/urbanairship/json/JsonValue;

    if-nez v2, :cond_6

    .line 358
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 348
    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 350
    .local v0, "o":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 351
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v1

    goto :goto_5

    .line 354
    :cond_14
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isDouble()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isDouble()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 355
    :cond_2c
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 358
    :cond_44
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public getBoolean(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    .end local p1    # "defaultValue":Z
    :cond_6
    :goto_6
    return p1

    .line 181
    .restart local p1    # "defaultValue":Z
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6
.end method

.method public getDouble(D)D
    .registers 4
    .param p1, "defaultValue"    # D

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    .end local p1    # "defaultValue":D
    :cond_6
    :goto_6
    return-wide p1

    .line 124
    .restart local p1    # "defaultValue":D
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_6

    .line 128
    :cond_16
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_6
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    .end local p1    # "defaultValue":I
    :cond_6
    :goto_6
    return p1

    .line 102
    .restart local p1    # "defaultValue":I
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isInteger()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 103
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6

    .line 106
    :cond_16
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_6
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v0

    if-nez v0, :cond_e

    .line 195
    :cond_c
    const/4 v0, 0x0

    .line 198
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    goto :goto_d
.end method

.method public getLong(J)J
    .registers 4
    .param p1, "defaultValue"    # J

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    .end local p1    # "defaultValue":J
    :cond_6
    :goto_6
    return-wide p1

    .line 146
    .restart local p1    # "defaultValue":J
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_6

    .line 150
    :cond_16
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_6
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .registers 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v0

    if-nez v0, :cond_e

    .line 221
    :cond_c
    const/4 v0, 0x0

    .line 224
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    goto :goto_d
.end method

.method public getNumber()Ljava/lang/Number;
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_e

    .line 164
    :cond_c
    const/4 v0, 0x0

    .line 167
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_d
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p1

    .line 83
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_6
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 363
    const/16 v0, 0x11

    .line 364
    .local v0, "result":I
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 365
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 367
    :cond_e
    return v0
.end method

.method public isBoolean()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isDouble()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    return v0
.end method

.method public isInteger()Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    return v0
.end method

.method public isJsonList()Z
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    return v0
.end method

.method public isJsonMap()Z
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    return v0
.end method

.method public isLong()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    return v0
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNumber()Z
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public optList()Lcom/urbanairship/json/JsonList;
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v0

    if-nez v0, :cond_f

    .line 208
    :cond_c
    sget-object v0, Lcom/urbanairship/json/JsonList;->EMPTY_LIST:Lcom/urbanairship/json/JsonList;

    .line 211
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    goto :goto_e
.end method

.method public optMap()Lcom/urbanairship/json/JsonMap;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v0

    if-nez v0, :cond_f

    .line 234
    :cond_c
    sget-object v0, Lcom/urbanairship/json/JsonMap;->EMPTY_MAP:Lcom/urbanairship/json/JsonMap;

    .line 237
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    goto :goto_e
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 1

    .prologue
    .line 772
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 378
    const-string v1, "null"

    .line 398
    :goto_8
    return-object v1

    .line 382
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 383
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 386
    :cond_18
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_27

    .line 387
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 390
    :cond_27
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/urbanairship/json/JsonMap;

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/urbanairship/json/JsonList;

    if-eqz v1, :cond_3a

    .line 391
    :cond_33
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 394
    :cond_3a
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3f} :catch_41

    move-result-object v1

    goto :goto_8

    .line 395
    :catch_41
    move-exception v0

    .line 397
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "JsonValue - Failed to create JSON String."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    const-string v1, ""

    goto :goto_8
.end method

.method write(Lorg/json/JSONStringer;)V
    .registers 3
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 421
    :goto_a
    return-void

    .line 414
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_19

    .line 415
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonList;->write(Lorg/json/JSONStringer;)V

    goto :goto_a

    .line 416
    :cond_19
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    if-eqz v0, :cond_27

    .line 417
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonMap;->write(Lorg/json/JSONStringer;)V

    goto :goto_a

    .line 419
    :cond_27
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    return-void
.end method
