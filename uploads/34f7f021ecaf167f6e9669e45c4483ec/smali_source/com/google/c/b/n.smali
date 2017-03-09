.class public abstract Lcom/google/c/b/n;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient b:Lcom/google/c/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/s",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/google/c/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/s",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/c/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/k",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 372
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/c/b/n;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 135
    if-nez p0, :cond_53

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Multiple entries with same "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_53
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/google/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/j;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/o",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/c/b/o;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lcom/google/c/b/n;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/google/c/b/j;->a()Lcom/google/c/b/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/google/c/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/c/b/n;->d()Lcom/google/c/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/b/k;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/c/b/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/c/b/n;->d:Lcom/google/c/b/k;

    .line 523
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/c/b/n;->k()Lcom/google/c/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->d:Lcom/google/c/b/k;

    :cond_a
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/c/b/n;->f()Lcom/google/c/b/s;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 621
    invoke-static {p0, p1}, Lcom/google/c/b/v;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/google/c/b/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/s",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/c/b/n;->b:Lcom/google/c/b/s;

    .line 476
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/c/b/n;->g()Lcom/google/c/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->b:Lcom/google/c/b/s;

    :cond_a
    return-object v0
.end method

.method abstract g()Lcom/google/c/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/s",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public h()Lcom/google/c/b/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/s",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/c/b/n;->c:Lcom/google/c/b/s;

    .line 491
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/c/b/n;->i()Lcom/google/c/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->c:Lcom/google/c/b/s;

    :cond_a
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/google/c/b/n;->f()Lcom/google/c/b/s;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/ae;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method i()Lcom/google/c/b/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/s",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/c/b/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/c/b/s;->g()Lcom/google/c/b/s;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/c/b/q;

    invoke-direct {v0, p0}, Lcom/google/c/b/q;-><init>(Lcom/google/c/b/n;)V

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/c/b/n;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method j()Lcom/google/c/b/aj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/aj",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/c/b/n;->f()Lcom/google/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/s;->c()Lcom/google/c/b/aj;

    move-result-object v0

    .line 500
    new-instance v1, Lcom/google/c/b/n$1;

    invoke-direct {v1, p0, v0}, Lcom/google/c/b/n$1;-><init>(Lcom/google/c/b/n;Lcom/google/c/b/aj;)V

    return-object v1
.end method

.method k()Lcom/google/c/b/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/google/c/b/r;

    invoke-direct {v0, p0}, Lcom/google/c/b/r;-><init>(Lcom/google/c/b/n;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/c/b/n;->h()Lcom/google/c/b/s;

    move-result-object v0

    return-object v0
.end method

.method abstract l()Z
.end method

.method m()Z
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 637
    invoke-static {p0}, Lcom/google/c/b/v;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/c/b/n;->d()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method
