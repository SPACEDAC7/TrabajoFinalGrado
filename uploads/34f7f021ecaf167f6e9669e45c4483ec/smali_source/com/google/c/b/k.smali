.class public abstract Lcom/google/c/b/k;
.super Ljava/util/AbstractCollection;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 6

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/c/b/k;->c()Lcom/google/c/b/aj;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 305
    add-int/lit8 v0, p2, 0x1

    aput-object v2, p1, p2

    move p2, v0

    .line 306
    goto :goto_4

    .line 307
    :cond_14
    return p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract b()Z
.end method

.method public abstract c()Lcom/google/c/b/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/aj",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public d()Lcom/google/c/b/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/c/b/k;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 286
    new-instance v0, Lcom/google/c/b/z;

    invoke-virtual {p0}, Lcom/google/c/b/k;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/z;-><init>(Lcom/google/c/b/k;[Ljava/lang/Object;)V

    :goto_10
    return-object v0

    .line 282
    :pswitch_11
    invoke-static {}, Lcom/google/c/b/m;->e()Lcom/google/c/b/m;

    move-result-object v0

    goto :goto_10

    .line 284
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/c/b/k;->c()Lcom/google/c/b/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/aj;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->a(Ljava/lang/Object;)Lcom/google/c/b/m;

    move-result-object v0

    goto :goto_10

    .line 280
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/c/b/k;->c()Lcom/google/c/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/c/b/k;->size()I

    move-result v0

    .line 167
    if-nez v0, :cond_9

    .line 168
    sget-object v0, Lcom/google/c/b/w;->a:[Ljava/lang/Object;

    .line 172
    :goto_8
    return-object v0

    .line 170
    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/c/b/k;->a([Ljava/lang/Object;I)I

    goto :goto_8
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lcom/google/c/a/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/google/c/b/k;->size()I

    move-result v0

    .line 180
    array-length v1, p1

    if-ge v1, v0, :cond_13

    .line 181
    invoke-static {p1, v0}, Lcom/google/c/b/w;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 185
    :cond_e
    :goto_e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/b/k;->a([Ljava/lang/Object;I)I

    .line 186
    return-object p1

    .line 182
    :cond_13
    array-length v1, p1

    if-le v1, v0, :cond_e

    .line 183
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_e
.end method
