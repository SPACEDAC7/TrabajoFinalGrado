.class public final Lcom/google/android/gms/common/internal/zze$zzk;
.super Lcom/google/android/gms/common/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zze$zza;"
    }
.end annotation


# instance fields
.field final synthetic DD:Lcom/google/android/gms/common/internal/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/Bundle;)V
    .registers 4
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zzk;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zze$zza;-><init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected zzavj()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzk;->DD:Lcom/google/android/gms/common/internal/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zze;->Dr:Lcom/google/android/gms/common/internal/zze$zzf;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zze$zzf;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected zzm(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzk;->DD:Lcom/google/android/gms/common/internal/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zze;->Dr:Lcom/google/android/gms/common/internal/zze$zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/zze$zzf;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzk;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zze;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
