.class public Lbolts/AggregateException;
.super Ljava/lang/Exception;
.source "AggregateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private causes:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "causes"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p2, :cond_14

    array-length v0, p2

    if-lez v0, :cond_14

    const/4 v0, 0x0

    aget-object v0, p2, v0

    :goto_9
    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    if-eqz p2, :cond_16

    array-length v0, p2

    if-lez v0, :cond_16

    .end local p2    # "causes":[Ljava/lang/Throwable;
    :goto_11
    iput-object p2, p0, Lbolts/AggregateException;->causes:[Ljava/lang/Throwable;

    .line 41
    return-void

    .restart local p2    # "causes":[Ljava/lang/Throwable;
    :cond_14
    move-object v0, v1

    .line 38
    goto :goto_9

    :cond_16
    move-object p2, v1

    .line 40
    goto :goto_11
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const-string v1, "There were multiple errors."

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Exception;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Lbolts/AggregateException;-><init>(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getCauses()[Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lbolts/AggregateException;->causes:[Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    iget-object v5, p0, Lbolts/AggregateException;->causes:[Ljava/lang/Throwable;

    if-nez v5, :cond_a

    .line 68
    :cond_9
    return-object v2

    .line 61
    :cond_a
    iget-object v0, p0, Lbolts/AggregateException;->causes:[Ljava/lang/Throwable;

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_9

    aget-object v1, v0, v3

    .line 62
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/Exception;

    if-eqz v5, :cond_1e

    .line 63
    check-cast v1, Ljava/lang/Exception;

    .end local v1    # "cause":Ljava/lang/Throwable;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 65
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_1e
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method
