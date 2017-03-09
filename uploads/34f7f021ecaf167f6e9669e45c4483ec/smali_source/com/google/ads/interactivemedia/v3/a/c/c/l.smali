.class final Lcom/google/ads/interactivemedia/v3/a/c/c/l;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[I

.field public final d:I

.field public final e:[J

.field public final f:[I


# direct methods
.method constructor <init>([J[II[J[I)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 59
    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 60
    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2e

    :goto_19
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 62
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b:[J

    .line 63
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->c:[I

    .line 64
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->d:I

    .line 65
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->e:[J

    .line 66
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->f:[I

    .line 67
    array-length v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->a:I

    .line 68
    return-void

    :cond_2a
    move v0, v2

    .line 58
    goto :goto_a

    :cond_2c
    move v0, v2

    .line 59
    goto :goto_12

    :cond_2e
    move v1, v2

    .line 60
    goto :goto_19
.end method


# virtual methods
.method public a(J)I
    .registers 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([JJZZ)I

    move-result v0

    .line 81
    :goto_8
    if-ltz v0, :cond_16

    .line 82
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->f:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    .line 86
    :goto_12
    return v0

    .line 81
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 86
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public b(J)I
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b([JJZZ)I

    move-result v0

    .line 98
    :goto_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->e:[J

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 99
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->f:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    .line 103
    :goto_15
    return v0

    .line 98
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 103
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method
