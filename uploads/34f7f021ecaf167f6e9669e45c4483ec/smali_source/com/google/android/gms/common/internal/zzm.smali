.class final Lcom/google/android/gms/common/internal/zzm;
.super Lcom/google/android/gms/common/internal/zzl;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzm$zza;,
        Lcom/google/android/gms/common/internal/zzm$zzb;
    }
.end annotation


# instance fields
.field private final En:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/common/internal/zzm$zza;",
            "Lcom/google/android/gms/common/internal/zzm$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final Eo:Lcom/google/android/gms/common/stats/zza;

.field private final Ep:J

.field private final mHandler:Landroid/os/Handler;

.field private final zzatc:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzl;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->zzatc:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzaxr()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->Eo:Lcom/google/android/gms/common/stats/zza;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzm;->Ep:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzm$zzb;

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzm$zzb;-><init>(Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/internal/zzm$zza;)V

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzhw(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zzb;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x51

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    :try_start_5e
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zzb;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_7a

    goto :goto_22

    :pswitch_69
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zzb;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zzb;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_22

    :pswitch_75
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzhw(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_5b

    goto :goto_22

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_69
        :pswitch_75
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->zzatc:Landroid/content/Context;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 10

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzm$zzb;

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Nonexistent connection status for service config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_69

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzawf()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzm;->Ep:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_3c .. :try_end_81} :catchall_39

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm;->Eo:Lcom/google/android/gms/common/stats/zza;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzm$zza;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzm$zzb;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzawf()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzm$zzb;->isBound()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "GmsClientSupervisor"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzhx(Ljava/lang/String;)V

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm;->En:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_6

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_31

    throw v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzm$zza;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/zzm$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzm$zza;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/zzm$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method
