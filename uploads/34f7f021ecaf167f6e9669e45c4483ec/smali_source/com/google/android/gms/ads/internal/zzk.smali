.class public Lcom/google/android/gms/ads/internal/zzk;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzamb:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzamf:Lcom/google/android/gms/internal/zzgz;

.field private zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

.field private zzanq:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private zzans:Lcom/google/android/gms/ads/internal/client/zzy;

.field private final zzant:Ljava/lang/String;

.field private final zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzany:Lcom/google/android/gms/internal/zzeq;

.field private zzanz:Lcom/google/android/gms/internal/zzer;

.field private zzaoa:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzes;",
            ">;"
        }
    .end annotation
.end field

.field private zzaob:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzant:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaob:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaoa:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzamb:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanq:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzany:Lcom/google/android/gms/internal/zzeq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanz:Lcom/google/android/gms/internal/zzer;

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;Lcom/google/android/gms/internal/zzes;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaob:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaoa:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzans:Lcom/google/android/gms/ads/internal/client/zzy;

    return-void
.end method

.method public zzfl()Lcom/google/android/gms/ads/internal/client/zzr;
    .registers 14

    new-instance v0, Lcom/google/android/gms/ads/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzant:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzany:Lcom/google/android/gms/internal/zzeq;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanz:Lcom/google/android/gms/internal/zzer;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaob:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzk;->zzaoa:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/zzk;->zzanq:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/zzk;->zzans:Lcom/google/android/gms/ads/internal/client/zzy;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzk;->zzamb:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzeq;Lcom/google/android/gms/internal/zzer;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzy;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method
