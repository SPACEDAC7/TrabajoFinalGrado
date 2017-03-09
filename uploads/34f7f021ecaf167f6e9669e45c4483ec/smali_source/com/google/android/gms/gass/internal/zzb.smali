.class public Lcom/google/android/gms/gass/internal/zzb;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zze",
        "<",
        "Lcom/google/android/gms/gass/internal/zze;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;)V
    .registers 12

    const/16 v3, 0x74

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzbnm()Lcom/google/android/gms/gass/internal/zze;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zze;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gass/internal/zze;

    return-object v0
.end method

.method protected zzgr(Landroid/os/IBinder;)Lcom/google/android/gms/gass/internal/zze;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/gass/internal/zze$zza;->zzgs(Landroid/os/IBinder;)Lcom/google/android/gms/gass/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gass/internal/zzb;->zzgr(Landroid/os/IBinder;)Lcom/google/android/gms/gass/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzjx()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method protected zzjy()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method
