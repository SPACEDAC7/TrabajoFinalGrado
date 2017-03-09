.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/i;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;,
        Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/b/c;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/e;

.field private final c:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private final d:Lcom/google/ads/interactivemedia/v3/b/b/a/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/e;Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/b/a/d;)V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    .line 57
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/b/e;

    .line 58
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 59
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->d:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    .line 60
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/c/a;ZZ)Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;ZZ)",
            "Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 108
    const-class v0, Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 109
    const/4 v7, 0x0

    .line 110
    if-eqz v0, :cond_1b

    .line 111
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->d:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-virtual {v1, v2, p1, p4, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/a/b;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v7

    .line 114
    :cond_1b
    if-eqz v7, :cond_33

    const/4 v6, 0x1

    .line 115
    :goto_1e
    if-nez v7, :cond_24

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v7

    .line 118
    :cond_24
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/b/v;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Z)V

    return-object v0

    .line 114
    :cond_33
    const/4 v6, 0x0

    goto :goto_1e
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/google/ads/interactivemedia/v3/b/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 73
    if-nez v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 89
    :cond_14
    :goto_14
    return-object v0

    .line 78
    :cond_15
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/c;->b()[Ljava/lang/String;

    move-result-object v2

    .line 80
    array-length v0, v2

    if-nez v0, :cond_25

    .line 81
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 84
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    array-length v3, v2

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v3, :cond_14

    aget-object v4, v2, v1

    .line 87
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v10

    .line 177
    :goto_c
    return-object v1

    .line 148
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 149
    :goto_11
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_b6

    .line 150
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 151
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_1e
    if-ge v11, v14, :cond_9e

    aget-object v3, v13, v11

    .line 152
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 153
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 154
    if-nez v6, :cond_38

    if-nez v7, :cond_38

    .line 151
    :cond_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1e

    .line 157
    :cond_38
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v1, 0x0

    move v9, v1

    :goto_53
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_7d

    .line 162
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    if-eqz v9, :cond_64

    const/4 v6, 0x0

    .line 165
    :cond_64
    invoke-static {v15}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 164
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/b/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/c/a;ZZ)Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;

    move-result-object v1

    .line 166
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;

    .line 167
    if-nez v8, :cond_b9

    .line 161
    :goto_78
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_53

    .line 169
    :cond_7d
    if-eqz v8, :cond_34

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_9e
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object p2

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_11

    :cond_b6
    move-object v1, v10

    .line 177
    goto/16 :goto_c

    :cond_b9
    move-object v1, v8

    goto :goto_78
.end method

.method static a(Ljava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/b/b/d;)Z
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 95
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_d
    return-object v0

    .line 99
    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/b/h;

    move-result-object v2

    .line 100
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/h;Ljava/util/Map;)V

    goto :goto_d
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/b/b/d;

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Ljava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/b/b/d;)Z

    move-result v0

    return v0
.end method
