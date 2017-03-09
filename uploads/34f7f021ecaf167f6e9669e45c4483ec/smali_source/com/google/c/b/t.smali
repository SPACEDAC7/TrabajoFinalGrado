.class public final Lcom/google/c/b/t;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field static final a:Lcom/google/c/b/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/ak",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/c/b/t$1;

    invoke-direct {v0}, Lcom/google/c/b/t$1;-><init>()V

    sput-object v0, Lcom/google/c/b/t;->a:Lcom/google/c/b/ak;

    .line 127
    new-instance v0, Lcom/google/c/b/t$4;

    invoke-direct {v0}, Lcom/google/c/b/t$4;-><init>()V

    sput-object v0, Lcom/google/c/b/t;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/aj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/c/b/aj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1026
    new-instance v0, Lcom/google/c/b/t$3;

    invoke-direct {v0, p0}, Lcom/google/c/b/t$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/c/b/aj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/c/b/aj",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 984
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/google/c/b/t;->a([Ljava/lang/Object;III)Lcom/google/c/b/ak;

    move-result-object v0

    return-object v0
.end method

.method static a()Lcom/google/c/b/ak;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/ak",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/google/c/b/t;->a:Lcom/google/c/b/ak;

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/google/c/b/ak;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/google/c/b/ak",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 996
    if-ltz p2, :cond_16

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/c/a/h;->a(Z)V

    .line 997
    add-int v0, p1, p2

    .line 1000
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/c/a/h;->a(III)V

    .line 1001
    invoke-static {p3, p2}, Lcom/google/c/a/h;->b(II)I

    .line 1002
    if-nez p2, :cond_18

    .line 1003
    invoke-static {}, Lcom/google/c/b/t;->a()Lcom/google/c/b/ak;

    move-result-object v0

    .line 1011
    :goto_15
    return-object v0

    .line 996
    :cond_16
    const/4 v0, 0x0

    goto :goto_3

    .line 1011
    :cond_18
    new-instance v0, Lcom/google/c/b/t$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/c/b/t$2;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_15
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/c/a/i;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/c/a/i",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {p0, p1}, Lcom/google/c/b/t;->b(Ljava/util/Iterator;Lcom/google/c/a/i;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/c/a/j;->a(Ljava/lang/Object;)Lcom/google/c/a/i;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/c/b/t;->a(Ljava/util/Iterator;Lcom/google/c/a/i;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 275
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 284
    :cond_d
    :goto_d
    return v0

    .line 278
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 280
    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_d

    .line 284
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/c/a/i;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/c/a/i",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 726
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/google/c/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const/4 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 728
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 729
    invoke-interface {p1, v1}, Lcom/google/c/a/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 733
    :goto_16
    return v0

    .line 727
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 733
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method
