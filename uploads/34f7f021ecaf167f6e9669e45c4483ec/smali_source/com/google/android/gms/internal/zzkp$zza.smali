.class final Lcom/google/android/gms/internal/zzkp$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private zzcte:J

.field private zzctf:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzcte:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzctf:J

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "topen"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzcte:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "tclose"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzctf:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public zzuj()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzctf:J

    return-wide v0
.end method

.method public zzuk()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzctf:J

    return-void
.end method

.method public zzul()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkp$zza;->zzcte:J

    return-void
.end method
