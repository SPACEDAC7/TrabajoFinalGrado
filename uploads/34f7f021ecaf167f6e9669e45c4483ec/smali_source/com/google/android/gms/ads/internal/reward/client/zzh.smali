.class public Lcom/google/android/gms/ads/internal/reward/client/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcs(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzarg:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzh;->zzs(Landroid/os/Parcel;)Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzh;->zzba(I)[Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    move-result-object v0

    return-object v0
.end method

.method public zzba(I)[Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    return-object v0
.end method

.method public zzs(Landroid/os/Parcel;)Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;
    .registers 9

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcr(Landroid/os/Parcel;)I

    move-result v4

    const/4 v3, 0x0

    move-object v2, v1

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v4, :cond_3f

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgu(I)I

    move-result v5

    packed-switch v5, :pswitch_data_66

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    :goto_1e
    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_7

    :pswitch_22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v0

    move-object v6, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v6

    goto :goto_1e

    :pswitch_2b
    sget-object v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1e

    :pswitch_38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move v2, v3

    goto :goto_1e

    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v4, :cond_60

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_60
    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;-><init>(ILcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2b
        :pswitch_38
    .end packed-switch
.end method
