.class public Lcom/google/android/gms/internal/zzel;
.super Lcom/google/android/gms/ads/formats/NativeAppInstallAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzbbc:Lcom/google/android/gms/ads/VideoController;

.field private final zzboy:Lcom/google/android/gms/internal/zzek;

.field private final zzboz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbpa:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzek;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboz:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzbbc:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzel;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zzboz:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzeh;-><init>(Lcom/google/android/gms/internal/zzeg;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_39} :catch_3a

    goto :goto_1f

    :catch_3a
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_40
    const/4 v1, 0x0

    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->zzmo()Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    if-eqz v2, :cond_57

    new-instance v0, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeh;-><init>(Lcom/google/android/gms/internal/zzeg;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4e} :catch_51

    :goto_4e
    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzbpa:Lcom/google/android/gms/internal/zzeh;

    return-void

    :catch_51
    move-exception v0

    const-string v2, "Failed to get icon."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    move-object v0, v1

    goto :goto_4e
.end method


# virtual methods
.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to destroy"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public getBody()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getBody()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get body."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCallToAction()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getCallToAction()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get call to action."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get extras"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getHeadline()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getHeadline()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get headline."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzbpa:Lcom/google/android/gms/internal/zzeh;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboz:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getPrice()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get price."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getStarRating()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzek;->getStarRating()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L

    cmpl-double v1, v2, v4

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_d

    :catch_13
    move-exception v1

    const-string v2, "Failed to get star rating."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public getStore()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->getStore()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get store"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->zzej()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzbbc:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzek;->zzej()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzab;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_16

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzbbc:Lcom/google/android/gms/ads/VideoController;

    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method protected synthetic zzdy()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzmp()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;
    .registers 3

    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeg$zza;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected zzmp()Lcom/google/android/gms/dynamic/zzd;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzboy:Lcom/google/android/gms/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzek;->zzmp()Lcom/google/android/gms/dynamic/zzd;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to retrieve native ad engine."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method
