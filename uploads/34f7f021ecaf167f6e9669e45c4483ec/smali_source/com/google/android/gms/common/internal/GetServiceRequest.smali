.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DU:I

.field DV:I

.field DW:Ljava/lang/String;

.field DX:Landroid/os/IBinder;

.field DY:[Lcom/google/android/gms/common/api/Scope;

.field DZ:Landroid/os/Bundle;

.field Ea:Landroid/accounts/Account;

.field Eb:J

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    sget v0, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DV:I

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DU:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;J)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DU:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DV:I

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DW:Ljava/lang/String;

    :goto_15
    const/4 v0, 0x2

    if-ge p1, v0, :cond_28

    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdq(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ea:Landroid/accounts/Account;

    :goto_1e
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DY:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DZ:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Eb:J

    return-void

    :cond_25
    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DW:Ljava/lang/String;

    goto :goto_15

    :cond_28
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DX:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ea:Landroid/accounts/Account;

    goto :goto_1e
.end method

.method private zzdq(Landroid/os/IBinder;)Landroid/accounts/Account;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzp$zza;->zzdr(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zza;->zza(Lcom/google/android/gms/common/internal/zzp;)Landroid/accounts/Account;

    move-result-object v0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzi;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/internal/zzp;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DX:Landroid/os/IBinder;

    :cond_8
    return-object p0
.end method

.method public zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ea:Landroid/accounts/Account;

    return-object p0
.end method

.method public zzf(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DY:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public zzhv(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DW:Ljava/lang/String;

    return-object p0
.end method

.method public zzo(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->DZ:Landroid/os/Bundle;

    return-object p0
.end method
