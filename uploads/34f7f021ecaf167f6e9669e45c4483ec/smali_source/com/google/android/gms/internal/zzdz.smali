.class public Lcom/google/android/gms/internal/zzdz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field zzblg:Z

.field private final zzblx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbly:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzblz:Ljava/lang/String;

.field private zzbma:Lcom/google/android/gms/internal/zzdx;

.field private zzbmb:Lcom/google/android/gms/internal/zzdz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblx:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdz;->zzblg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    const-string v1, "ad_format"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzdx;J[Ljava/lang/String;)Z
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    array-length v2, p4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_16

    aget-object v3, p4, v0

    new-instance v4, Lcom/google/android/gms/internal/zzdx;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/zzdx;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdx;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdz;->zzblx:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public varargs zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/zzdx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblg:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public zzaz(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblg:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz;->zzblz:Ljava/lang/String;

    monitor-exit v1

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public zzc(J)Lcom/google/android/gms/internal/zzdx;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdz;->zzblg:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/zzdx;

    invoke-direct {v1, p1, p2, v0, v0}, Lcom/google/android/gms/internal/zzdx;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdx;)V

    move-object v0, v1

    goto :goto_5
.end method

.method public zzc(Lcom/google/android/gms/internal/zzdz;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzdz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz;->zzbmb:Lcom/google/android/gms/internal/zzdz;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblg:Z

    if-eqz v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdt;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzdw;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_a

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public zzlz()Lcom/google/android/gms/internal/zzdx;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzdz;->zzc(J)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    return-object v0
.end method

.method public zzma()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdz;->zzlz()Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbma:Lcom/google/android/gms/internal/zzdx;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public zzmb()Ljava/lang/String;
    .registers 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdx;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdx;->zzlw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdx;->zzlx()Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    if-eqz v0, :cond_e

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdx;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzblz:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    :goto_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_47

    goto :goto_5c
.end method

.method zzmc()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz;->zzbmb:Lcom/google/android/gms/internal/zzdz;

    if-nez v2, :cond_15

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    monitor-exit v1

    :goto_14
    return-object v0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz;->zzbly:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdz;->zzbmb:Lcom/google/android/gms/internal/zzdz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdz;->zzmc()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzdt;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    goto :goto_14

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public zzmd()Lcom/google/android/gms/internal/zzdx;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzbma:Lcom/google/android/gms/internal/zzdx;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
