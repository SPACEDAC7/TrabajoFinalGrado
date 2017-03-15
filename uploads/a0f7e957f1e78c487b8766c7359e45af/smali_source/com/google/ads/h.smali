.class public Lcom/google/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/ads/internal/h;

.field private final b:Lcom/google/ads/f;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/g$a;

.field private final f:Lcom/google/ads/e;

.field private g:Lcom/google/ads/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/ads/AdRequest;

.field private final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/internal/h;Lcom/google/ads/f;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/e;",
            "Lcom/google/ads/internal/h;",
            "Lcom/google/ads/f;",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdRequest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Z)V

    .line 103
    iput-object p1, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    .line 104
    iput-object p2, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    .line 105
    iput-object p3, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    .line 106
    iput-object p4, p0, Lcom/google/ads/h;->l:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/google/ads/h;->m:Lcom/google/ads/AdRequest;

    .line 108
    iput-object p6, p0, Lcom/google/ads/h;->n:Ljava/util/HashMap;

    .line 109
    iput-boolean v1, p0, Lcom/google/ads/h;->c:Z

    .line 110
    iput-boolean v1, p0, Lcom/google/ads/h;->d:Z

    .line 111
    iput-object v2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    .line 112
    iput-object v2, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    .line 113
    iput-boolean v1, p0, Lcom/google/ads/h;->h:Z

    .line 114
    iput-boolean v1, p0, Lcom/google/ads/h;->i:Z

    .line 115
    iput-object v2, p0, Lcom/google/ads/h;->j:Landroid/view/View;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/f;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .registers 9

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->h:Z

    const-string v1, "startLoadAdTask has already been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->b(ZLjava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/h;->h:Z

    .line 143
    iget-object v6, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/i;

    iget-object v3, p0, Lcom/google/ads/h;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/h;->m:Lcom/google/ads/AdRequest;

    iget-object v5, p0, Lcom/google/ads/h;->n:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/i;-><init>(Lcom/google/ads/h;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 146
    monitor-exit p0

    return-void

    .line 137
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 285
    monitor-exit p0

    return-void

    .line 284
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/google/ads/mediation/MediationAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/google/ads/g$a;)V
    .registers 4

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/h;->d:Z

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/h;->c:Z

    .line 263
    iput-object p2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 265
    monitor-exit p0

    return-void

    .line 261
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/h$1;

    invoke-direct {v1, p0}, Lcom/google/ads/h$1;-><init>(Lcom/google/ads/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 179
    monitor-exit p0

    return-void

    .line 149
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 3

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/google/ads/h;->d:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 195
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/ads/g$a;
    .registers 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    if-nez v0, :cond_9

    .line 206
    sget-object v0, Lcom/google/ads/g$a;->d:Lcom/google/ads/g$a;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 208
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    .line 204
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Landroid/view/View;
    .registers 3

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 4

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    .line 223
    :try_start_a
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    .line 225
    iget-object v1, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/h$2;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/h$2;-><init>(Lcom/google/ads/h;Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_18} :catch_1a
    .catchall {:try_start_a .. :try_end_18} :catchall_21

    .line 245
    :goto_18
    monitor-exit p0

    return-void

    .line 241
    :catch_1a
    move-exception v0

    .line 242
    :try_start_1b
    const-string v1, "In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    goto :goto_18

    .line 219
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "\"adapter was not created.\""
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_f

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i()Lcom/google/ads/mediation/MediationAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()Lcom/google/ads/e;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    return-object v0
.end method

.method declared-synchronized k()V
    .registers 2

    .prologue
    .line 288
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 289
    monitor-exit p0

    return-void

    .line 288
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()Z
    .registers 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
