.class public abstract Landroid/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsService"

.field static final TRANSACTION_extraCommand:I = 0x5

.field static final TRANSACTION_mayLaunchUrl:I = 0x4

.field static final TRANSACTION_newSession:I = 0x3

.field static final TRANSACTION_updateVisuals:I = 0x6

.field static final TRANSACTION_warmup:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p0, p0, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.support.customtabs.ICustomTabsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/customtabs/ICustomTabsService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/support/customtabs/ICustomTabsService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_de

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 46
    :sswitch_a
    const-string v6, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 54
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/customtabs/ICustomTabsService$Stub;->warmup(J)Z

    move-result v5

    .line 55
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v5, :cond_23

    move v6, v7

    :cond_23
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_27
    const-string v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p0, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v5

    .line 65
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v5, :cond_3e

    move v6, v7

    :cond_3e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v5    # "_result":Z
    :sswitch_42
    const-string v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7f

    .line 76
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 82
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_81

    .line 83
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 89
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_6b
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 90
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/support/customtabs/ICustomTabsService$Stub;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v5

    .line 91
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v5, :cond_7b

    move v6, v7

    :cond_7b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "_result":Z
    :cond_7f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/Uri;
    goto :goto_5d

    .line 86
    :cond_81
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_6b

    .line 97
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_83
    const-string v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_ab

    .line 102
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 107
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_9a
    invoke-virtual {p0, v0, v2}, Landroid/support/customtabs/ICustomTabsService$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 108
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v5, :cond_ad

    .line 110
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v5, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 105
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_result":Landroid/os/Bundle;
    :cond_ab
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_9a

    .line 114
    .restart local v5    # "_result":Landroid/os/Bundle;
    :cond_ad
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_b2
    const-string v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 124
    .local v0, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_dc

    .line 125
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 130
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_cd
    invoke-virtual {p0, v0, v2}, Landroid/support/customtabs/ICustomTabsService$Stub;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v5

    .line 131
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v5, :cond_d7

    move v6, v7

    :cond_d7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_result":Z
    :cond_dc
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_cd

    .line 42
    :sswitch_data_de
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_27
        0x4 -> :sswitch_42
        0x5 -> :sswitch_83
        0x6 -> :sswitch_b2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
