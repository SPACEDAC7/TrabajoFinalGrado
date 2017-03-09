.class public final Lcom/google/ads/interactivemedia/v3/a/c/e/l;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/ads/interactivemedia/v3/a/c/g;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/l;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    .line 61
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->b:Landroid/util/SparseArray;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v3, 0x4

    invoke-interface {p1, v2, v1, v3, v6}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_10

    .line 220
    :cond_f
    :goto_f
    return v0

    .line 133
    :cond_10
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 134
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 135
    const/16 v3, 0x1b9

    if-eq v2, v3, :cond_f

    .line 137
    const/16 v0, 0x1ba

    if-ne v2, v0, :cond_47

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 142
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 149
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    move v0, v1

    .line 150
    goto :goto_f

    .line 151
    :cond_47
    const/16 v0, 0x1bb

    if-ne v2, v0, :cond_64

    .line 153
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v1, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v0

    .line 158
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    move v0, v1

    .line 159
    goto :goto_f

    .line 160
    :cond_64
    and-int/lit16 v0, v2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v6, :cond_6f

    .line 161
    invoke-interface {p1, v6}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    move v0, v1

    .line 162
    goto :goto_f

    .line 167
    :cond_6f
    and-int/lit16 v3, v2, 0xff

    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;

    .line 171
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->d:Z

    if-nez v2, :cond_bd

    .line 172
    if-nez v0, :cond_a3

    .line 173
    const/4 v2, 0x0

    .line 174
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->e:Z

    if-nez v4, :cond_d9

    const/16 v4, 0xbd

    if-ne v3, v4, :cond_d9

    .line 178
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/e/a;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Z)V

    .line 179
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->e:Z

    .line 187
    :cond_95
    :goto_95
    if-eqz v2, :cond_a3

    .line 188
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/e;Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V

    .line 189
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_a3
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->e:Z

    if-eqz v2, :cond_ab

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->f:Z

    if-nez v2, :cond_b6

    :cond_ab
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-lez v2, :cond_bd

    .line 193
    :cond_b6
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->d:Z

    .line 194
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 199
    :cond_bd
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v2, v1, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 200
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 201
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v2

    .line 202
    add-int/lit8 v2, v2, 0x6

    .line 204
    if-nez v0, :cond_109

    .line 206
    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    :goto_d6
    move v0, v1

    .line 220
    goto/16 :goto_f

    .line 180
    :cond_d9
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->e:Z

    if-nez v4, :cond_f1

    and-int/lit16 v4, v3, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_f1

    .line 181
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/e/j;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/j;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 182
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->e:Z

    goto :goto_95

    .line 183
    :cond_f1
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->f:Z

    if-nez v4, :cond_95

    and-int/lit16 v4, v3, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_95

    .line 184
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/e/f;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/f;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 185
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->f:Z

    goto :goto_95

    .line 208
    :cond_109
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v3

    if-ge v3, v2, :cond_118

    .line 210
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    new-array v4, v2, [B

    invoke-virtual {v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 213
    :cond_118
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 214
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 215
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 216
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/g;)V

    .line 217
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    goto :goto_d6
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 109
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 110
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    const/16 v2, 0xe

    new-array v2, v2, [B

    .line 70
    const/16 v3, 0xe

    invoke-interface {p1, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 73
    const/16 v3, 0x1ba

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, v2, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    if-eq v3, v4, :cond_2c

    .line 102
    :cond_2b
    :goto_2b
    return v1

    .line 78
    :cond_2c
    aget-byte v3, v2, v7

    and-int/lit16 v3, v3, 0xc4

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2b

    .line 82
    const/4 v3, 0x6

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_2b

    .line 86
    const/16 v3, 0x8

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_2b

    .line 90
    const/16 v3, 0x9

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_2b

    .line 94
    const/16 v3, 0xc

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3

    if-ne v3, v6, :cond_2b

    .line 98
    const/16 v3, 0xd

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x7

    .line 99
    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 101
    invoke-interface {p1, v2, v1, v6}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 102
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    if-ne v0, v2, :cond_75

    :goto_73
    move v1, v0

    goto :goto_2b

    :cond_75
    move v0, v1

    goto :goto_73
.end method

.method public b()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a()V

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a()V

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 118
    :cond_1e
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method
