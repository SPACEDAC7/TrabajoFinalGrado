.class public abstract Lcom/google/android/gms/auth/account/zza$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/account/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/account/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/account/zza$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzby(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zza;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/auth/account/zza;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/auth/account/zza;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/auth/account/zza$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/zza$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzd(Landroid/accounts/Account;)V

    goto :goto_8

    :cond_26
    const/4 v0, 0x0

    goto :goto_22

    :sswitch_28
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzbc(Z)V

    goto :goto_8

    :cond_38
    const/4 v0, 0x0

    goto :goto_34

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
