.class public abstract Lcom/google/ads/interactivemedia/v3/b/l;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()D
    .registers 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 46
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 55
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 64
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/b/q;

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 74
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/b/n;

    return v0
.end method

.method public k()Lcom/google/ads/interactivemedia/v3/b/o;
    .registers 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/l;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    check-cast p0, Lcom/google/ads/interactivemedia/v3/b/o;

    return-object p0

    .line 90
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lcom/google/ads/interactivemedia/v3/b/i;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    check-cast p0, Lcom/google/ads/interactivemedia/v3/b/i;

    return-object p0

    .line 106
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Lcom/google/ads/interactivemedia/v3/b/q;
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/l;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    check-cast p0, Lcom/google/ads/interactivemedia/v3/b/q;

    return-object p0

    .line 122
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method n()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 321
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 322
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/d/c;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;-><init>(Ljava/io/Writer;)V

    .line 323
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 324
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V

    .line 325
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 326
    :catch_16
    move-exception v0

    .line 327
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
