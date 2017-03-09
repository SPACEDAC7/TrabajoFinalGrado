.class public Lcom/google/android/gms/ads/internal/formats/zzh;
.super Lcom/google/android/gms/ads/internal/formats/zzj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzako:Ljava/lang/Object;

.field private zzbnp:Lcom/google/android/gms/internal/zzhd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbnq:Lcom/google/android/gms/internal/zzhe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbnr:Lcom/google/android/gms/ads/internal/zzq;

.field private zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbnt:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V
    .registers 14

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, p4

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzav;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnt:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    return-void
.end method


# virtual methods
.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnt:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2d

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhd;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_26
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    :cond_13
    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnt:Z

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhe;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_2d

    goto :goto_13

    :catch_26
    move-exception v0

    :try_start_27
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_16
    :goto_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_54

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhd;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhd;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhe;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhe;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4c} :catch_4d
    .catchall {:try_start_18 .. :try_end_4c} :catchall_54

    goto :goto_16

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string v2, "Failed to call performClick"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_54

    throw v0
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzr(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Landroid/view/View;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V

    :cond_1a
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_3a

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhd;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhd;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_32} :catch_33
    .catchall {:try_start_1c .. :try_end_32} :catchall_3a

    goto :goto_1a

    :catch_33
    move-exception v0

    :try_start_34
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhe;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhe;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_53} :catch_33
    .catchall {:try_start_3d .. :try_end_53} :catchall_3a

    goto :goto_1a
.end method

.method public zzc(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnp:Lcom/google/android/gms/internal/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhd;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_20
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_27

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnq:Lcom/google/android/gms/internal/zzhe;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzhe;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_27

    goto :goto_10

    :catch_20
    move-exception v0

    :try_start_21
    const-string v2, "Failed to call untrackView"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/internal/formats/zzi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzmv()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbnt:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzmw()Lcom/google/android/gms/ads/internal/formats/zzi;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh;->zzbns:Lcom/google/android/gms/ads/internal/formats/zzi;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzmx()Lcom/google/android/gms/internal/zzmd;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
