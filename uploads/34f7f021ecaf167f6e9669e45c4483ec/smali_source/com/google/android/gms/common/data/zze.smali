.class public Lcom/google/android/gms/common/data/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/data/DataHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcs(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzauo()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzaup()[Landroid/database/CursorWindow;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzaui()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zze;->zzch(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zze;->zzgd(I)[Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public zzch(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcr(Landroid/os/Parcel;)I

    move-result v6

    move-object v3, v5

    move-object v2, v5

    move v1, v4

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_3c

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgu(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_66

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_9

    :sswitch_1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzac(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :sswitch_23
    sget-object v3, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    move-object v3, v0

    goto :goto_9

    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_9

    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_9

    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_9

    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_5d

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_5d
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzaun()V

    return-object v0

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_23
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_32
        0x3e8 -> :sswitch_37
    .end sparse-switch
.end method

.method public zzgd(I)[Lcom/google/android/gms/common/data/DataHolder;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method
