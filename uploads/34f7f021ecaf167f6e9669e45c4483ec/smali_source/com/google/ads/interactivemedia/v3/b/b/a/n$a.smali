.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a:Ljava/util/Map;

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->b:Ljava/util/Map;

    .line 795
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v4, v3

    :goto_1a
    if-ge v4, v5, :cond_5c

    aget-object v6, v0, v4

    .line 796
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v7, Lcom/google/ads/interactivemedia/v3/b/a/c;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 798
    if-eqz v1, :cond_46

    .line 799
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/a/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/a/c;->b()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v1, v3

    :goto_3a
    if-ge v1, v8, :cond_46

    aget-object v9, v7, v1

    .line 801
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a:Ljava/util/Map;

    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_46
    move-object v1, v2

    .line 804
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->b:Ljava/util/Map;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_51} :catch_55

    .line 795
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1a

    .line 807
    :catch_55
    move-exception v0

    .line 808
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 810
    :cond_5c
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 813
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 814
    const/4 v0, 0x0

    .line 816
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 821
    return-void

    .line 820
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$a;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Enum;)V

    return-void
.end method
