.class final Lcom/google/android/gms/iid/MessengerCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/iid/MessengerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/iid/MessengerCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$1;->zznf(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$1;->zztv(I)[Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method

.method public zznf(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {v0, v1}, Lcom/google/android/gms/iid/MessengerCompat;-><init>(Landroid/os/IBinder;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zztv(I)[Lcom/google/android/gms/iid/MessengerCompat;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/iid/MessengerCompat;

    return-object v0
.end method
