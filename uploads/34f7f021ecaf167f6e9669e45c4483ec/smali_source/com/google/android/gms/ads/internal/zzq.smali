.class public Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzapd:Lcom/google/android/gms/internal/zzmd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzhd;)Lcom/google/android/gms/ads/internal/formats/zzd;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->zzmo()Lcom/google/android/gms/internal/zzeg;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->zzmo()Lcom/google/android/gms/internal/zzeg;

    move-result-object v4

    :goto_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhd;->zzej()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v12

    move-object v13, v10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/zzab;Landroid/view/View;)V

    return-object v0

    :cond_36
    move-object v4, v10

    goto :goto_19
.end method

.method private static zza(Lcom/google/android/gms/internal/zzhe;)Lcom/google/android/gms/ads/internal/formats/zze;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->zzmt()Lcom/google/android/gms/internal/zzeg;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->zzmt()Lcom/google/android/gms/internal/zzeg;

    move-result-object v4

    :goto_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_29
    move-object v4, v7

    goto :goto_19
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$2;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$3;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zze;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzko;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzq$4;-><init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzet;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarz:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzg;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmd;->zzb(Lcom/google/android/gms/ads/internal/formats/zzg;)V

    :cond_9
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcsi:Lorg/json/JSONObject;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzvg()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/ads/internal/formats/zzi;)V

    :cond_1b
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzed;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzig;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V
    .registers 13

    iget-object v0, p1, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/internal/zzko$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$1;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzko$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgl()Lcom/google/android/gms/internal/zziu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzq;->zzamf:Lcom/google/android/gms/internal/zzgz;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zziu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzld;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzv;->zzarl:Lcom/google/android/gms/internal/zzld;

    const-string v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarl:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_19

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_56
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzko;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzalx:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzfy()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzko;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzv;->zzhp()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzko;->zzclb:Z

    if-eqz v1, :cond_8b

    :try_start_19
    iget-object v1, p2, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_53

    iget-object v1, p2, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzha;->zzom()Lcom/google/android/gms/internal/zzhd;

    move-result-object v4

    :goto_23
    iget-object v1, p2, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_55

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->zzon()Lcom/google/android/gms/internal/zzhe;

    move-result-object v0

    move-object v6, v0

    :goto_2e
    if-eqz v4, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarw:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_57

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzhd;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4e} :catch_79

    :goto_4e
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzko;)Z

    move-result v0

    :goto_52
    return v0

    :cond_53
    move-object v4, v0

    goto :goto_23

    :cond_55
    move-object v6, v0

    goto :goto_2e

    :cond_57
    if-eqz v6, :cond_80

    :try_start_59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarx:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_80

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzhe;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    move-object v2, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/internal/formats/zze;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_78} :catch_79

    goto :goto_4e

    :catch_79
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    :cond_80
    :try_start_80
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_89} :catch_79

    move v0, v2

    goto :goto_52

    :cond_8b
    iget-object v1, p2, Lcom/google/android/gms/internal/zzko;->zzcsq:Lcom/google/android/gms/ads/internal/formats/zzi$zza;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zze;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarx:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_9f

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzcsq:Lcom/google/android/gms/ads/internal/formats/zzi$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V

    goto :goto_4e

    :cond_9f
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzd;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarw:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_b1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzcsq:Lcom/google/android/gms/ads/internal/formats/zzi$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V

    goto :goto_4e

    :cond_b1
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarz:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarz:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d7

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzko;Ljava/lang/String;)V

    goto/16 :goto_4e

    :cond_d7
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V

    move v0, v2

    goto/16 :goto_52
.end method

.method public zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/zzes;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzary:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzes;

    return-object v0
.end method

.method public zzb(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzary:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .registers 3

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzeq;)V
    .registers 3

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarw:Lcom/google/android/gms/internal/zzeq;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzer;)V
    .registers 3

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarx:Lcom/google/android/gms/internal/zzer;

    return-void
.end method

.method public zzb(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzase:Ljava/util/List;

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzmd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    return-void
.end method

.method public zzfu()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzvg()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Landroid/view/View;Lcom/google/android/gms/internal/zzgi;)V

    :goto_25
    return-void

    :cond_26
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public zzfv()Landroid/support/v4/util/SimpleArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzet;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarz:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public zzfw()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    :cond_c
    return-void
.end method

.method public zzfx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxn()Lcom/google/android/gms/internal/zzmi;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbon:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzapd:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxn()Lcom/google/android/gms/internal/zzmi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbon:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;->zzbck:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmi;->zzaq(Z)V

    :cond_2b
    return-void
.end method
