.class final Lcom/google/ads/interactivemedia/v3/a/c/e/g;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/e;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

.field private final d:[Z

.field private final e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

.field private final f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private i:J

.field private j:J

.field private final k:Lcom/google/ads/interactivemedia/v3/a/f/m;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Lcom/google/ads/interactivemedia/v3/a/c/e/n;ZZ)V
    .registers 8

    .prologue
    const/16 v2, 0x80

    .line 68
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 69
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->d:[Z

    .line 71
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;ZZ)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    .line 72
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 74
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 75
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 76
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/f/l;
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BI)I

    move-result v0

    .line 203
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([BI)V

    .line 204
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 205
    return-object v1
.end method

.method private a(JIIJ)V
    .registers 26

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->b:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 163
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    .line 165
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->b:Z

    if-nez v4, :cond_10a

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 167
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/f/l;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$b;

    move-result-object v15

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/f/l;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/f/k;->b(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$a;

    move-result-object v16

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "video/avc"

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    iget v10, v15, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->b:I

    iget v11, v15, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->c:I

    const/4 v13, -0x1

    iget v14, v15, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->d:F

    invoke-static/range {v4 .. v14}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 176
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->b:Z

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v4, v15}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/k$b;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/k$a;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 192
    :cond_c0
    :goto_c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BI)I

    move-result v4

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    invoke-virtual {v5, v6, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a(JLcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 198
    :cond_fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(JI)V

    .line 199
    return-void

    .line 182
    :cond_10a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/f/l;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$b;

    move-result-object v4

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/k$b;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    goto :goto_c0

    .line 186
    :cond_12f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/f/l;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/f/k;->b(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$a;

    move-result-object v4

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/k$a;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    goto/16 :goto_c0
.end method

.method private a(JIJ)V
    .registers 12

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 148
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(JIJ)V

    .line 150
    return-void
.end method

.method private a([BII)V
    .registers 5

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 157
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a([BII)V

    .line 159
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->d:[Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([Z)V

    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->b()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->i:J

    .line 86
    return-void
.end method

.method public a(JZ)V
    .registers 5

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->j:J

    .line 91
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 14

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_2e

    .line 96
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v8

    .line 98
    iget-object v9, p1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 101
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->i:J

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->i:J

    .line 102
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 106
    :goto_23
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->d:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BII[Z)I

    move-result v10

    .line 108
    if-ne v10, v8, :cond_2f

    .line 110
    invoke-direct {p0, v9, v0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a([BII)V

    .line 136
    :cond_2e
    return-void

    .line 115
    :cond_2f
    invoke-static {v9, v10}, Lcom/google/ads/interactivemedia/v3/a/f/k;->b([BI)I

    move-result v11

    .line 119
    sub-int v1, v10, v0

    .line 120
    if-lez v1, :cond_3a

    .line 121
    invoke-direct {p0, v9, v0, v10}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a([BII)V

    .line 123
    :cond_3a
    sub-int v4, v8, v10

    .line 124
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->i:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 128
    if-gez v1, :cond_53

    .line 129
    neg-int v5, v1

    :goto_43
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->j:J

    move-object v1, p0

    .line 128
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(JIIJ)V

    .line 131
    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->j:J

    move-object v1, p0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/a/c/e/g;->a(JIJ)V

    .line 133
    add-int/lit8 v0, v10, 0x3

    .line 134
    goto :goto_23

    .line 129
    :cond_53
    const/4 v5, 0x0

    goto :goto_43
.end method

.method public b()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method
