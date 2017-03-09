.class final Lcom/google/android/gms/gcm/PendingCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/PendingCallback;
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
        "Lcom/google/android/gms/gcm/PendingCallback;",
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PendingCallback$1;->zzna(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PendingCallback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PendingCallback$1;->zztp(I)[Lcom/google/android/gms/gcm/PendingCallback;

    move-result-object v0

    return-object v0
.end method

.method public zzna(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PendingCallback;
    .registers 3

    new-instance v0, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/gcm/PendingCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public zztp(I)[Lcom/google/android/gms/gcm/PendingCallback;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/gcm/PendingCallback;

    return-object v0
.end method
