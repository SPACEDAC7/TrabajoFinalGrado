.class public Lcom/google/android/gms/ads/internal/formats/zzf;
.super Lcom/google/android/gms/internal/zzeo$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzi$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private final zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

.field private zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

.field private final zzbnm:Ljava/lang/String;

.field private final zzbnn:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbno:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/zza;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeo$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnn:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbno:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

    return-void
.end method


# virtual methods
.method public getAvailableAssetNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbno:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_12

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbno:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbno:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_42
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnm:Ljava/lang/String;

    return-object v0
.end method

.method public performClick(Ljava/lang/String;)V
    .registers 9

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzako:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    if-nez v0, :cond_e

    const-string v0, "Attempt to call performClick before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    monitor-exit v6

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v6

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public recordImpression()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    if-nez v0, :cond_e

    const-string v0, "Attempt to perform recordImpression before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_d

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzba(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbno:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzbb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeg;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbnn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeg;

    return-object v0
.end method

.method public zzmq()Ljava/lang/String;
    .registers 2

    const-string v0, "3"

    return-object v0
.end method

.method public zzmr()Lcom/google/android/gms/ads/internal/formats/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzf;->zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method
