.class public final Lcom/google/ads/interactivemedia/v3/a/e/f;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:[B

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .registers 22

    .prologue
    .line 131
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/ads/interactivemedia/v3/a/e/f;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .registers 17

    .prologue
    .line 102
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/e/f;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 14

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_36

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_38

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-gtz v0, :cond_23

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_3a

    :cond_23
    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 151
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->b:[B

    .line 153
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->c:J

    .line 154
    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    .line 155
    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    .line 156
    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->f:Ljava/lang/String;

    .line 157
    iput p10, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->g:I

    .line 158
    return-void

    .line 148
    :cond_36
    const/4 v0, 0x0

    goto :goto_a

    .line 149
    :cond_38
    const/4 v0, 0x0

    goto :goto_14

    .line 150
    :cond_3a
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->c:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->f:Ljava/lang/String;

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/a/e/f;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "DataSpec["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
