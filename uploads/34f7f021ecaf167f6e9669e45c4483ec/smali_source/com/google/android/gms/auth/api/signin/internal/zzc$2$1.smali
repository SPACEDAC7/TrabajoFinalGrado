.class Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jF:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;->jF:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzl(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;->jF:Lcom/google/android/gms/auth/api/signin/internal/zzc$2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
