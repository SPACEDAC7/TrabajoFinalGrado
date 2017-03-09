.class final Lcom/google/ads/interactivemedia/v3/a/p$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/p;
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
        "Lcom/google/ads/interactivemedia/v3/a/p;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 3

    .prologue
    .line 530
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/p;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 3

    .prologue
    .line 535
    new-array v0, p1, [Lcom/google/ads/interactivemedia/v3/a/p;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/p$1;->a(Landroid/os/Parcel;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/p$1;->a(I)[Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0
.end method
