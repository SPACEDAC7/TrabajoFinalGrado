.class public Landroid/support/design/internal/ParcelableSparseArray;
.super Landroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/design/internal/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Landroid/support/design/internal/ParcelableSparseArray$1;

    invoke-direct {v0}, Landroid/support/design/internal/ParcelableSparseArray$1;-><init>()V

    .line 70
    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/design/internal/ParcelableSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 41
    .local v2, "size":I
    new-array v1, v2, [I

    .line 42
    .local v1, "keys":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 44
    .local v3, "values":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_1d

    .line 45
    aget v4, v1, v0

    aget-object v5, v3, v0

    invoke-virtual {p0, v4, v5}, Landroid/support/design/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 47
    :cond_1d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/support/design/internal/ParcelableSparseArray;->size()I

    move-result v2

    .line 57
    .local v2, "size":I
    new-array v1, v2, [I

    .line 58
    .local v1, "keys":[I
    new-array v3, v2, [Landroid/os/Parcelable;

    .line 59
    .local v3, "values":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1c

    .line 60
    invoke-virtual {p0, v0}, Landroid/support/design/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v0

    .line 61
    invoke-virtual {p0, v0}, Landroid/support/design/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    aput-object v4, v3, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 63
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 65
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 66
    return-void
.end method
