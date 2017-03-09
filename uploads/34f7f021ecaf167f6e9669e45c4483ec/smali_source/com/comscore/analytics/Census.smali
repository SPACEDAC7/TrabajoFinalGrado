.class public Lcom/comscore/analytics/Census;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/comscore/analytics/Census;

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/comscore/analytics/Census;->a:Lcom/comscore/analytics/Census;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/comscore/analytics/Census;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/comscore/analytics/Census;
    .registers 2

    sget-object v0, Lcom/comscore/analytics/Census;->a:Lcom/comscore/analytics/Census;

    if-nez v0, :cond_13

    sget-object v1, Lcom/comscore/analytics/Census;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/comscore/analytics/Census;->a:Lcom/comscore/analytics/Census;

    if-nez v0, :cond_12

    new-instance v0, Lcom/comscore/analytics/Census;

    invoke-direct {v0}, Lcom/comscore/analytics/Census;-><init>()V

    sput-object v0, Lcom/comscore/analytics/Census;->a:Lcom/comscore/analytics/Census;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/comscore/analytics/Census;->a:Lcom/comscore/analytics/Census;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public notifyStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    invoke-static {}, Lcom/comscore/analytics/comScore;->getCore()Lcom/comscore/analytics/Core;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/comscore/analytics/Core;->setAppContext(Landroid/content/Context;)V

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iput-object p2, p0, Lcom/comscore/analytics/Census;->b:Ljava/lang/String;

    :cond_12
    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {v1, p3, v4}, Lcom/comscore/analytics/Core;->setPublisherSecret(Ljava/lang/String;Z)V

    :cond_1d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "c2"

    iget-object v3, p0, Lcom/comscore/analytics/Census;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const-string v3, "start"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "https://sb.scorecardresearch.com/p2?"

    :goto_38
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/comscore/analytics/Core;->setPixelURL(Ljava/lang/String;Z)V

    sget-object v0, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    invoke-virtual {v1, v0, v2, v4}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void

    :cond_42
    const-string v0, "http://b.scorecardresearch.com/p2?"

    goto :goto_38
.end method
