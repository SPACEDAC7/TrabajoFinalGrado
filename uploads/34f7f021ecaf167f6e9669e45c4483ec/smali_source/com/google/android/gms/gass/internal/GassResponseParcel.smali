.class public final Lcom/google/android/gms/gass/internal/GassResponseParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/gass/internal/GassResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agI:Lcom/google/android/gms/internal/zzaf$zza;

.field private agJ:[B

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/gass/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/gass/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->versionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    iput-object p2, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzazw()V

    return-void
.end method

.method private zzazu()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzazv()Z

    move-result v0

    if-nez v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaf$zza;->zzd([B)Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B
    :try_end_11
    .catch Lcom/google/android/gms/internal/zzarz; {:try_start_6 .. :try_end_11} :catch_15

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzazw()V

    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzazv()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private zzazw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    if-eqz v0, :cond_8

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/gass/internal/zzd;->zza(Lcom/google/android/gms/gass/internal/GassResponseParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbnn()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agJ:[B

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasa;->zzf(Lcom/google/android/gms/internal/zzasa;)[B

    move-result-object v0

    goto :goto_6
.end method

.method public zzbno()Lcom/google/android/gms/internal/zzaf$zza;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzazu()V

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->agI:Lcom/google/android/gms/internal/zzaf$zza;

    return-object v0
.end method
