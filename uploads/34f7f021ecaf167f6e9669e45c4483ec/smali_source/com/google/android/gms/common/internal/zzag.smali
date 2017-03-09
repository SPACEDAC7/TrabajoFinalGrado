.class public Lcom/google/android/gms/common/internal/zzag;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final EO:Lcom/google/android/gms/common/api/Api$zzg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzg",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzg;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/Api$zzg",
            "<TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    return-void
.end method


# virtual methods
.method public zzawt()Lcom/google/android/gms/common/api/Api$zzg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzg",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    return-object v0
.end method

.method protected zzc(ILandroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/Api$zzg;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/Api$zzg;->zzh(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected zzjx()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzjx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzjy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzag;->EO:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzjy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
