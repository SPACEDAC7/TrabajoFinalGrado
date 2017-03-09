.class abstract Lcom/google/android/gms/common/internal/zze$zza;
.super Lcom/google/android/gms/common/internal/zze$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zze$zze",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final DC:Landroid/os/Bundle;

.field final synthetic DD:Lcom/google/android/gms/common/internal/zze;

.field public final statusCode:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DD:Lcom/google/android/gms/common/internal/zze;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zze$zze;-><init>(Lcom/google/android/gms/common/internal/zze;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze$zza;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zze$zza;->DC:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected abstract zzavj()Z
.end method

.method protected zzavk()V
    .registers 1

    return-void
.end method

.method protected zzc(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IInterface;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->statusCode:I

    sparse-switch v1, :sswitch_data_50

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DC:Landroid/os/Bundle;

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zza;->DC:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_22
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/zze$zza;->statusCode:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zze$zza;->zzm(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze$zza;->zzavj()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zze$zza;->zzm(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_43
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->DD:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_2d
        0xa -> :sswitch_43
    .end sparse-switch
.end method

.method protected abstract zzm(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected synthetic zzv(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zze$zza;->zzc(Ljava/lang/Boolean;)V

    return-void
.end method
