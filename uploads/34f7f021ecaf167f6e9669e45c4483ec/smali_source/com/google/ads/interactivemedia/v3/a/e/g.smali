.class public final Lcom/google/ads/interactivemedia/v3/a/e/g;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/b;


# instance fields
.field private final a:I

.field private final b:[B

.field private c:I

.field private d:I

.field private e:[Lcom/google/ads/interactivemedia/v3/a/e/a;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/g;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-lez p1, :cond_34

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 55
    if-ltz p2, :cond_36

    :goto_d
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 56
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    .line 57
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    .line 58
    add-int/lit8 v0, p2, 0x64

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/a/e/a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 59
    if-lez p2, :cond_38

    .line 60
    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    .line 61
    :goto_22
    if-ge v2, p2, :cond_3b

    .line 62
    mul-int v0, v2, p1

    .line 63
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    invoke-direct {v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/a/e/a;-><init>([BI)V

    aput-object v3, v1, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    move v0, v2

    .line 54
    goto :goto_8

    :cond_36
    move v1, v2

    .line 55
    goto :goto_d

    .line 66
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    .line 68
    :cond_3b
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/ads/interactivemedia/v3/a/e/a;
    .registers 5

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    if-lez v0, :cond_1e

    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    aget-object v0, v0, v1

    .line 76
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    .line 80
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 78
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/e/a;-><init>([BI)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    goto :goto_1c

    .line 72
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 118
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(II)I

    move-result v0

    .line 119
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 120
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_5c

    if-lt v3, v0, :cond_16

    .line 156
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 125
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    if-eqz v0, :cond_5f

    .line 130
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 131
    :goto_1e
    if-gt v1, v0, :cond_49

    .line 132
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    aget-object v4, v2, v1

    .line 133
    iget-object v2, v4, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    if-ne v2, v5, :cond_2d

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 136
    :cond_2d
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    aget-object v5, v2, v0

    .line 137
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    if-eq v2, v6, :cond_3a

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 140
    :cond_3a
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    .line 141
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    add-int/lit8 v1, v0, -0x1

    aput-object v4, v5, v0

    move v0, v1

    move v1, v2

    goto :goto_1e

    .line 146
    :cond_49
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    if-ge v0, v1, :cond_14

    .line 154
    :goto_51
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 155
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I
    :try_end_5b
    .catchall {:try_start_16 .. :try_end_5b} :catchall_5c

    goto :goto_14

    .line 118
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5f
    move v0, v3

    goto :goto_51
.end method

.method public declared-synchronized a(Lcom/google/ads/interactivemedia/v3/a/e/a;)V
    .registers 5

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    if-eq v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    if-ne v0, v1, :cond_3d

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 88
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    .line 89
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    array-length v1, v1

    if-ne v0, v1, :cond_2e

    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/a/e/a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 92
    :cond_2e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    aput-object p1, v0, v1

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3f

    .line 95
    monitor-exit p0

    return-void

    .line 86
    :cond_3d
    const/4 v0, 0x0

    goto :goto_f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Lcom/google/ads/interactivemedia/v3/a/e/a;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    array-length v2, v2

    if-lt v0, v2, :cond_22

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/a/e/a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 105
    :cond_22
    array-length v3, p1

    move v2, v1

    :goto_24
    if-ge v2, v3, :cond_49

    aget-object v4, p1, v2

    .line 107
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->b:[B

    if-eq v0, v5, :cond_35

    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    array-length v0, v0

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    if-ne v0, v5, :cond_47

    :cond_35
    const/4 v0, 0x1

    :goto_36
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->e:[Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->d:I

    aput-object v4, v0, v5

    .line 105
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    :cond_47
    move v0, v1

    .line 107
    goto :goto_36

    .line 111
    :cond_49
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_54

    .line 114
    monitor-exit p0

    return-void

    .line 99
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I

    return v0
.end method

.method public declared-synchronized b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/e/g;->c()I

    move-result v0

    if-le v0, p1, :cond_e

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1

    .line 166
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c()I
    .registers 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/g;->a:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
