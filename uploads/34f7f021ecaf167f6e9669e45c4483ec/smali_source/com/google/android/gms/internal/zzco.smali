.class public Lcom/google/android/gms/internal/zzco;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private final zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzata:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzko;",
            "Lcom/google/android/gms/internal/zzcp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzcp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatc:Landroid/content/Context;

.field private final zzatd:Lcom/google/android/gms/internal/zzgh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzgh;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzatb:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzatc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzco;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzco;->zzatd:Lcom/google/android/gms/internal/zzgh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;)V
    .registers 4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Landroid/view/View;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Landroid/view/View;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzcp$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzcp$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzko;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Landroid/view/View;Lcom/google/android/gms/internal/zzgi;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzcp$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzcp$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzcp$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzcp$zza;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzgi;)V
    .registers 12
    .param p4    # Lcom/google/android/gms/internal/zzgi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v6, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzco;->zzi(Lcom/google/android/gms/internal/zzko;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    :goto_11
    if-eqz p4, :cond_3a

    new-instance v1, Lcom/google/android/gms/internal/zzcr;

    invoke-direct {v1, v0, p4}, Lcom/google/android/gms/internal/zzcr;-><init>(Lcom/google/android/gms/internal/zzcp;Lcom/google/android/gms/internal/zzgi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzct;)V

    :goto_1b
    monitor-exit v6

    return-void

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzatc:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzco;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcw;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzcq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzatb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_37
    move-exception v0

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    new-instance v1, Lcom/google/android/gms/internal/zzcs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzco;->zzatd:Lcom/google/android/gms/internal/zzgh;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzcs;-><init>(Lcom/google/android/gms/internal/zzcp;Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzct;)V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_37

    goto :goto_1b
.end method

.method public zza(Lcom/google/android/gms/internal/zzcp;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcp;->zzii()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzatb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzko;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->zzii()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzko;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->zzig()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzko;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->stop()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzko;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->pause()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzko;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzata:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcp;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->resume()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
