.class Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iS:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->iS:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->iS:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->iS:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
