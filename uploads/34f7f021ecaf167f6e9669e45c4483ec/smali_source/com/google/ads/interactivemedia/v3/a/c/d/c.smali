.class final Lcom/google/ads/interactivemedia/v3/a/c/d/c;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

.field private d:I

.field private e:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    .line 34
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 35
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 112
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    .line 113
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->a()V

    .line 114
    :goto_17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_42

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->h:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    goto :goto_17

    :cond_40
    move v0, v1

    .line 111
    goto :goto_c

    .line 118
    :cond_42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->c:J

    return-wide v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 140
    :goto_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->c:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_2f

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->h:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->c:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->e:J

    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    goto :goto_d

    .line 147
    :cond_2f
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3b

    .line 148
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>()V

    throw v0

    .line 150
    :cond_3b
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 151
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->e:J

    .line 153
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->e:J

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    .line 155
    return-wide v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->a()V

    .line 45
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    .line 47
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    move v4, v2

    .line 67
    :goto_b
    if-nez v4, :cond_90

    .line 68
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    if-gez v0, :cond_46

    .line 70
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {p1, v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 97
    :goto_1b
    return v2

    :cond_1c
    move v0, v2

    .line 64
    goto :goto_7

    .line 74
    :cond_1e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->h:I

    .line 75
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->b:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_94

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    if-nez v3, :cond_94

    .line 78
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    invoke-static {v3, v2, v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;ILcom/google/ads/interactivemedia/v3/a/c/d/e$a;)V

    .line 79
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    add-int/2addr v3, v2

    .line 80
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    add-int/2addr v0, v5

    .line 82
    :goto_41
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 83
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    .line 86
    :cond_46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    invoke-static {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;ILcom/google/ads/interactivemedia/v3/a/c/d/e$a;)V

    .line 87
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    add-int/2addr v3, v0

    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    if-lez v0, :cond_92

    .line 89
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    invoke-interface {p1, v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 90
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->c:Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    add-int/2addr v0, v4

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_8e

    move v0, v1

    .line 94
    :goto_82
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    if-ne v3, v4, :cond_89

    const/4 v3, -0x1

    .line 95
    :cond_89
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->d:I

    move v4, v0

    .line 96
    goto/16 :goto_b

    :cond_8e
    move v0, v2

    .line 91
    goto :goto_82

    :cond_90
    move v2, v1

    .line 97
    goto :goto_1b

    :cond_92
    move v0, v4

    goto :goto_82

    :cond_94
    move v3, v2

    goto :goto_41
.end method
