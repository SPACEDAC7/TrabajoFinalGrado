.class final Landroid/support/v13/app/FragmentTabHost$SavedState$1;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost$SavedState;
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
        "Landroid/support/v13/app/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v13/app/FragmentTabHost$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    new-instance v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v13/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v13/app/FragmentTabHost$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 116
    new-array v0, p1, [Landroid/support/v13/app/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost$SavedState$1;->newArray(I)[Landroid/support/v13/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
