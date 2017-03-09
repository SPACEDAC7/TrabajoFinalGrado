.class public Lcom/google/android/gms/internal/zzjj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field public zzayt:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcjw:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzckb:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzckj:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzcmu:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcmv:Lcom/google/android/gms/internal/zzjv$zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcmw:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public zzcmy:Lcom/google/android/gms/internal/zzjr;

.field public zzcmz:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzcmz:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzckj:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmy:Lcom/google/android/gms/internal/zzjr;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzjv$zza;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmv:Lcom/google/android/gms/internal/zzjv$zza;

    return-object p0
.end method

.method public zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzayt:Landroid/location/Location;

    return-object p0
.end method

.method public zzcm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcjw:Ljava/lang/String;

    return-object p0
.end method

.method public zzcn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmw:Ljava/lang/String;

    return-object p0
.end method

.method public zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmu:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzckb:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-object p0
.end method

.method public zzi(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzjj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzcmz:Lorg/json/JSONObject;

    return-object p0
.end method

.method public zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zzjj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzjj;"
        }
    .end annotation

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzckj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj;->zzckj:Ljava/util/List;

    return-object p0
.end method
