.class public final Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzarg:Ljava/lang/String;

.field public final zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzarg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;-><init>(ILcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/reward/client/zzh;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;Landroid/os/Parcel;I)V

    return-void
.end method
