.class public final Lcom/google/android/gms/common/internal/zze$zzj;
.super Lcom/google/android/gms/common/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zze$zza;"
    }
.end annotation


# instance fields
.field final synthetic DD:Lcom/google/android/gms/common/internal/zze;

.field public final DH:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/zze$zza;-><init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DH:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected zzavj()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DH:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_53

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zze;->zzjy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "GmsClient"

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zze;->zzjy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return v0

    :catch_53
    move-exception v1

    const-string v1, "GmsClient"

    const-string v2, "service probably died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DH:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zze;->zzh(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zze;->zzapn()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzb;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/zze$zzb;->onConnected(Landroid/os/Bundle;)V

    :cond_87
    const/4 v0, 0x1

    goto :goto_52
.end method

.method protected zzm(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzc;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/zze$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzj;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zze;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
