.class public Lcom/google/android/gms/internal/zzcy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private zzavx:I

.field private zzavy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzako:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzcx;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcy;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    monitor-exit v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzcx;)Z
    .registers 7

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcy;->zzako:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcx;

    sget-object v1, Lcom/google/android/gms/internal/zzdr;->zzbfa:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzuq()Z

    move-result v1

    if-nez v1, :cond_44

    if-eq p1, v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->zziy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcx;->zziy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    monitor-exit v3

    move v0, v2

    :goto_43
    return v0

    :cond_44
    sget-object v1, Lcom/google/android/gms/internal/zzdr;->zzbfc:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzur()Z

    move-result v1

    if-nez v1, :cond_a

    if-eq p1, v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->zzja()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcx;->zzja()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    monitor-exit v3

    move v0, v2

    goto :goto_43

    :cond_72
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_43

    :catchall_75
    move-exception v0

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_4 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzcx;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcy;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Queue is full, current size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_31
    iget v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzcy;->zzavx:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcx;->zzn(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public zzjg()Lcom/google/android/gms/internal/zzcx;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcy;->zzako:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Queue empty"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    monitor-exit v6

    :goto_13
    return-object v5

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4b

    const/high16 v4, -0x80000000

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->getScore()I

    move-result v3

    if-le v3, v4, :cond_5a

    move v2, v3

    move-object v3, v0

    move v0, v1

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move-object v5, v3

    move v2, v0

    goto :goto_26

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_13

    :catchall_48
    move-exception v0

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcy;->zzavy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->zzjb()V

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_48

    move-object v5, v0

    goto :goto_13

    :cond_5a
    move v0, v2

    move-object v3, v5

    move v2, v4

    goto :goto_3b
.end method
