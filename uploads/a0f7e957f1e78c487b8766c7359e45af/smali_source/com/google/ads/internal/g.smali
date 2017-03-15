.class public Lcom/google/ads/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:J

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:J

.field private final o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/ads/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 95
    sput-wide v0, Lcom/google/ads/internal/g;->f:J

    .line 98
    sput-wide v0, Lcom/google/ads/internal/g;->g:J

    .line 104
    sput-wide v0, Lcom/google/ads/internal/g;->h:J

    .line 110
    sput-wide v0, Lcom/google/ads/internal/g;->i:J

    .line 113
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/ads/internal/g;->j:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/google/ads/internal/g;->k:Z

    .line 123
    iput-boolean v0, p0, Lcom/google/ads/internal/g;->l:Z

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    .line 148
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/g;->o:Ljava/util/LinkedList;

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/g;->p:Ljava/util/LinkedList;

    .line 150
    invoke-virtual {p0}, Lcom/google/ads/internal/g;->a()V

    .line 151
    return-void
.end method

.method public static E()J
    .registers 4

    .prologue
    .line 422
    sget-wide v0, Lcom/google/ads/internal/g;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/internal/g;->j:J

    .line 425
    const-wide/16 v0, 0x0

    .line 427
    :goto_10
    return-wide v0

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/ads/internal/g;->j:J

    sub-long/2addr v0, v2

    goto :goto_10
.end method


# virtual methods
.method protected A()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/google/ads/internal/g;->l:Z

    return v0
.end method

.method protected B()V
    .registers 2

    .prologue
    .line 395
    const-string v0, "Interstitial no fill."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/g;->l:Z

    .line 397
    return-void
.end method

.method public C()V
    .registers 5

    .prologue
    .line 403
    const-string v0, "Landing page dismissed."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method protected D()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/ads/internal/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized a()V
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->b:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->c:J

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->d:J

    .line 161
    iget-object v0, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/internal/g;->n:J

    .line 163
    iget-object v0, p0, Lcom/google/ads/internal/g;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/google/ads/internal/g;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/g;->k:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/g;->l:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 167
    monitor-exit p0

    return-void

    .line 157
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/g$a;)V
    .registers 8

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/g;->o:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/internal/g;->n:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/google/ads/internal/g;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 194
    monitor-exit p0

    return-void

    .line 192
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior impression ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 413
    iput-object p1, p0, Lcom/google/ads/internal/g;->m:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/g;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/google/ads/internal/g;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 176
    monitor-exit p0

    return-void

    .line 174
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->n:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .registers 7

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/google/ads/internal/g;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 204
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_27
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_c

    .line 201
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 5

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    iget-object v0, p0, Lcom/google/ads/internal/g;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/g$a;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 220
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_23
    invoke-virtual {v0}, Lcom/google/ads/g$a;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_c

    .line 217
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method protected f()V
    .registers 5

    .prologue
    .line 232
    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 240
    const-string v0, "Ad request loaded."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->b:J

    .line 242
    return-void
.end method

.method protected declared-synchronized h()V
    .registers 3

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    const-string v0, "Ad request before rendering."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->c:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 250
    monitor-exit p0

    return-void

    .line 248
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i()V
    .registers 5

    .prologue
    .line 256
    const-string v0, "Ad request started."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/g;->d:J

    .line 258
    sget-wide v0, Lcom/google/ads/internal/g;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/g;->f:J

    .line 259
    return-void
.end method

.method protected j()J
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 268
    const-wide/16 v0, -0x1

    .line 270
    :goto_10
    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_10
.end method

.method protected k()Ljava/lang/String;
    .registers 9

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 285
    :cond_16
    const/4 v0, 0x0

    .line 297
    :goto_17
    return-object v0

    .line 289
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 291
    if-eqz v1, :cond_2e

    .line 292
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_2e
    iget-object v0, p0, Lcom/google/ads/internal/g;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 297
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method protected l()Ljava/lang/String;
    .registers 9

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    const/4 v0, 0x0

    .line 322
    :goto_9
    return-object v0

    .line 314
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 316
    if-eqz v1, :cond_20

    .line 317
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_20
    iget-object v0, p0, Lcom/google/ads/internal/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ads/internal/g;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 322
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method protected m()J
    .registers 5

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/google/ads/internal/g;->b:J

    iget-wide v2, p0, Lcom/google/ads/internal/g;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected declared-synchronized n()J
    .registers 5

    .prologue
    .line 337
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/ads/internal/g;->c:J

    iget-wide v2, p0, Lcom/google/ads/internal/g;->d:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected o()J
    .registers 3

    .prologue
    .line 341
    sget-wide v0, Lcom/google/ads/internal/g;->f:J

    return-wide v0
.end method

.method protected declared-synchronized p()J
    .registers 3

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/google/ads/internal/g;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized q()V
    .registers 5

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    const-string v0, "Ad request network error"

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 350
    sget-wide v0, Lcom/google/ads/internal/g;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/g;->g:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 351
    monitor-exit p0

    return-void

    .line 349
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized r()V
    .registers 3

    .prologue
    .line 354
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    sput-wide v0, Lcom/google/ads/internal/g;->g:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized s()J
    .registers 3

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/google/ads/internal/g;->h:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized t()V
    .registers 5

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/google/ads/internal/g;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/g;->h:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 363
    monitor-exit p0

    return-void

    .line 362
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized u()V
    .registers 3

    .prologue
    .line 366
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    sput-wide v0, Lcom/google/ads/internal/g;->h:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized v()J
    .registers 3

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/google/ads/internal/g;->i:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized w()V
    .registers 5

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/google/ads/internal/g;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/g;->i:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 375
    monitor-exit p0

    return-void

    .line 374
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized x()V
    .registers 3

    .prologue
    .line 378
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    sput-wide v0, Lcom/google/ads/internal/g;->i:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 379
    monitor-exit p0

    return-void

    .line 378
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected y()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/google/ads/internal/g;->k:Z

    return v0
.end method

.method protected z()V
    .registers 2

    .prologue
    .line 386
    const-string v0, "Interstitial network error."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/g;->k:Z

    .line 388
    return-void
.end method
