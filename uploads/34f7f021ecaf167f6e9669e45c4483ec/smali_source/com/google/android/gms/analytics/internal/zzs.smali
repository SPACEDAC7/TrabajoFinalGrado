.class Lcom/google/android/gms/analytics/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# instance fields
.field private aM:Z

.field private ee:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzs;->ee:I

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getLogLevel()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzs;->ee:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setLogLevel(I)V
    .registers 6

    iput p1, p0, Lcom/google/android/gms/analytics/internal/zzs;->ee:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzs;->aM:Z

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzy;->en:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzs;->aM:Z

    :cond_3f
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
