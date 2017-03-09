.class final Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;
.super Lcom/google/ads/interactivemedia/v3/a/c/c/a;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final aN:J

.field public final aO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final aP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .registers 6

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;-><init>(I)V

    .line 184
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aN:J

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    .line 187
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;
    .registers 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1b

    .line 219
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 220
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    if-ne v3, p1, :cond_17

    .line 224
    :goto_16
    return-object v0

    .line 218
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 224
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;
    .registers 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1b

    .line 239
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 240
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    if-ne v3, p1, :cond_17

    .line 244
    :goto_16
    return-object v0

    .line 238
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 244
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public f(I)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 254
    .line 255
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 256
    :goto_9
    if-ge v3, v4, :cond_1e

    .line 257
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 258
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    if-ne v0, p1, :cond_3c

    .line 259
    add-int/lit8 v0, v1, 0x1

    .line 256
    :goto_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_9

    .line 262
    :cond_1e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 263
    :goto_24
    if-ge v2, v3, :cond_39

    .line 264
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 265
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    if-ne v0, p1, :cond_3a

    .line 266
    add-int/lit8 v0, v1, 0x1

    .line 263
    :goto_34
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_24

    .line 269
    :cond_39
    return v1

    :cond_3a
    move v0, v1

    goto :goto_34

    :cond_3c
    move v0, v1

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 274
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    new-array v2, v3, [Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 275
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    new-array v3, v3, [Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 276
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

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

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " leaves: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    return-object v0
.end method
