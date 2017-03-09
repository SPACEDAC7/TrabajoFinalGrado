.class public Lcom/google/android/gms/internal/zzft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhj()Lcom/google/android/gms/internal/zzfr;

    move-result-object v3

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzfr;->zze(Lcom/google/android/gms/internal/zzmd;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Precache abort but no preload task running."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_28

    const-string v0, "Precache video action is missing the src parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_17

    :cond_28
    :try_start_28
    const-string v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_33} :catch_51

    move-result v1

    move v2, v1

    :goto_35
    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_45
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzfr;->zzf(Lcom/google/android/gms/internal/zzmd;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string v0, "Precache task already running."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_17

    :catch_51
    move-exception v1

    const/4 v1, 0x0

    move v2, v1

    goto :goto_35

    :cond_55
    const-string v1, ""

    goto :goto_45

    :cond_58
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzec()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzc;->zzu(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzec()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzd;->zzamp:Lcom/google/android/gms/internal/zzfu;

    invoke-interface {v3, p1, v2, v1}, Lcom/google/android/gms/internal/zzfu;->zza(Lcom/google/android/gms/internal/zzmd;ILjava/lang/String;)Lcom/google/android/gms/internal/zzfs;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfq;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/zzfq;-><init>(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkw;->zzrz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    goto :goto_17
.end method
