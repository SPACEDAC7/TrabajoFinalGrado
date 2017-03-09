.class final Lcom/google/ads/interactivemedia/v3/a/c/a/c;
.super Lcom/google/ads/interactivemedia/v3/a/c/a/d;
.source "IMASDK"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 50
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_28

    .line 207
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 193
    :pswitch_5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    .line 195
    :pswitch_a
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    .line 197
    :pswitch_f
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->e(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 199
    :pswitch_14
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->g(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_4

    .line 201
    :pswitch_19
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->h(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_4

    .line 203
    :pswitch_1e
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->f(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 205
    :pswitch_23
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->i(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/Date;

    move-result-object v0

    goto :goto_4

    .line 191
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
        :pswitch_3
        :pswitch_1e
        :pswitch_23
    .end packed-switch
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    return v0
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/Boolean;
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/Double;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v1

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 123
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static f(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1a

    .line 136
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v3

    .line 137
    invoke-static {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 139
    :cond_1a
    return-object v2
.end method

.method private static g(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    :goto_5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->e(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v2

    .line 153
    const/16 v3, 0x9

    if-ne v2, v3, :cond_12

    .line 158
    return-object v0

    .line 156
    :cond_12
    invoke-static {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private static h(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 170
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1e

    .line 171
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->e(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v4

    .line 173
    invoke-static {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 175
    :cond_1e
    return-object v2
.end method

.method private static i(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/Date;
    .registers 5

    .prologue
    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 186
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 187
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v0

    .line 65
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 67
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>()V

    throw v0

    .line 69
    :cond_d
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->e(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "onMetaData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 87
    :cond_19
    :goto_19
    return-void

    .line 74
    :cond_1a
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v0

    .line 75
    const/16 v1, 0x8

    if-eq v0, v1, :cond_28

    .line 77
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>()V

    throw v0

    .line 80
    :cond_28
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->h(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/HashMap;

    move-result-object v0

    .line 81
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 82
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 83
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_19

    .line 84
    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a(J)V

    goto :goto_19
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
