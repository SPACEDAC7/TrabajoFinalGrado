.class final Lcom/google/ads/interactivemedia/v3/a/c/d/h;
.super Lcom/google/ads/interactivemedia/v3/a/c/d/f;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;
    }
.end annotation


# instance fields
.field private e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

.field private g:I

.field private h:J

.field private i:Z

.field private final j:Lcom/google/ads/interactivemedia/v3/a/c/d/d;

.field private k:J

.field private l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

.field private m:Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

.field private n:J

.field private o:J

.field private p:J

.field private q:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;-><init>()V

    .line 43
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/d;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/d/d;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    return-void
.end method

.method private static a(BLcom/google/ads/interactivemedia/v3/a/c/d/h$a;)I
    .registers 4

    .prologue
    .line 198
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(BII)I

    move-result v0

    .line 200
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->d:[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;->a:Z

    if-nez v0, :cond_14

    .line 201
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->g:I

    .line 205
    :goto_13
    return v0

    .line 203
    :cond_14
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->h:I

    goto :goto_13
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0xff

    .line 187
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_2
    invoke-static {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(ILcom/google/ads/interactivemedia/v3/a/f/m;Z)Z
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/a/r; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 57
    :goto_6
    return v0

    .line 56
    :catch_7
    move-exception v0

    .line 57
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->p:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_105

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    if-nez v2, :cond_56

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->d:Lcom/google/ads/interactivemedia/v3/a/c/g;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 80
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_56

    .line 82
    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 83
    const/4 v2, 0x1

    .line 150
    :goto_55
    return v2

    .line 86
    :cond_56
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e7

    const-wide/16 v2, -0x1

    .line 87
    :goto_62
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->p:J

    .line 89
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->j:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->c:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_f3

    const-wide/16 v2, -0x1

    .line 94
    :goto_8b
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->q:J

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const/4 v2, 0x0

    const-string v3, "audio/vorbis"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->e:I

    const v5, 0xfe01

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->q:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->b:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-wide v14, v9, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->c:J

    long-to-int v9, v14

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v2

    invoke-interface {v12, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 100
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_105

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/d/d;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->p:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a(JJ)V

    .line 103
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_55

    .line 87
    :cond_e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v2

    goto/16 :goto_62

    .line 94
    :cond_f3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->p:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->c:J

    div-long/2addr v2, v4

    goto :goto_8b

    .line 109
    :cond_105
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->i:Z

    if-nez v2, :cond_154

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_154

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/d/d;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a(JLcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v2

    .line 112
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_133

    .line 113
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 114
    const/4 v2, 0x1

    goto/16 :goto_55

    .line 116
    :cond_133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->g:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->g:I

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->i:Z

    .line 124
    :cond_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v2

    if-eqz v2, :cond_201

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1f5

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a(BLcom/google/ads/interactivemedia/v3/a/c/d/h$a;)I

    move-result v10

    .line 131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->i:Z

    if-eqz v2, :cond_1ff

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->g:I

    add-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x4

    .line 133
    :goto_190
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1e2

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    .line 137
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->c:J

    div-long/2addr v4, v6

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 140
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    .line 143
    :cond_1e2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->i:Z

    .line 144
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    .line 145
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->g:I

    .line 147
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 148
    const/4 v2, 0x0

    goto/16 :goto_55

    .line 132
    :cond_1ff
    const/4 v2, 0x0

    goto :goto_190

    .line 150
    :cond_201
    const/4 v2, -0x1

    goto/16 :goto_55
.end method

.method a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    if-nez v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    .line 159
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    .line 160
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 163
    :cond_13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

    if-nez v0, :cond_25

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    .line 165
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

    .line 166
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 169
    :cond_25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    .line 171
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    new-array v3, v0, [B

    .line 173
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->b:I

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;

    move-result-object v4

    .line 177
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(I)I

    move-result v5

    .line 178
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 180
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->l:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;[B[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;I)V

    return-object v0
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(J)J
    .registers 10

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    .line 217
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    .line 220
    :goto_c
    return-wide v0

    .line 219
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;->c:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->k:J

    .line 220
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->n:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->o:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->q:J

    div-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_c
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->b()V

    .line 64
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->g:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->h:J

    .line 66
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->i:Z

    .line 67
    return-void
.end method