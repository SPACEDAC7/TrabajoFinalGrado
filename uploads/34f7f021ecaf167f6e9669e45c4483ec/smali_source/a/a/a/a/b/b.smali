.class public abstract La/a/a/a/b/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "La/a/a/a/b/b",
        "<T",
        "L;",
        "TR;>;>;",
        "Ljava/util/Map$Entry",
        "<T",
        "L;",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "La/a/a/a/b/b",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, La/a/a/a/b/a;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(La/a/a/a/b/b;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/b",
            "<T",
            "L;",
            "TR;>;)I"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p0}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 42
    check-cast p1, La/a/a/a/b/b;

    invoke-virtual {p0, p1}, La/a/a/a/b/b;->a(La/a/a/a/b/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-ne p1, p0, :cond_5

    .line 139
    :cond_4
    :goto_4
    return v0

    .line 134
    :cond_5
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_29

    .line 135
    check-cast p1, Ljava/util/Map$Entry;

    .line 136
    invoke-virtual {p0}, La/a/a/a/b/b;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, La/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 137
    invoke-virtual {p0}, La/a/a/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, La/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4

    :cond_29
    move v0, v1

    .line 139
    goto :goto_4
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, La/a/a/a/b/b;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    .line 152
    :goto_8
    invoke-virtual {p0}, La/a/a/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    :goto_e
    xor-int/2addr v0, v1

    return v0

    .line 151
    :cond_10
    invoke-virtual {p0}, La/a/a/a/b/b;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    .line 152
    :cond_19
    invoke-virtual {p0}, La/a/a/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
