.class final Lcom/google/ads/interactivemedia/v3/a/c/f/c;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/f/b;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v5, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    .line 55
    invoke-static {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    move-result-object v0

    .line 56
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const-string v1, "RIFF"

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1d

    move-object v0, v8

    .line 105
    :goto_1c
    return-object v0

    .line 60
    :cond_1d
    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v1, 0x4

    invoke-interface {p0, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 61
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 62
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 63
    const-string v1, "WAVE"

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_4e

    .line 64
    const-string v1, "WavHeaderReader"

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported RIFF format: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 65
    goto :goto_1c

    .line 69
    :cond_4e
    invoke-static {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    move-result-object v0

    .line 70
    :goto_52
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const-string v3, "fmt "

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_67

    .line 71
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 72
    invoke-static {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    move-result-object v0

    goto :goto_52

    .line 75
    :cond_67
    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    const-wide/16 v12, 0x10

    cmp-long v1, v10, v12

    if-ltz v1, :cond_be

    move v1, v7

    :goto_70
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 76
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 77
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 78
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->h()I

    move-result v9

    .line 79
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->h()I

    move-result v1

    .line 80
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->t()I

    move-result v2

    .line 81
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->t()I

    move-result v3

    .line 82
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->h()I

    move-result v4

    .line 83
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->h()I

    move-result v5

    .line 85
    mul-int v6, v1, v5

    div-int/lit8 v6, v6, 0x8

    .line 86
    if-eq v4, v6, :cond_c0

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected block alignment: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    move v1, v2

    .line 75
    goto :goto_70

    .line 91
    :cond_c0
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(I)I

    move-result v6

    .line 92
    if-nez v6, :cond_e3

    .line 93
    const-string v0, "WavHeaderReader"

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported WAV bit depth: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 94
    goto/16 :goto_1c

    .line 97
    :cond_e3
    if-eq v9, v7, :cond_107

    const v7, 0xfffe

    if-eq v9, v7, :cond_107

    .line 98
    const-string v0, "WavHeaderReader"

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported WAV format type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 99
    goto/16 :goto_1c

    .line 103
    :cond_107
    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    long-to-int v0, v8

    add-int/lit8 v0, v0, -0x10

    invoke-interface {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 105
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;-><init>(IIIIII)V

    goto/16 :goto_1c
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/f/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 124
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 130
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v1, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    .line 132
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    move-result-object v0

    .line 133
    :goto_14
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const-string v3, "data"

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_78

    .line 134
    const-string v2, "WavHeaderReader"

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide/16 v2, 0x8

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    add-long/2addr v2, v4

    .line 137
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const-string v5, "RIFF"

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_4b

    .line 138
    const-wide/16 v2, 0xc

    .line 140
    :cond_4b
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_6f

    .line 141
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/r;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    const/16 v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_6f
    long-to-int v0, v2

    invoke-interface {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 144
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    move-result-object v0

    goto :goto_14

    .line 147
    :cond_78
    invoke-interface {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 149
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a(JJ)V

    .line 150
    return-void
.end method
