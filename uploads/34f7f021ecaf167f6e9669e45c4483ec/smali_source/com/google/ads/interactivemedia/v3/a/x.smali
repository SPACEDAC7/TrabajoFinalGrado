.class public final Lcom/google/ads/interactivemedia/v3/a/x;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/x$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/x$a;

.field private final b:Z

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    const/high16 v0, -0x40800000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/x;-><init>(FZ)V

    .line 59
    return-void
.end method

.method private constructor <init>(FZ)V
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->b:Z

    .line 74
    if-eqz p2, :cond_24

    .line 75
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/x$a;->a()Lcom/google/ads/interactivemedia/v3/a/x$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    .line 76
    const-wide v0, 0x41cdcd6500000000L

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->c:J

    .line 77
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->c:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->d:J

    .line 83
    :goto_23
    return-void

    .line 79
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    .line 80
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->c:J

    .line 81
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->d:J

    goto :goto_23
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/x;->a(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/x;-><init>(FZ)V

    .line 69
    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 203
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 204
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method private static a(JJJ)J
    .registers 16

    .prologue
    .line 186
    sub-long v0, p0, p2

    div-long/2addr v0, p4

    .line 187
    mul-long/2addr v0, p4

    add-long/2addr v0, p2

    .line 190
    cmp-long v2, p0, v0

    if-gtz v2, :cond_14

    .line 191
    sub-long v2, v0, p4

    .line 197
    :goto_b
    sub-long v4, v0, p0

    .line 198
    sub-long v6, p0, v2

    .line 199
    cmp-long v4, v4, v6

    if-gez v4, :cond_1a

    :goto_13
    return-wide v0

    .line 195
    :cond_14
    add-long v2, v0, p4

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_b

    :cond_1a
    move-wide v0, v2

    .line 199
    goto :goto_13
.end method

.method private b(JJ)Z
    .registers 10

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->j:J

    sub-long v0, p1, v0

    .line 181
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->i:J

    sub-long v2, p3, v2

    .line 182
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a(JJ)J
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 114
    const-wide/16 v0, 0x3e8

    mul-long v4, p1, v0

    .line 120
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    if-eqz v0, :cond_68

    .line 122
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1c

    .line 123
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->k:J

    .line 124
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->g:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->f:J

    .line 126
    :cond_1c
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->k:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_60

    .line 131
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->j:J

    sub-long v0, v4, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->k:J

    div-long/2addr v0, v2

    .line 134
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->f:J

    add-long/2addr v2, v0

    .line 136
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/x;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 137
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    move-wide v0, p3

    move-wide v2, v4

    .line 153
    :goto_38
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    if-nez v6, :cond_48

    .line 154
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/x;->j:J

    .line 155
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/x;->i:J

    .line 156
    iput-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/x;->k:J

    .line 157
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    .line 158
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/x;->c()V

    .line 161
    :cond_48
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/x;->e:J

    .line 162
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->g:J

    .line 164
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/a/x$a;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_6b

    .line 172
    :cond_58
    :goto_58
    return-wide v0

    .line 140
    :cond_59
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->i:J

    add-long/2addr v0, v2

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/x;->j:J

    sub-long/2addr v0, v6

    goto :goto_38

    .line 146
    :cond_60
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/x;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 147
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    :cond_68
    move-wide v0, p3

    move-wide v2, v4

    goto :goto_38

    .line 169
    :cond_6b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/a/x$a;->a:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/x;->c:J

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/x;->a(JJJ)J

    move-result-wide v0

    .line 172
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/x;->d:J

    sub-long/2addr v0, v2

    goto :goto_58
.end method

.method public a()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->h:Z

    .line 90
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->b:Z

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/x$a;->b()V

    .line 93
    :cond_c
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->b:Z

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x;->a:Lcom/google/ads/interactivemedia/v3/a/x$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/x$a;->c()V

    .line 102
    :cond_9
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method
