.class public Lcom/comscore/analytics/Core;
.super Ljava/lang/Object;


# static fields
.field protected static final x:J = 0x12cL


# instance fields
.field protected A:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected B:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected C:J

.field protected D:J

.field protected E:J

.field protected F:J

.field protected G:J

.field protected H:J

.field protected I:J

.field protected J:J

.field protected K:J

.field protected L:Lcom/comscore/analytics/SessionState;

.field protected M:J

.field protected N:J

.field protected O:J

.field protected P:I

.field protected Q:I

.field protected R:I

.field protected S:J

.field protected T:J

.field protected U:J

.field protected V:I

.field protected W:J

.field protected X:J

.field protected Y:Ljava/lang/Runnable;

.field protected Z:Ljava/lang/String;

.field a:Lcom/comscore/utils/OfflineMeasurementsCache;

.field aa:Ljava/lang/String;

.field ab:Landroid/content/Context;

.field protected final ac:Ljava/util/HashMap;
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

.field protected final ad:Ljava/util/HashMap;
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

.field ae:Z

.field protected af:J

.field protected ag:Z

.field protected ah:Ljava/lang/Thread$UncaughtExceptionHandler;

.field ai:Z

.field aj:Lcom/comscore/utils/TransmissionMode;

.field ak:Lcom/comscore/utils/TransmissionMode;

.field al:[Ljava/lang/String;

.field private am:Lcom/comscore/utils/id/IdHelper;

.field private an:Z

.field private ao:Z

.field b:Lcom/comscore/utils/Storage;

.field c:Lcom/comscore/applications/KeepAlive;

.field d:Lcom/comscore/utils/CacheFlusher;

.field e:Lcom/comscore/utils/DispatchQueue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field f:Lcom/comscore/utils/task/TaskExecutor;

.field g:Lcom/comscore/measurement/MeasurementDispatcher;

.field h:Lcom/comscore/utils/ConnectivityChangeReceiver;

.field protected i:Ljava/lang/Runnable;

.field protected j:Ljava/lang/Runnable;

.field protected k:J

.field protected l:Z

.field protected m:Z

.field n:Z

.field o:Ljava/util/concurrent/atomic/AtomicInteger;

.field p:J

.field q:Ljava/util/concurrent/atomic/AtomicInteger;

.field r:J

.field s:J

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field protected y:Lcom/comscore/analytics/ApplicationState;

.field protected z:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/comscore/analytics/Core;->l:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/Core;->m:Z

    iput-boolean v2, p0, Lcom/comscore/analytics/Core;->n:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/Core;->v:Z

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    sget-object v0, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->af:J

    iput-boolean v2, p0, Lcom/comscore/analytics/Core;->ag:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/Core;->an:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ah:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean v3, p0, Lcom/comscore/analytics/Core;->ae:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ac:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->reset()V

    return-void
.end method

.method private A()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "lastActivityTime"

    invoke-virtual {p0, v1, v0}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ns_ap_fg"

    const-string v1, "foregroundTransitionsCount"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "installTime"

    const-string v1, "installId"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_ap_ver"

    const-string v1, "previousVersion"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/analytics/Core;)Lcom/comscore/utils/id/IdHelper;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v1, p1, v0}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-object v0

    :cond_e
    if-eqz p3, :cond_23

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_23
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Lcom/comscore/analytics/Core;Lcom/comscore/utils/TransmissionMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/utils/TransmissionMode;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/analytics/Core;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/comscore/analytics/Core;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/comscore/utils/TransmissionMode;)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/comscore/analytics/Core;->aj:Lcom/comscore/utils/TransmissionMode;

    goto :goto_4
.end method

