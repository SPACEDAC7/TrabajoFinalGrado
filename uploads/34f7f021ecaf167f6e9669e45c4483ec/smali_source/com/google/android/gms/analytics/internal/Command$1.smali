.class final Lcom/google/android/gms/analytics/internal/Command$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/Command;
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
        "Lcom/google/android/gms/analytics/internal/Command;",
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->zzw(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->zzcf(I)[Lcom/google/android/gms/analytics/internal/Command;

    move-result-object v0

    return-object v0
.end method

.method public zzcf(I)[Lcom/google/android/gms/analytics/internal/Command;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-array v0, p1, [Lcom/google/android/gms/analytics/internal/Command;

    return-object v0
.end method

.method public zzw(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/analytics/internal/Command;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
