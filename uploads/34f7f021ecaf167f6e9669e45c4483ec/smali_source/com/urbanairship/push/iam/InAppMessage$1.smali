.class final Lcom/urbanairship/push/iam/InAppMessage$1;
.super Ljava/lang/Object;
.source "InAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessage;
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
        "Lcom/urbanairship/push/iam/InAppMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/push/iam/InAppMessage;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 490
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Landroid/os/Parcel;Lcom/urbanairship/push/iam/InAppMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/urbanairship/push/iam/InAppMessage;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 495
    new-array v0, p1, [Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage$1;->newArray(I)[Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    return-object v0
.end method
