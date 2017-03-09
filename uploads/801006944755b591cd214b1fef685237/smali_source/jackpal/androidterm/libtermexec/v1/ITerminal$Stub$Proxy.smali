.class Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITerminal.java"

# interfaces
.implements Ljackpal/androidterm/libtermexec/v1/ITerminal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "jackpal.androidterm.libtermexec.v1.ITerminal"

    return-object v0
.end method

.method public startSession(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;
    .registers 9
    .param p1, "pseudoTerminalMultiplexerFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "jackpal.androidterm.libtermexec.v1.ITerminal"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_40

    .line 129
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    :goto_17
    if-eqz p2, :cond_4d

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    :goto_21
    iget-object v3, p0, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52

    .line 145
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_45

    .line 152
    .local v2, "_result":Landroid/content/IntentSender;
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-object v2

    .line 133
    .end local v2    # "_result":Landroid/content/IntentSender;
    :cond_40
    const/4 v3, 0x0

    :try_start_41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_17

    .line 152
    :catchall_45
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 140
    :cond_4d
    const/4 v3, 0x0

    :try_start_4e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_45

    goto :goto_21

    .line 148
    :cond_52
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/IntentSender;
    goto :goto_39
.end method
