.class public Lcom/google/android/gms/auth/api/proxy/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/auth/api/proxy/ProxyResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcs(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->googlePlayServicesStatusCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->recoveryAction:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->statusCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->iW:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->body:[B

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/proxy/zzc;->zzau(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/proxy/zzc;->zzdi(I)[Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    move-result-object v0

    return-object v0
.end method

.method public zzau(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
    .registers 11

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcr(Landroid/os/Parcel;)I

    move-result v7

    move-object v5, v6

    move-object v3, v6

    move v2, v4

    move v1, v4

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_42

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgu(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_6a

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_a

    :sswitch_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_a

    :sswitch_24
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v3, v0

    goto :goto_a

    :sswitch_2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_a

    :sswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_a

    :sswitch_38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v6

    goto :goto_a

    :sswitch_3d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_a

    :cond_42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_63

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_63
    new-instance v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;-><init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V

    return-object v0

    nop

    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_33
        0x5 -> :sswitch_38
        0x3e8 -> :sswitch_3d
    .end sparse-switch
.end method

.method public zzdi(I)[Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    return-object v0
.end method
