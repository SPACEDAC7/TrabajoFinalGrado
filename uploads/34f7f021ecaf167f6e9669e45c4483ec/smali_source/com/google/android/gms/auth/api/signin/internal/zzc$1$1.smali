.class Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jD:Lcom/google/android/gms/auth/api/signin/internal/zzk;

.field final synthetic jE:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$1;Lcom/google/android/gms/auth/api/signin/internal/zzk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->jE:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->jD:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->jD:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->jE:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->jB:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzb(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->jE:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
