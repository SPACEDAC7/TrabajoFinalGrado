.class public Lcom/google/android/gms/common/internal/AuthAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/AuthAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Df:Landroid/os/IBinder;

.field final Dg:[Lcom/google/android/gms/common/api/Scope;

.field Dh:Ljava/lang/Integer;

.field Di:Ljava/lang/Integer;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->Df:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->Dg:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->Dh:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->Di:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzd;->zza(Lcom/google/android/gms/common/internal/AuthAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
