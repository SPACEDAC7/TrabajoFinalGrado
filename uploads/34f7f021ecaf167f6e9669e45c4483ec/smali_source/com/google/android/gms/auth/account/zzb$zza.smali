.class public abstract Lcom/google/android/gms/auth/account/zzb$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/account/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/account/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/account/zzb$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zzb;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/auth/account/zzb;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/auth/account/zzb$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/zzb$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/account/zzb$zza;->zzbd(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    goto :goto_1b

    :sswitch_24
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzby(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zza;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/auth/account/zzb$zza;->zza(Lcom/google/android/gms/auth/account/zza;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_3c
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzby(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zza;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_57
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/account/zzb$zza;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_5e
    const/4 v0, 0x0

    goto :goto_57

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