.method static synthetic a(Lcom/comscore/analytics/Core;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->an:Z

    return p1
.end method

.method static synthetic b(Lcom/comscore/analytics/Core;Lcom/comscore/utils/TransmissionMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/utils/TransmissionMode;)V

    return-void
.end method

.method static synthetic b(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/comscore/utils/TransmissionMode;)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/comscore/analytics/Core;->ak:Lcom/comscore/utils/TransmissionMode;

    goto :goto_4
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/id/IdHelper;->setPublisherSecret(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->generateIds()V

    goto :goto_4
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method static synthetic b(Lcom/comscore/analytics/Core;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    return v0
.end method

.method static synthetic b(Lcom/comscore/analytics/Core;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->ao:Z

    return p1
.end method

.method static synthetic c(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "appName"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/comscore/analytics/Core;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->ao:Z

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "https://sb.scorecardresearch.com/p2?"

    :goto_d
    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-direct {p0, v0, p1}, Lcom/comscore/analytics/Core;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    const-string v0, "http://b.scorecardresearch.com/p2?"

    goto :goto_d
.end method

.method public static getInstance()Lcom/comscore/analytics/Core;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/comscore/analytics/comScore;->getCore()Lcom/comscore/analytics/Core;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/measurement/Measurement;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/comscore/measurement/Measurement;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/comscore/applications/ApplicationMeasurement;->newApplicationMeasurement(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/ApplicationMeasurement;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/comscore/utils/Storage;)Lcom/comscore/utils/id/IdHelper;
    .registers 4

    new-instance v0, Lcom/comscore/utils/id/IdHelper;

    invoke-direct {v0, p1, p2, p0}, Lcom/comscore/utils/id/IdHelper;-><init>(Landroid/content/Context;Lcom/comscore/utils/Storage;Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method protected a()V
    .registers 3

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->b()Lcom/comscore/utils/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->e()Lcom/comscore/measurement/MeasurementDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->g:Lcom/comscore/measurement/MeasurementDispatcher;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/utils/Storage;)V

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->c()Lcom/comscore/utils/DispatchQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->e:Lcom/comscore/utils/DispatchQueue;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->f()Lcom/comscore/applications/KeepAlive;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->g()Lcom/comscore/utils/OfflineMeasurementsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->h()Lcom/comscore/utils/CacheFlusher;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->i()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->j()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/Core;->a(Landroid/content/Context;Lcom/comscore/utils/Storage;)Lcom/comscore/utils/id/IdHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    return-void
.end method

.method a(IZ)V
    .registers 5

    const/16 v0, 0x3c

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    if-ge p1, v0, :cond_d

    move p1, v0

    :cond_d
    iput-boolean p2, p0, Lcom/comscore/analytics/Core;->l:Z

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->k:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    sget-object v1, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->v()V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    sget-object v1, Lcom/comscore/analytics/ApplicationState;->BACKGROUND_UX_ACTIVE:Lcom/comscore/analytics/ApplicationState;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->l:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->v()V

    goto :goto_6
.end method

.method protected a(Lcom/comscore/analytics/ApplicationState;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaving application state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/ab;->a:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    :goto_21
    return-void

    :pswitch_22
    iget-object v0, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->start()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/applications/KeepAlive;->start(I)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {v0}, Lcom/comscore/utils/CacheFlusher;->start()V

    goto :goto_21

    :pswitch_42
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    goto :goto_21

    :pswitch_46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->setCurrentActivityName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    goto :goto_21

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_42
        :pswitch_46
    .end packed-switch
.end method

.method protected a(Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;)V
    .registers 6

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    if-eq p2, v0, :cond_4

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->isAutoStartEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->n:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    goto :goto_4
.end method

.method protected a(Lcom/comscore/analytics/SessionState;)V
    .registers 8

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaving session state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    sget-object v2, Lcom/comscore/analytics/ab;->b:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    goto :goto_4

    :pswitch_2b
    iget-object v2, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v3, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    :cond_39
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->U:J

    :pswitch_3b
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->T:J

    :pswitch_3d
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->S:J

    goto :goto_4

    :pswitch_40
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->p()Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->M:J

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->X:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->M:J

    goto :goto_4

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3b
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method protected a(Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V
    .registers 3

    return-void
.end method

.method a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->z()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->x()V

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->y()V

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->n:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    if-eq p1, v0, :cond_2d

    iget-object v0, p0, Lcom/comscore/analytics/Core;->g:Lcom/comscore/measurement/MeasurementDispatcher;

    sget-object v1, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/measurement/Measurement;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/comscore/measurement/MeasurementDispatcher;->sendMeasurmement(Lcom/comscore/measurement/Measurement;Z)Z

    :cond_2d
    sget-object v0, Lcom/comscore/applications/EventType;->CLOSE:Lcom/comscore/applications/EventType;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/comscore/analytics/Core;->g:Lcom/comscore/measurement/MeasurementDispatcher;

    invoke-static {p2}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/measurement/Measurement;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/comscore/measurement/MeasurementDispatcher;->sendMeasurmement(Lcom/comscore/measurement/Measurement;Z)Z

    goto :goto_5
.end method

.method protected a(Lcom/comscore/utils/Storage;)V
    .registers 3

    invoke-direct {p0}, Lcom/comscore/analytics/Core;->A()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->g:Lcom/comscore/measurement/MeasurementDispatcher;

    invoke-virtual {v0}, Lcom/comscore/measurement/MeasurementDispatcher;->loadEventData()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 11

    const/16 v3, 0x3f

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4e

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_25
    if-ge v0, v4, :cond_48

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3d

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {p0, v6, v5, v1}, Lcom/comscore/analytics/Core;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3d
    array-length v6, v5

    if-ne v6, v8, :cond_3a

    const-string v6, "name"

    aget-object v5, v5, v1

    invoke-virtual {p0, v6, v5, v1}, Lcom/comscore/analytics/Core;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3a

    :cond_48
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4e
    :goto_4e
    iput-object p1, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    goto :goto_8

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v2, p1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v3, v0}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/comscore/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v3, v0, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2e
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/analytics/ab;->a:[I

    iget-object v5, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v5}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_b4

    :goto_1a
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->K:J

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "foregroundTransitionsCount"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedForegroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedInactiveTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalForegroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalInactiveTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_90
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->G:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->G:J

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->C:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->C:J

    goto :goto_1a

    :pswitch_9b
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->F:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->F:J

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->D:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->D:J

    goto/16 :goto_1a

    :pswitch_a7
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->E:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->E:J

    goto/16 :goto_1a

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_9b
        :pswitch_90
    .end packed-switch
.end method

.method public allowLiveTransmission(Lcom/comscore/utils/TransmissionMode;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/utils/TransmissionMode;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->getLiveTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/i;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/i;-><init>(Lcom/comscore/analytics/Core;Lcom/comscore/utils/TransmissionMode;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public allowOfflineTransmission(Lcom/comscore/utils/TransmissionMode;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/utils/TransmissionMode;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/j;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/j;-><init>(Lcom/comscore/analytics/Core;Lcom/comscore/utils/TransmissionMode;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected b()Lcom/comscore/utils/Storage;
    .registers 3

    new-instance v0, Lcom/comscore/utils/Storage;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/comscore/utils/Storage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b(Lcom/comscore/analytics/ApplicationState;)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering application state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/ab;->a:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    goto :goto_4

    :pswitch_27
    iget-object v0, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->stop()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    invoke-virtual {v0}, Lcom/comscore/applications/KeepAlive;->stop()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {v0}, Lcom/comscore/utils/CacheFlusher;->stop()V

    :try_start_36
    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3d} :catch_52

    :goto_3d
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    goto :goto_4

    :pswitch_41
    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->v()V

    goto :goto_4

    :pswitch_49
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->v()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_4

    :catch_52
    move-exception v0

    goto :goto_3d

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_27
        :pswitch_41
        :pswitch_49
    .end packed-switch
.end method

.method protected b(Lcom/comscore/analytics/SessionState;)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering session state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/ab;->b:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    goto :goto_4

    :pswitch_27
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->q()V

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->o()V

    :pswitch_2d
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->r()V

    :pswitch_30
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->p()Z

    goto :goto_4

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method protected b(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->X:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/analytics/ab;->b:[I

    iget-object v5, p0, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v5}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_f2

    :goto_1a
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->X:J

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->X:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->S:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastActiveUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->U:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->M:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedActiveUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->O:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "activeUserSessionCount"

    iget v2, p0, Lcom/comscore/analytics/Core;->R:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "userSessionCount"

    iget v2, p0, Lcom/comscore/analytics/Core;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastUserInteractionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->W:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "userInteractionCount"

    iget v2, p0, Lcom/comscore/analytics/Core;->V:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "applicationSessionCountKey"

    iget v2, p0, Lcom/comscore/analytics/Core;->P:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_da
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->O:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->O:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->U:J

    :pswitch_e1
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->N:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->N:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->T:J

    :pswitch_e8
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->M:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->M:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->S:J

    goto/16 :goto_1a

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_da
        :pswitch_e1
        :pswitch_e8
    .end packed-switch
.end method

.method protected c()Lcom/comscore/utils/DispatchQueue;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/comscore/utils/DispatchQueue;

    invoke-direct {v0, p0}, Lcom/comscore/utils/DispatchQueue;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->ae:Z

    return-void
.end method

.method protected d()Lcom/comscore/utils/task/TaskExecutor;
    .registers 2

    new-instance v0, Lcom/comscore/utils/task/TaskExecutor;

    invoke-direct {v0, p0}, Lcom/comscore/utils/task/TaskExecutor;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method protected d(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->n:Z

    goto :goto_4
.end method

.method public disableAutoUpdate()V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/analytics/Core;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->k:J

    goto :goto_4
.end method

.method protected e()Lcom/comscore/measurement/MeasurementDispatcher;
    .registers 2

    new-instance v0, Lcom/comscore/measurement/MeasurementDispatcher;

    invoke-direct {v0, p0}, Lcom/comscore/measurement/MeasurementDispatcher;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method public enableAutoUpdate(IZZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p3, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/comscore/analytics/Core;->a(IZ)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/x;-><init>(Lcom/comscore/analytics/Core;IZ)V

    invoke-virtual {v0, v1, p3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected f()Lcom/comscore/applications/KeepAlive;
    .registers 5

    new-instance v0, Lcom/comscore/applications/KeepAlive;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, p0, v2, v3}, Lcom/comscore/applications/KeepAlive;-><init>(Lcom/comscore/analytics/Core;J)V

    return-object v0
.end method

.method public flush(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/v;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/v;-><init>(Lcom/comscore/analytics/Core;)V

    invoke-virtual {v0, v1, p1}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected g()Lcom/comscore/utils/OfflineMeasurementsCache;
    .registers 2

    new-instance v0, Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-direct {v0, p0}, Lcom/comscore/utils/OfflineMeasurementsCache;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method public getActiveUserSessionCountDelta(Z)I
    .registers 6

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/analytics/Core;->R:I

    if-ltz v1, :cond_1d

    iget v0, p0, Lcom/comscore/analytics/Core;->R:I

    if-eqz p1, :cond_1d

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/Core;->R:I

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "activeUserSessionCount"

    iget v3, p0, Lcom/comscore/analytics/Core;->R:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return v0
.end method

.method public getActiveUserSessionTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->O:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->O:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedActiveUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->O:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getAppContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    :cond_c
    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/Core;->setAppName(Ljava/lang/String;Z)V
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_2f} :catch_32

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    return-object v0

    :catch_32
    move-exception v0

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->aa:Ljava/lang/String;

    goto :goto_2f
.end method

.method public getApplicationSessionCountDelta(Z)I
    .registers 6

    iget v0, p0, Lcom/comscore/analytics/Core;->P:I

    if-eqz p1, :cond_18

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/Core;->P:I

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "applicationSessionCountKey"

    iget v3, p0, Lcom/comscore/analytics/Core;->P:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return v0
.end method

.method public getApplicationSessionTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->M:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->M:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedApplicationSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->M:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getApplicationState()Lcom/comscore/analytics/ApplicationState;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    return-object v0
.end method

.method public getAutoStartLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAutoStartLabels()Ljava/util/HashMap;
    .registers 2
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

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAutoUpdateInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->k:J

    return-wide v0
.end method

.method public getBackgroundTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->F:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->F:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getBackgroundTotalTime(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->D:J

    if-eqz p1, :cond_1a

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_1a

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->D:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v3, "totalBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-wide v0
.end method

.method public getCacheFlusher()Lcom/comscore/utils/CacheFlusher;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    return-object v0
.end method

.method public getCacheFlushingInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->af:J

    return-wide v0
.end method

.method public getCacheMaxBatchFiles()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxBatchFiles()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x64

    goto :goto_a
.end method

.method public getCacheMaxFlushesInARow()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxPosts()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public getCacheMaxMeasurements()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxMeasurements()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x7d0

    goto :goto_a
.end method

.method public getCacheMeasurementExpiry()J
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMeasurementExpiry()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x1f

    goto :goto_a
.end method

.method public getCacheMinutesToRetry()J
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheWaitMinutes()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x1e

    goto :goto_a
.end method

.method public getColdStartCount()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getColdStartId()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->p:J

    return-wide v0
.end method

.method public getConnectivityReceiver()Lcom/comscore/utils/ConnectivityChangeReceiver;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    return-object v0
.end method

.method public getCrossPublisherId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->getCrossPublisherId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerC2()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->getLabels()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "c2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandlingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->ag:Z

    return v0
.end method

.method public getFirstInstallId()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->s:J

    return-wide v0
.end method

.method public getForegroundTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->G:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->G:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedForegroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->G:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getForegroundTotalTime(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->C:J

    if-eqz p1, :cond_1a

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_1a

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->C:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v3, "totalForegroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-wide v0
.end method

.method public getForegroundTransitionsCountDelta(Z)I
    .registers 8

    iget-object v0, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz p1, :cond_24

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "foregroundTransitionsCount"

    iget-object v3, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return v0
.end method

.method public getGenesis()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    return-wide v0
.end method

.method public getIdHelper()Lcom/comscore/utils/id/IdHelper;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    return-object v0
.end method

.method public getInactiveTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->H:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->H:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getInactiveTotalTime(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->E:J

    if-eqz p1, :cond_1a

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_1a

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->E:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-wide v0
.end method

.method public getInstallId()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->r:J

    return-wide v0
.end method

.method public getKeepAlive()Lcom/comscore/applications/KeepAlive;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    return-object v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabels()Ljava/util/HashMap;
    .registers 2
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

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ac:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLiveTransmissionMode()Lcom/comscore/utils/TransmissionMode;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->aj:Lcom/comscore/utils/TransmissionMode;

    return-object v0
.end method

.method public getMeasurementDispatcher()Lcom/comscore/measurement/MeasurementDispatcher;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->g:Lcom/comscore/measurement/MeasurementDispatcher;

    return-object v0
.end method

.method public getMeasurementLabelOrder()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->al:[Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineCache()Lcom/comscore/utils/OfflineMeasurementsCache;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    return-object v0
.end method

.method public getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ak:Lcom/comscore/utils/TransmissionMode;

    return-object v0
.end method

.method public getPixelURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousGenesis()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->J:J

    return-wide v0
.end method

.method public getPreviousVersion()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "previousVersion"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    :cond_18
    return-object v0
.end method

.method public getPublisherSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->getPublisherSecret()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getQueue()Lcom/comscore/utils/DispatchQueue;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->e:Lcom/comscore/utils/DispatchQueue;

    return-object v0
.end method

.method public getRunsCount()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSalt()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->getPublisherSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()Lcom/comscore/analytics/SessionState;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    return-object v0
.end method

.method public getStorage()Lcom/comscore/utils/Storage;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    return-object v0
.end method

.method public getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    return-object v0
.end method

.method public getUserInteractionCount(Z)I
    .registers 6

    iget v0, p0, Lcom/comscore/analytics/Core;->V:I

    if-eqz p1, :cond_19

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/Core;->V:I

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v2, "userInteractionCount"

    iget v3, p0, Lcom/comscore/analytics/Core;->V:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return v0
.end method

.method public getUserSessionCountDelta(Z)I
    .registers 6

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/analytics/Core;->Q:I

    if-ltz v1, :cond_1e

    iget v0, p0, Lcom/comscore/analytics/Core;->Q:I

    if-eqz p1, :cond_1e

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/Core;->Q:I

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v2, "userSessionCount"

    iget v3, p0, Lcom/comscore/analytics/Core;->Q:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return v0
.end method

.method public getUserSessionTimeDelta(Z)J
    .registers 8

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->N:J

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->N:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v3, "accumulatedUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->N:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.1508.28"

    return-object v0
.end method

.method public getVisitorId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->getVisitorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected h()Lcom/comscore/utils/CacheFlusher;
    .registers 2

    new-instance v0, Lcom/comscore/utils/CacheFlusher;

    invoke-direct {v0, p0}, Lcom/comscore/utils/CacheFlusher;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method public handleColdStart()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-boolean v2, p0, Lcom/comscore/analytics/Core;->n:Z

    if-nez v2, :cond_6

    iput-boolean v1, p0, Lcom/comscore/analytics/Core;->n:Z

    iget-object v0, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "coldStartCount"

    iget-object v3, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->p:J

    move v0, v1

    goto :goto_6
.end method

.method protected i()Lcom/comscore/utils/ConnectivityChangeReceiver;
    .registers 2

    new-instance v0, Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-direct {v0, p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;-><init>(Lcom/comscore/analytics/Core;)V

    return-object v0
.end method

.method public incrementRunsCount()V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "runs"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public isAutoStartEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->v:Z

    return v0
.end method

.method public isAutoUpdateEnabled()Z
    .registers 5

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    return v0
.end method

.method public isKeepAliveEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->ae:Z

    return v0
.end method

.method public isSecure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->ai:Z

    return v0
.end method

.method protected j()V
    .registers 11

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->K:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->X:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->S:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->T:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastActiveUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->U:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "foregroundTransitionsCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->G:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->F:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->H:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->C:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->D:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "totalInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->E:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedApplicationSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->M:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedActiveUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->O:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->N:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "activeUserSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/Core;->R:I

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "userSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/Core;->Q:I

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastUserInteractionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->W:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "userInteractionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/Core;->V:I

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "applicationSessionCountKey"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/Core;->P:I

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousGenesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->J:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "genesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_251

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v8, p0, Lcom/comscore/analytics/Core;->J:J

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->S:J

    iget v0, p0, Lcom/comscore/analytics/Core;->P:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/analytics/Core;->P:I

    :goto_160
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "firstInstallId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->s:J

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->s:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_276

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->s:J

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->r:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "firstInstallId"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->s:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "installId"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19f
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_1ec

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    iget-object v4, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v5, "accumulatedInactiveTime"

    iget-wide v6, p0, Lcom/comscore/analytics/Core;->H:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->E:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->E:J

    iget-object v2, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string/jumbo v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ec
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->K:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->X:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->X:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->S:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "runs"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22e

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "runs"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22e
    iget-object v0, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "runs"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v2, "coldStartCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_251
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->p()Z

    move-result v0

    if-nez v0, :cond_270

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->M:J

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->X:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->M:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->M:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_270
    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->S:J

    goto/16 :goto_160

    :cond_276
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28e

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    :cond_28e
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "currentVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c5

    iput-object v0, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "previousVersion"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->r:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "installId"

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2ba
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19f

    :cond_2c5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    const-string v1, "installId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->r:J

    goto :goto_2ba
.end method

.method protected k()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "0"

    :try_start_8
    iget-object v2, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method protected l()V
    .registers 7

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_e
    const-string v1, "comScore.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "Debug"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    const-string v0, "Secure"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/Core;->ai:Z

    const-string v0, "PublisherSecret"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-direct {p0, v0}, Lcom/comscore/analytics/Core;->b(Ljava/lang/String;)V

    :cond_42
    const-string v0, "AppName"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-direct {p0, v0}, Lcom/comscore/analytics/Core;->c(Ljava/lang/String;)V

    :cond_4e
    const-string v0, "CustomerC2"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-direct {p0, v0}, Lcom/comscore/analytics/Core;->d(Ljava/lang/String;)V

    :cond_5a
    const-string v0, "PixelURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;)V

    :cond_66
    const-string v0, "OfflineURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setUrl(Ljava/lang/String;)V

    :cond_74
    const-string v0, "LiveTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7a} :catch_170

    move-result-object v0

    if-eqz v0, :cond_8b

    :try_start_7d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/TransmissionMode;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->aj:Lcom/comscore/utils/TransmissionMode;
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_8b} :catch_169
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8b} :catch_170

    :cond_8b
    :goto_8b
    :try_start_8b
    const-string v0, "OfflineTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_170

    move-result-object v0

    if-eqz v0, :cond_a2

    :try_start_94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/TransmissionMode;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ak:Lcom/comscore/utils/TransmissionMode;
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_a2} :catch_179
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a2} :catch_170

    :cond_a2
    :goto_a2
    :try_start_a2
    const-string v0, "KeepAliveEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/Core;->ae:Z

    const-string v0, "CacheMaxSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c3

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxMeasurements(I)V

    :cond_c3
    const-string v0, "CacheMaxBatchSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d6

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxBatchFiles(I)V

    :cond_d6
    const-string v0, "CacheMaxFlushesInARow"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_e9

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxPosts(I)V

    :cond_e9
    const-string v0, "CacheMinutesToRetry"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_fc

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheWaitMinutes(I)V

    :cond_fc
    const-string v0, "CacheExpiryInDays"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_10f

    iget-object v2, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMeasurementExpiry(I)V

    :cond_10f
    const-string v0, "CacheFlushingInterval"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/comscore/utils/Utils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_12d

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->af:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {v0}, Lcom/comscore/utils/CacheFlusher;->update()V

    :cond_12d
    const-string v0, "ErrorHandlingEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->setErrorHandlingEnabled(Z)V

    const-string v0, "AutoStartEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/Core;->v:Z

    const-string v0, "AutoUpdateInForegroundOnly"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/Utils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "AutoUpdateInterval"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/comscore/utils/Utils;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_168

    invoke-virtual {p0, v1, v0}, Lcom/comscore/analytics/Core;->a(IZ)V

    :cond_168
    :goto_168
    return-void

    :catch_169
    move-exception v0

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->aj:Lcom/comscore/utils/TransmissionMode;
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_16e} :catch_170

    goto/16 :goto_8b

    :catch_170
    move-exception v0

    sget-boolean v1, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v1, :cond_168

    invoke-static {v0}, Lcom/comscore/utils/CSLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_168

    :catch_179
    move-exception v0

    :try_start_17a
    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ak:Lcom/comscore/utils/TransmissionMode;
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17e} :catch_170

    goto/16 :goto_a2
.end method

.method protected m()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    return-object v0
.end method

.method protected n()V
    .registers 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->containsTask(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    :cond_19
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/analytics/Core;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_55

    sget-object v3, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    :goto_27
    iget-wide v4, p0, Lcom/comscore/analytics/Core;->W:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_63

    sget-object v5, Lcom/comscore/analytics/SessionState;->ACTIVE_USER:Lcom/comscore/analytics/SessionState;

    :goto_33
    iget-object v2, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    iget-object v4, p0, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    if-ne v3, v2, :cond_3b

    if-eq v5, v4, :cond_5

    :cond_3b
    new-instance v0, Lcom/comscore/analytics/af;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/comscore/analytics/af;-><init>(Lcom/comscore/analytics/Core;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->m:Z

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    if-eq v3, v0, :cond_7c

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_55
    iget-object v2, p0, Lcom/comscore/analytics/Core;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_60

    sget-object v3, Lcom/comscore/analytics/ApplicationState;->BACKGROUND_UX_ACTIVE:Lcom/comscore/analytics/ApplicationState;

    goto :goto_27

    :cond_60
    sget-object v3, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    goto :goto_27

    :cond_63
    iget-object v0, p0, Lcom/comscore/analytics/Core;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_6e

    sget-object v5, Lcom/comscore/analytics/SessionState;->USER:Lcom/comscore/analytics/SessionState;

    goto :goto_33

    :cond_6e
    iget-object v0, p0, Lcom/comscore/analytics/Core;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_79

    sget-object v5, Lcom/comscore/analytics/SessionState;->APPLICATION:Lcom/comscore/analytics/SessionState;

    goto :goto_33

    :cond_79
    sget-object v5, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    goto :goto_33

    :cond_7c
    iget-object v0, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v6, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    goto :goto_5
.end method

.method public notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p3, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/z;-><init>(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, p3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected o()V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    :cond_13
    new-instance v0, Lcom/comscore/analytics/Core$UserInteractionTask;

    invoke-direct {v0, p0}, Lcom/comscore/analytics/Core$UserInteractionTask;-><init>(Lcom/comscore/analytics/Core;)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public onEnterForeground()V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/ac;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/ac;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public onExitForeground()V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/ad;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/ad;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public onUserInteraction()V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/ae;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/ae;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public onUxActive()V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/l;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/l;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public onUxInactive()V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/w;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/w;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected p()Z
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/analytics/Core;->S:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-lez v1, :cond_22

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v0, p0, Lcom/comscore/analytics/Core;->J:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->I:J

    iget v0, p0, Lcom/comscore/analytics/Core;->P:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/analytics/Core;->P:I

    const/4 v0, 0x1

    :cond_22
    iput-wide v2, p0, Lcom/comscore/analytics/Core;->S:J

    goto :goto_5
.end method

.method protected q()V
    .registers 7

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->U:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    iget v2, p0, Lcom/comscore/analytics/Core;->R:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/analytics/Core;->R:I

    :cond_1a
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->U:J

    goto :goto_4
.end method

.method protected r()V
    .registers 7

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->T:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    iget v2, p0, Lcom/comscore/analytics/Core;->Q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/analytics/Core;->Q:I

    :cond_1a
    iput-wide v0, p0, Lcom/comscore/analytics/Core;->T:J

    goto :goto_4
.end method

.method public reset()V
    .registers 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->aj:Lcom/comscore/utils/TransmissionMode;

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->ak:Lcom/comscore/utils/TransmissionMode;

    iput-boolean v1, p0, Lcom/comscore/analytics/Core;->ai:Z

    sget-object v0, Lcom/comscore/utils/Constants;->LABELS_ORDER:[Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->al:[Ljava/lang/String;

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    sget-object v0, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    iput-object v0, p0, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    iput-boolean v1, p0, Lcom/comscore/analytics/Core;->n:Z

    iget-object v0, p0, Lcom/comscore/analytics/Core;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->p:J

    iget-object v0, p0, Lcom/comscore/analytics/Core;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->s:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->r:J

    iput-object v6, p0, Lcom/comscore/analytics/Core;->t:Ljava/lang/String;

    iput-object v6, p0, Lcom/comscore/analytics/Core;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->C:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->D:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->E:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->F:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->G:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->H:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->M:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->O:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->N:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->I:J

    iput-wide v4, p0, Lcom/comscore/analytics/Core;->J:J

    iput v7, p0, Lcom/comscore/analytics/Core;->R:I

    iput v7, p0, Lcom/comscore/analytics/Core;->Q:I

    iput v1, p0, Lcom/comscore/analytics/Core;->V:I

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->W:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->K:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->X:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->S:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->T:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->U:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->r:J

    iput-wide v2, p0, Lcom/comscore/analytics/Core;->s:J

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->disableAutoUpdate()V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    :cond_79
    iget-object v0, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    :cond_86
    iget-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/comscore/analytics/Core;->c:Lcom/comscore/applications/KeepAlive;

    invoke-virtual {v0}, Lcom/comscore/applications/KeepAlive;->cancel()V

    :cond_8f
    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {v0}, Lcom/comscore/utils/CacheFlusher;->stop()V

    :cond_98
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskExecutor;->removeAllEnqueuedTasks()V

    :cond_a1
    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/comscore/analytics/Core;->b:Lcom/comscore/utils/Storage;

    invoke-virtual {v0}, Lcom/comscore/utils/Storage;->close()V

    :cond_aa
    return-void
.end method

.method public resetVisitorId()V
    .registers 4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/a;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/a;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    return-void
.end method

.method protected s()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->a(Z)V

    return-void
.end method

.method public setAppContext(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    if-nez v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->d()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/ag;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/ag;-><init>(Lcom/comscore/analytics/Core;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_6
.end method

.method public setAppName(Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p2, :cond_b

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/e;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/e;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setAutoStartEnabled(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/n;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/n;-><init>(Lcom/comscore/analytics/Core;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setAutoStartLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public setAutoStartLabels(Ljava/util/HashMap;)V
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

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ad:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_4
.end method

.method public setCacheFlushingInterval(JZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->af:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/t;-><init>(Lcom/comscore/analytics/Core;J)V

    invoke-virtual {v0, v1, p3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCacheMaxBatchFiles(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/p;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/p;-><init>(Lcom/comscore/analytics/Core;I)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCacheMaxFlushesInARow(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/q;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/q;-><init>(Lcom/comscore/analytics/Core;I)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCacheMaxMeasurements(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/o;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/o;-><init>(Lcom/comscore/analytics/Core;I)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCacheMeasurementExpiry(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/s;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/s;-><init>(Lcom/comscore/analytics/Core;I)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCacheMinutesToRetry(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/r;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/r;-><init>(Lcom/comscore/analytics/Core;I)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setCurrentActivityName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/analytics/Core;->w:Ljava/lang/String;

    return-void
.end method

.method public setCustomerC2(Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_13

    invoke-direct {p0, p1}, Lcom/comscore/analytics/Core;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/h;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/h;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setDebug(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/m;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/m;-><init>(Lcom/comscore/analytics/Core;Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/aa;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/aa;-><init>(Lcom/comscore/analytics/Core;Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    return-void
.end method

.method public setErrorHandlingEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->ag:Z

    if-eqz p1, :cond_12

    new-instance v0, Lcom/comscore/utils/CustomExceptionHandler;

    invoke-direct {v0, p0}, Lcom/comscore/utils/CustomExceptionHandler;-><init>(Lcom/comscore/analytics/Core;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_4

    :cond_12
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/Core;->ah:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ah:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_4
.end method

.method public setKeepAliveEnabled(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/Core;->c(Z)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/c;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/c;-><init>(Lcom/comscore/analytics/Core;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p3, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/comscore/analytics/Core;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/g;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setLabels(Ljava/util/HashMap;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/f;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/f;-><init>(Lcom/comscore/analytics/Core;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setMeasurementLabelOrder([Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->al:[Ljava/lang/String;

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/u;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/u;-><init>(Lcom/comscore/analytics/Core;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setOfflineURL(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/b;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/b;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setPixelURL(Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/Core;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/ah;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/ah;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setPublisherSecret(Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/d;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/d;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method public setSecure(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p2, :cond_a

    iput-boolean p1, p0, Lcom/comscore/analytics/Core;->ai:Z

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v1, Lcom/comscore/analytics/k;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/k;-><init>(Lcom/comscore/analytics/Core;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_4
.end method

.method protected t()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->b(Z)V

    return-void
.end method

.method protected u()Lcom/comscore/utils/OfflineMeasurementsCache;
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    return-object v0
.end method

.method public update()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/Core;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->containsTask(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->j:Ljava/lang/Runnable;

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/comscore/analytics/Core;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/Core;->b(Z)V

    goto :goto_4
.end method

.method protected v()V
    .registers 8

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/comscore/analytics/Core;->w()V

    iget-wide v0, p0, Lcom/comscore/analytics/Core;->k:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    new-instance v0, Lcom/comscore/analytics/y;

    invoke-direct {v0, p0}, Lcom/comscore/analytics/y;-><init>(Lcom/comscore/analytics/Core;)V

    iput-object v0, p0, Lcom/comscore/analytics/Core;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/comscore/analytics/Core;->k:J

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/comscore/analytics/Core;->k:J

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    goto :goto_4
.end method

.method protected w()V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/Core;->an:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/Core;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/Core;->i:Ljava/lang/Runnable;

    goto :goto_4
.end method

.method protected x()V
    .registers 1

    return-void
.end method

.method protected y()V
    .registers 1

    return-void
.end method

.method z()Z
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/Core;->ab:Landroid/content/Context;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/comscore/analytics/Core;->am:Lcom/comscore/utils/id/IdHelper;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->isPublisherSecretEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/comscore/analytics/Core;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
