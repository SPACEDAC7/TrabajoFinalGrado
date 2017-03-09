.class Lcom/google/android/gms/auth/api/credentials/internal/zze$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic iQ:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic iR:Lcom/google/android/gms/auth/api/credentials/internal/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->iR:Lcom/google/android/gms/auth/api/credentials/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->iQ:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze$1;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->iQ:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzk;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    move-result-object v0

    return-object v0
.end method
