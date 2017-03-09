.class public Lcom/comscore/streaming/StreamSenseMediaPlayer;
.super Landroid/media/MediaPlayer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/util/Timer;

.field b:Ljava/util/Timer;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private j:Lcom/comscore/streaming/StreamSense;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnInfoListener;

.field private final s:Landroid/media/MediaPlayer$OnInfoListener;

.field private t:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private final u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private v:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final w:Landroid/media/MediaPlayer$OnPreparedListener;

.field private x:Ljava/util/Timer;

.field private y:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/16 v5, 0x1f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const-string v0, "local_file"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c:Ljava/lang/String;

    iput v5, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_5d

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g:Z

    iput-boolean v1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->h:Z

    iput v5, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i:I

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    const-string v0, "0"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k:Ljava/lang/String;

    const-string v0, "0x0"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/comscore/streaming/g;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/g;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->r:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/h;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->s:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->t:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/comscore/streaming/i;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/i;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/comscore/streaming/j;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/j;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c()V

    return-void

    :cond_5d
    move v0, v2

    goto :goto_15
.end method

.method public constructor <init>(Z)V
    .registers 8

    const/16 v5, 0x1f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const-string v0, "local_file"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c:Ljava/lang/String;

    iput v5, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_5d

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g:Z

    iput-boolean v1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->h:Z

    iput v5, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i:I

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    const-string v0, "0"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k:Ljava/lang/String;

    const-string v0, "0x0"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/comscore/streaming/g;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/g;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->r:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/h;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->s:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->t:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/comscore/streaming/i;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/i;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/comscore/streaming/j;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/j;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;

    iput-object v4, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c()V

    return-void

    :cond_5d
    move v0, v2

    goto :goto_15
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForSeeking()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k()V

    :cond_12
    return-void
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l()V

    return-void
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f(Ljava/util/HashMap;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    move-result v2

    iget-object v3, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    if-nez v3, :cond_25

    if-nez v2, :cond_25

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    iget-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    new-instance v3, Lcom/comscore/streaming/k;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/comscore/streaming/k;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;JLjava/util/HashMap;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/HashMap;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    move-result v0

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f()Z

    move-result v1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :cond_1a
    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    move-result v1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f(Ljava/util/HashMap;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    :cond_18
    monitor-exit p0

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    return p1
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlayerPausedForSeeking()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Z)V

    :cond_13
    return-void
.end method

.method private b(Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Z)V

    :cond_a
    return-void
.end method

.method static synthetic b(Lcom/comscore/streaming/StreamSenseMediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic b(Lcom/comscore/streaming/StreamSenseMediaPlayer;Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    move-result v1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f()Z

    move-result v2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d(Ljava/util/HashMap;)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d(Ljava/util/HashMap;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    :cond_1a
    monitor-exit p0

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    return v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->s:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->BUFFER:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :cond_18
    return-void
.end method

.method static synthetic c(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a()V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Ljava/util/HashMap;J)V

    return-void
.end method

.method private declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->x:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic e(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b()V

    return-void
.end method

.method private e(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i()Z

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :cond_1b
    return-void
.end method

.method static synthetic f(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->r:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private f(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :cond_18
    return-void
.end method

.method private declared-synchronized f()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->t:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method private declared-synchronized g()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private h()V
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic i(Lcom/comscore/streaming/StreamSenseMediaPlayer;)J
    .registers 3

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized i()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    iget-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    new-instance v3, Lcom/comscore/streaming/l;

    invoke-direct {v3, p0, v0, v1}, Lcom/comscore/streaming/l;-><init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;J)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d()Z

    move-result v0

    return v0
.end method

.method private k()V
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic k(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j()V

    return-void
.end method

.method static synthetic l(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->y:Ljava/util/Timer;

    return-object v0
.end method

.method private l()V
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e(Ljava/util/HashMap;)V

    return-void
.end method

.method private m()J
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getCurrentPosition()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    :goto_7
    return-wide v0

    :catch_8
    move-exception v2

    goto :goto_7
.end method

.method static synthetic m(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n()Z

    move-result v0

    return v0
.end method

.method private n()Z
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->isPlaying()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method static synthetic n(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i()Z

    move-result v0

    return v0
.end method

.method private o()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->p()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private p()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_cl"

    iget-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_st_cs"

    iget-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_st_cu"

    iget-object v2, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_st_mp"

    const-class v2, Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_st_mv"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public isPlayerPausedForBuffering()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    return v0
.end method

.method public isPlayerPausedForSeeking()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    return v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->i()Z

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m:Z

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->h()V

    return-void
.end method

.method public prepare()V
    .registers 3

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l:Ljava/lang/String;

    return-void
.end method

.method public prepareAsync()V
    .registers 3

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l:Ljava/lang/String;

    return-void
.end method

.method public release()V
    .registers 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l()V

    return-void
.end method

.method public seekTo(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n:Z

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->n()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->m()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Ljava/util/HashMap;J)V

    :cond_17
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o:Ljava/lang/String;

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const-string v0, "local_file"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o:Ljava/lang/String;

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const-string v0, "local_file"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o:Ljava/lang/String;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->o:Ljava/lang/String;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->s:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->r:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->t:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setStreamSense(Lcom/comscore/streaming/StreamSense;)V
    .registers 5

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseMediaPlayer;->j:Lcom/comscore/streaming/StreamSense;

    const-string v1, "ns_st_pv"

    const-string v2, "4.1307.02"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSense;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e()V

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->l()V

    return-void
.end method
