.class final Lcom/google/android/exoplayer/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/exoplayer/MediaFormat;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 530
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/MediaFormat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer/MediaFormat;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 535
    new-array v0, p1, [Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/MediaFormat$1;->newArray(I)[Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method
