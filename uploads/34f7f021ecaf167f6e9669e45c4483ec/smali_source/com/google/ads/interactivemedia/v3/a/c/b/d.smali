.class final Lcom/google/ads/interactivemedia/v3/a/c/b/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method private constructor <init>([J[JJ)V
    .registers 6

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->a:[J

    .line 96
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->b:[J

    .line 97
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->c:J

    .line 98
    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/j;Lcom/google/ads/interactivemedia/v3/a/f/m;JJ)Lcom/google/ads/interactivemedia/v3/a/c/b/d;
    .registers 24

    .prologue
    .line 43
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 45
    if-gtz v2, :cond_f

    .line 46
    const/4 v2, 0x0

    .line 87
    :goto_e
    return-object v2

    .line 48
    :cond_f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->d:I

    .line 49
    int-to-long v2, v2

    const-wide/32 v8, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_56

    .line 50
    const/16 v4, 0x480

    :goto_1d
    int-to-long v4, v4

    mul-long/2addr v4, v8

    int-to-long v6, v6

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v8

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v10

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v11

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v12

    .line 54
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 57
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    int-to-long v2, v2

    add-long v4, p2, v2

    .line 60
    add-int/lit8 v2, v10, 0x1

    new-array v13, v2, [J

    .line 61
    add-int/lit8 v2, v10, 0x1

    new-array v14, v2, [J

    .line 62
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v13, v2

    .line 63
    const/4 v2, 0x0

    aput-wide v4, v14, v2

    .line 64
    const/4 v2, 0x1

    :goto_4e
    array-length v3, v13

    if-ge v2, v3, :cond_8b

    .line 66
    packed-switch v12, :pswitch_data_92

    .line 80
    const/4 v2, 0x0

    goto :goto_e

    .line 50
    :cond_56
    const/16 v4, 0x240

    goto :goto_1d

    .line 68
    :pswitch_59
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    .line 82
    :goto_5d
    mul-int/2addr v3, v11

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 83
    int-to-long v6, v2

    mul-long/2addr v6, v8

    int-to-long v0, v10

    move-wide/from16 v16, v0

    div-long v6, v6, v16

    aput-wide v6, v13, v2

    .line 84
    const-wide/16 v6, -0x1

    cmp-long v3, p4, v6

    if-nez v3, :cond_84

    move-wide v6, v4

    .line 85
    :goto_70
    aput-wide v6, v14, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 71
    :pswitch_75
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v3

    goto :goto_5d

    .line 74
    :pswitch_7a
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v3

    goto :goto_5d

    .line 77
    :pswitch_7f
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v3

    goto :goto_5d

    .line 85
    :cond_84
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_70

    .line 87
    :cond_8b
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/b/d;

    invoke-direct {v2, v13, v14, v8, v9}, Lcom/google/ads/interactivemedia/v3/a/c/b/d;-><init>([J[JJ)V

    goto/16 :goto_e

    .line 66
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_59
        :pswitch_75
        :pswitch_7a
        :pswitch_7f
    .end packed-switch
.end method


# virtual methods
.method public a(J)J
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->a:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->b:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->c:J

    return-wide v0
.end method

.method public b(J)J
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->b:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->a:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method
