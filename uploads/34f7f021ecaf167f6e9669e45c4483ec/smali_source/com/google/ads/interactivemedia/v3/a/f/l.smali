.class public final Lcom/google/ads/interactivemedia/v3/a/f/l;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 40
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([BI)V

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    .line 51
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    .line 52
    return-void
.end method

.method private f()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 219
    move v0, v1

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v2

    if-nez v2, :cond_b

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 223
    :cond_b
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_15

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    :cond_15
    add-int v0, v2, v1

    return v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    if-lt v0, v1, :cond_1e

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    if-nez v0, :cond_23

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 231
    return-void

    .line 228
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 98
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 99
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 100
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->g()V

    .line 101
    return-void
.end method

.method public a([B)V
    .registers 3

    .prologue
    .line 60
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a([BI)V

    .line 61
    return-void
.end method

.method public a([BI)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    .line 71
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 72
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 73
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    .line 74
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 109
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 110
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 111
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1f

    .line 112
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 113
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 115
    :cond_1f
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->g()V

    .line 116
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(I)I
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_6

    .line 177
    :goto_5
    return v0

    .line 141
    :cond_6
    div-int/lit8 v3, p1, 0x8

    move v2, v0

    move v1, v0

    .line 142
    :goto_a
    if-ge v2, v3, :cond_42

    .line 144
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    if-eqz v0, :cond_3b

    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    shl-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    rsub-int/lit8 v5, v5, 0x8

    ushr-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 150
    :goto_2b
    add-int/lit8 p1, p1, -0x8

    .line 151
    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, p1

    or-int/2addr v1, v0

    .line 152
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 142
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 148
    :cond_3b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    aget-byte v0, v0, v4

    goto :goto_2b

    .line 156
    :cond_42
    if-lez p1, :cond_8f

    .line 157
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    add-int v2, v0, p1

    .line 158
    const/16 v0, 0xff

    rsub-int/lit8 v3, p1, 0x8

    shr-int/2addr v0, v3

    int-to-byte v0, v0

    .line 160
    if-le v2, v6, :cond_79

    .line 162
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, -0x8

    shl-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v5, v2, 0x10

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 164
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 173
    :cond_71
    :goto_71
    rem-int/lit8 v1, v2, 0x8

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 176
    :goto_75
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->g()V

    goto :goto_5

    .line 167
    :cond_79
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v2, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 168
    if-ne v2, v6, :cond_71

    .line 169
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    goto :goto_71

    :cond_8f
    move v0, v1

    goto :goto_75
.end method

.method public c()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 187
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 188
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    move v0, v1

    .line 190
    :goto_7
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    if-ge v2, v6, :cond_16

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v2

    if-nez v2, :cond_16

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 193
    :cond_16
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->d:I

    if-ne v2, v6, :cond_2e

    move v2, v3

    .line 194
    :goto_1d
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->b:I

    .line 195
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/l;->c:I

    .line 196
    if-nez v2, :cond_30

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-lt v2, v0, :cond_30

    :goto_2d
    return v3

    :cond_2e
    move v2, v1

    .line 193
    goto :goto_1d

    :cond_30
    move v3, v1

    .line 196
    goto :goto_2d
.end method

.method public d()I
    .registers 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->f()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->f()I

    move-result v1

    .line 215
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_f

    const/4 v0, -0x1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_9
.end method
