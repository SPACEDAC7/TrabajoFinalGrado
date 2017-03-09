.class Lcom/google/android/gms/auth/api/signin/internal/zzc$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzc$zza",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jB:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field final synthetic jC:Lcom/google/android/gms/auth/api/signin/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->jC:Lcom/google/android/gms/auth/api/signin/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->jB:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzba(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    new-instance v2, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$1;Lcom/google/android/gms/auth/api/signin/internal/zzk;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->jB:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzg;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zzn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
