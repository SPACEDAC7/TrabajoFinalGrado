.class Lcom/google/android/gms/analytics/internal/zzak$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzak$1;->zzf(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fO:Lcom/google/android/gms/analytics/internal/zzak$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzak$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->fO:Lcom/google/android/gms/analytics/internal/zzak$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->fO:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->fN:Lcom/google/android/gms/analytics/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zza(Lcom/google/android/gms/analytics/internal/zzak;)Lcom/google/android/gms/analytics/internal/zzak$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->fO:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget v1, v1, Lcom/google/android/gms/analytics/internal/zzak$1;->aB:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->fO:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->fM:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->fO:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->aA:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzes(Ljava/lang/String;)V

    :cond_22
    return-void
.end method
