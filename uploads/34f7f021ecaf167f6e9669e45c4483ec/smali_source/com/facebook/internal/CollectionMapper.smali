.class public Lcom/facebook/internal/CollectionMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CollectionMapper$Collection;,
        Lcom/facebook/internal/CollectionMapper$ValueMapper;,
        Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnErrorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 11
    .param p1, "valueMapper"    # Lcom/facebook/internal/CollectionMapper$ValueMapper;
    .param p2, "onMapperCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$ValueMapper;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 37
    .local v0, "didReturnError":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Boolean;>;"
    new-instance v5, Lcom/facebook/internal/Mutable;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 38
    .local v5, "pendingJobCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/internal/CollectionMapper$1;

    invoke-direct {v1, v0, v5, p2}, Lcom/facebook/internal/CollectionMapper$1;-><init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 58
    .local v1, "jobCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-interface {p0}, Lcom/facebook/internal/CollectionMapper$Collection;->keyIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v2}, Lcom/facebook/internal/CollectionMapper$Collection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 62
    .local v6, "value":Ljava/lang/Object;
    new-instance v4, Lcom/facebook/internal/CollectionMapper$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/facebook/internal/CollectionMapper$2;-><init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 75
    .local v4, "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    iget-object v7, v5, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iget-object v7, v5, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 76
    invoke-interface {p1, v6, v4}, Lcom/facebook/internal/CollectionMapper$ValueMapper;->mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_1d

    .line 78
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    .end local v4    # "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_48
    invoke-interface {v1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    .line 79
    return-void
.end method
