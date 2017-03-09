.class public Lcom/google/android/gms/analytics/internal/zzae;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile ft:Lcom/google/android/gms/analytics/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/zzs;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    return-void
.end method

.method public static getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzaf;->zzagg()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzes(Ljava/lang/String;)V

    :cond_9
    :goto_9
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static zzbi(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v1

    if-gt v1, p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static zzdh(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzaf;->zzagg()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzeu(Ljava/lang/String;)V

    :cond_9
    :goto_9
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->info(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static zzdi(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzaf;->zzagg()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzev(Ljava/lang/String;)V

    :cond_9
    :goto_9
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static zzf(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzaf;->zzagg()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_9
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzae;->ft:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_55

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_49
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_55
    move-object v1, p0

    goto :goto_49
.end method
