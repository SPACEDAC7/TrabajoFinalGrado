.class public abstract Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzk;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/auth/api/credentials/internal/zzk;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzk;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_b4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/zzj$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    :cond_2c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_34
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/zzj$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;

    :cond_4f
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_57
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/zzj$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_72

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;

    :cond_72
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_7a
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzj$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_90
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/zzj$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_ab

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;

    :cond_ab
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_34
        0x3 -> :sswitch_57
        0x4 -> :sswitch_7a
        0x5 -> :sswitch_90
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
