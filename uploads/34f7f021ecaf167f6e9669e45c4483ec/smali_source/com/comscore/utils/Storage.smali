.class public Lcom/comscore/utils/Storage;
.super Ljava/lang/Object;


# static fields
.field public static final APP_NAME_KEY:Ljava/lang/String; = "appName"

.field private static final h:Ljava/lang/String; = "cSPrefs"

.field private static final i:J = 0x12cL


# instance fields
.field protected a:Landroid/content/SharedPreferences;

.field protected final b:Ljava/util/HashMap;
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

.field protected final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/Object;

.field protected final e:Ljava/lang/Object;

.field protected f:J

.field protected g:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cSPrefs"

    invoke-direct {p0, p1, v0}, Lcom/comscore/utils/Storage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/Storage;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    new-instance v0, Lcom/comscore/utils/d;

    invoke-direct {v0, p0}, Lcom/comscore/utils/d;-><init>(Lcom/comscore/utils/Storage;)V

    iput-object v0, p0, Lcom/comscore/utils/Storage;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/comscore/utils/Storage;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 9

    const-wide/16 v6, 0x12c

    iget-object v1, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_22

    iget-wide v2, p0, Lcom/comscore/utils/Storage;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/comscore/utils/Storage;->f:J

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/comscore/utils/Storage;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_22
    :goto_22
    monitor-exit v1

    return-void

    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/comscore/utils/Storage;->f:J

    iget-object v0, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_22

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_42

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/Storage;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/comscore/utils/Storage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    const/4 v0, 0x1

    :try_start_46
    iput-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3f

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_42

    return-void
.end method

.method public add(Ljava/lang/String;J)V
    .registers 10

    iget-object v4, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_31

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    :try_start_1b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_33
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3e

    move-result-wide v0

    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/comscore/utils/Storage;->a()V

    :cond_31
    :goto_31
    monitor-exit v4

    return-void

    :catch_33
    move-exception v0

    move-wide v0, v2

    goto :goto_1f

    :cond_36
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :catchall_3e
    move-exception v0

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method protected b()V
    .registers 7

    :goto_0
    iget-object v1, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/comscore/utils/Storage;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_12

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_1c
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    :goto_17
    :try_start_17
    monitor-exit v1

    goto :goto_0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v0

    :catch_1c
    move-exception v0

    goto :goto_17
.end method

.method protected c()V
    .registers 7

    iget-object v2, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/comscore/utils/Storage;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_37

    const-wide/16 v4, -0x1

    :try_start_8
    iput-wide v4, p0, Lcom/comscore/utils/Storage;->f:J

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3a

    :try_start_b
    iget-object v0, p0, Lcom/comscore/utils/Storage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0

    :cond_3d
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_41
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_37

    return-void
.end method

.method public clear()V
    .registers 4

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/comscore/utils/Storage;->a()V

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public close()V
    .registers 7

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    :goto_6
    iget-wide v2, p0, Lcom/comscore/utils/Storage;->f:J
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1a

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_18

    :try_start_e
    iget-object v0, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_16
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    goto :goto_6

    :catch_16
    move-exception v0

    goto :goto_6

    :cond_18
    :try_start_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    :goto_1a
    return-object v0

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1f

    const-string v0, ""

    goto :goto_1a

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public has(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    :goto_12
    return-object v0

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/comscore/utils/Storage;->a()V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/comscore/utils/Storage;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/comscore/utils/Storage;->g:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eq v0, p2, :cond_30

    if-eqz p2, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_23
    iget-object v0, p0, Lcom/comscore/utils/Storage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/comscore/utils/Storage;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/comscore/utils/Storage;->a()V

    :cond_30
    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method
