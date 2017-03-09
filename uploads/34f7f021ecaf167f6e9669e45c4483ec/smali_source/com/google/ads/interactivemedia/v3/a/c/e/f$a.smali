.class final Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field private d:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->c:[B

    .line 222
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->d:Z

    .line 229
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    .line 230
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->b:I

    .line 231
    return-void
.end method

.method public a([BII)V
    .registers 7

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->d:Z

    if-nez v0, :cond_5

    .line 275
    :goto_4
    return-void

    .line 269
    :cond_5
    sub-int v0, p3, p2

    .line 270
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->c:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1c

    .line 271
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->c:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->c:[B

    .line 273
    :cond_1c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->c:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    goto :goto_4
.end method

.method public a(II)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->d:Z

    if-eqz v2, :cond_1c

    .line 245
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->b:I

    if-nez v2, :cond_14

    const/16 v2, 0xb5

    if-ne p1, v2, :cond_14

    .line 246
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->b:I

    :cond_12
    :goto_12
    move v0, v1

    .line 255
    :goto_13
    return v0

    .line 248
    :cond_14
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    sub-int/2addr v2, p2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->a:I

    .line 249
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->d:Z

    goto :goto_13

    .line 252
    :cond_1c
    const/16 v2, 0xb3

    if-ne p1, v2, :cond_12

    .line 253
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/f$a;->d:Z

    goto :goto_12
.end method
