.class Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private iU:Lcom/google/android/gms/internal/zzqo$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqo$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqo$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqo$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;->iU:Lcom/google/android/gms/internal/zzqo$zzb;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;->iU:Lcom/google/android/gms/internal/zzqo$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqo$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
