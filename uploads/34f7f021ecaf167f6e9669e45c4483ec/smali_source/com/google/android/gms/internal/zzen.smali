.class public Lcom/google/android/gms/internal/zzen;
.super Lcom/google/android/gms/ads/formats/NativeContentAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
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

.field private final zzbpb:Lcom/google/android/gms/internal/zzem;

.field private final zzbpc:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzem;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeContentAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzboz:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzen;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/zzen;->zzboz:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzeh;-><init>(Lcom/google/android/gms/internal/zzeg;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_33

    goto :goto_18

    :catch_33
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    const/4 v1, 0x0

    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->zzmt()Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v0, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeh;-><init>(Lcom/google/android/gms/internal/zzeg;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_4a

    :goto_47
    iput-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpc:Lcom/google/android/gms/internal/zzeh;

    return-void

    :catch_4a
    move-exception v0

    const-string v2, "Failed to get icon."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    move-object v0, v1

    goto :goto_47
.end method


# virtual methods
.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->destroy()V
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

.method public getAdvertiser()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getAdvertiser()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get attribution."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getBody()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getBody()Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getCallToAction()Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get extras"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getHeadline()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->getHeadline()Ljava/lang/String;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzboz:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpc:Lcom/google/android/gms/internal/zzeh;

    return-object v0
.end method

.method protected synthetic zzdy()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzen;->zzmp()Lcom/google/android/gms/dynamic/zzd;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzbpb:Lcom/google/android/gms/internal/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzem;->zzmp()Lcom/google/android/gms/dynamic/zzd;
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
