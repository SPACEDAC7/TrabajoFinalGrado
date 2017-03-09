.class public Lcom/google/android/gms/internal/zzeh;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mUri:Landroid/net/Uri;

.field private final zzbmx:D

.field private final zzbox:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeg;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeh;->zzbox:Lcom/google/android/gms/internal/zzeg;

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh;->zzbox:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeg;->zzmn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_29

    :goto_14
    iput-object v0, p0, Lcom/google/android/gms/internal/zzeh;->mDrawable:Landroid/graphics/drawable/Drawable;

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh;->zzbox:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeg;->getUri()Landroid/net/Uri;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_31

    move-result-object v1

    :goto_1c
    iput-object v1, p0, Lcom/google/android/gms/internal/zzeh;->mUri:Landroid/net/Uri;

    const-wide/high16 v0, 0x3ff0000000000000L

    :try_start_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh;->zzbox:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeg;->getScale()D
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_38

    move-result-wide v0

    :goto_26
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeh;->zzbmx:D

    return-void

    :catch_29
    move-exception v0

    const-string v2, "Failed to get drawable."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    move-object v0, v1

    goto :goto_14

    :catch_31
    move-exception v0

    const-string v2, "Failed to get uri."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :catch_38
    move-exception v2

    const-string v3, "Failed to get scale."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeh;->zzbmx:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh;->mUri:Landroid/net/Uri;

    return-object v0
.end method
