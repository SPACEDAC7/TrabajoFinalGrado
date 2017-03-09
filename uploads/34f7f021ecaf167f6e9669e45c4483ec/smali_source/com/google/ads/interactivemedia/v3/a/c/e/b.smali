.class public final Lcom/google/ads/interactivemedia/v3/a/c/e/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# static fields
.field private static final a:I


# instance fields
.field private final b:J

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private d:Lcom/google/ads/interactivemedia/v3/a/c/e/c;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/b;-><init>(J)V

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->b:J

    .line 55
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v3, 0xc8

    invoke-interface {p1, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BII)I

    move-result v2

    .line 135
    if-ne v2, v0, :cond_10

    .line 151
    :goto_f
    return v0

    .line 140
    :cond_10
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 145
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->e:Z

    if-nez v0, :cond_27

    .line 147
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->d:Lcom/google/ads/interactivemedia/v3/a/c/e/c;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->b:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(JZ)V

    .line 148
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->e:Z

    .line 150
    :cond_27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->d:Lcom/google/ads/interactivemedia/v3/a/c/e/c;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    move v0, v1

    .line 151
    goto :goto_f
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 5

    .prologue
    .line 115
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->d:Lcom/google/ads/interactivemedia/v3/a/c/e/c;

    .line 116
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 117
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 118
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 61
    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v5, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    .line 62
    new-instance v6, Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {v6, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    move v0, v1

    .line 65
    :goto_12
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v2, v1, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 66
    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 67
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->a:I

    if-eq v2, v3, :cond_4d

    .line 75
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 76
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    move v2, v1

    move v3, v1

    move v4, v0

    .line 83
    :goto_2b
    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 84
    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 85
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v7

    .line 86
    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_80

    .line 89
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 90
    add-int/lit8 v4, v4, 0x1

    sub-int v2, v4, v0

    const/16 v3, 0x2000

    if-lt v2, v3, :cond_7a

    .line 105
    :cond_4c
    :goto_4c
    return v1

    .line 70
    :cond_4d
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v2, v2, v10

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v2, v3

    .line 72
    add-int/lit8 v3, v2, 0xa

    add-int/2addr v0, v3

    .line 73
    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    goto :goto_12

    .line 93
    :cond_7a
    invoke-interface {p1, v4}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    move v2, v1

    move v3, v1

    goto :goto_2b

    .line 95
    :cond_80
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_8a

    const/16 v7, 0xbc

    if-le v3, v7, :cond_8a

    .line 96
    const/4 v1, 0x1

    goto :goto_4c

    .line 100
    :cond_8a
    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v7, v1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 101
    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 102
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v7

    .line 104
    if-le v7, v10, :cond_4c

    .line 107
    add-int/lit8 v8, v7, -0x6

    invoke-interface {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 108
    add-int/2addr v3, v7

    goto :goto_2b
.end method

.method public b()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->e:Z

    .line 123
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/b;->d:Lcom/google/ads/interactivemedia/v3/a/c/e/c;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a()V

    .line 124
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method
