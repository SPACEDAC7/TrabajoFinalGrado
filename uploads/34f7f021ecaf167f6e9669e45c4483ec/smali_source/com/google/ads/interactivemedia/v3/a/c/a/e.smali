.class final Lcom/google/ads/interactivemedia/v3/a/c/a/e;
.super Lcom/google/ads/interactivemedia/v3/a/c/a/d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 60
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 61
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 62
    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 146
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    .line 147
    const/4 v0, 0x3

    if-eq v2, v0, :cond_2d

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v6, v0, 0x1f

    move v0, v3

    .line 150
    :goto_21
    if-ge v0, v6, :cond_2f

    .line 151
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2d
    move v0, v3

    .line 147
    goto :goto_12

    .line 153
    :cond_2f
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v5

    move v0, v3

    .line 154
    :goto_34
    if-ge v0, v5, :cond_40

    .line 155
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 158
    :cond_40
    const/high16 v5, 0x3f800000

    .line 161
    if-lez v6, :cond_66

    .line 163
    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    .line 165
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 166
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$b;

    move-result-object v0

    .line 167
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->b:I

    .line 168
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->c:I

    .line 169
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->d:F

    .line 172
    :goto_60
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;-><init>(Ljava/util/List;IIIF)V

    return-object v0

    :cond_66
    move v3, v4

    goto :goto_60
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v3

    .line 86
    int-to-long v4, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long v8, p2, v4

    .line 88
    if-nez v1, :cond_51

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->e:Z

    if-nez v3, :cond_51

    .line 89
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    .line 90
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 92
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;

    move-result-object v3

    .line 93
    iget v1, v3, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->b:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->d:I

    .line 96
    const-string/jumbo v1, "video/avc"

    .line 97
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a()J

    move-result-wide v4

    iget v6, v3, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->d:I

    iget v7, v3, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->e:I

    iget-object v8, v3, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->a:Ljava/util/List;

    iget v10, v3, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->c:F

    move v3, v2

    move v9, v2

    .line 96
    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 101
    iput-boolean v11, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->e:Z

    .line 134
    :cond_50
    :goto_50
    return-void

    .line 102
    :cond_51
    if-ne v1, v11, :cond_50

    .line 106
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 107
    aput-byte v6, v1, v6

    .line 108
    aput-byte v6, v1, v11

    .line 109
    const/4 v2, 0x2

    aput-byte v6, v1, v2

    .line 110
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->d:I

    rsub-int/lit8 v1, v1, 0x4

    move v5, v6

    .line 116
    :goto_63
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    if-lez v2, :cond_94

    .line 118
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->d:I

    invoke-virtual {p1, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 119
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 120
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 123
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 124
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v7, 0x4

    invoke-interface {v3, v4, v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 125
    add-int/lit8 v3, v5, 0x4

    .line 128
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v4, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 129
    add-int v5, v3, v2

    goto :goto_63

    .line 131
    :cond_94
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->f:I

    if-ne v2, v11, :cond_a1

    move v4, v11

    :goto_9b
    move-wide v2, v8

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    goto :goto_50

    :cond_a1
    move v4, v6

    goto :goto_9b
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 72
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 73
    and-int/lit8 v0, v0, 0xf

    .line 75
    const/4 v2, 0x7

    if-eq v0, v2, :cond_28

    .line 76
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;

    const/16 v2, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video format not supported: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_28
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->f:I

    .line 79
    const/4 v0, 0x5

    if-eq v1, v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method
