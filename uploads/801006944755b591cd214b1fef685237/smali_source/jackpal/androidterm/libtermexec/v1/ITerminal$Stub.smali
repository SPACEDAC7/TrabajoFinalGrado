.class public abstract Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;
.super Landroid/os/Binder;
.source "ITerminal.java"

# interfaces
.implements Ljackpal/androidterm/libtermexec/v1/ITerminal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/libtermexec/v1/ITerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jackpal.androidterm.libtermexec.v1.ITerminal"

.field static final TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "jackpal.androidterm.libtermexec.v1.ITerminal"

    invoke-virtual {p0, p0, v0}, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljackpal/androidterm/libtermexec/v1/ITerminal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 42
    :goto_3
    return-object v0

    .line 38
    :cond_4
    const-string v1, "jackpal.androidterm.libtermexec.v1.ITerminal"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Ljackpal/androidterm/libtermexec/v1/ITerminal;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Ljackpal/androidterm/libtermexec/v1/ITerminal;

    goto :goto_3

    .line 42
    :cond_13
    new-instance v0, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 50
    sparse-switch p1, :sswitch_data_4a

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 54
    :sswitch_9
    const-string v4, "jackpal.androidterm.libtermexec.v1.ITerminal"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 59
    :sswitch_f
    const-string v4, "jackpal.androidterm.libtermexec.v1.ITerminal"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 62
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 68
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 69
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 74
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    :goto_30
    invoke-virtual {p0, v0, v1}, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;->startSession(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;

    move-result-object v2

    .line 75
    .local v2, "_result":Landroid/content/IntentSender;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_44

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v2, p3, v3}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 65
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    .end local v2    # "_result":Landroid/content/IntentSender;
    :cond_40
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_22

    .line 72
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_30

    .line 81
    .restart local v2    # "_result":Landroid/content/IntentSender;
    :cond_44
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 50
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
