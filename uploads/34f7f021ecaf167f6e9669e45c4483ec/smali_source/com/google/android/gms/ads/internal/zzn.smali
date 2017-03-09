.class public Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# direct methods
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

    move-object v12, v10

    move-object v13, v10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/zzab;Landroid/view/View;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzhe;)Lcom/google/android/gms/ads/internal/formats/zze;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->zzmt()Lcom/google/android/gms/internal/zzeg;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhe;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzfe;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/zzhd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzhe;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzn$5;-><init>(Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/ads/internal/zzf$zza;Lcom/google/android/gms/internal/zzhe;)V

    return-object v0
.end method

.method static zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzfe;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzn$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zza(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_f

    const-string v0, "Bitmap is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:image/png;base64,"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e
.end method

.method static zza(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/google/android/gms/internal/zzeg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_a

    const-string v0, "Image is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeg;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_9

    :catch_15
    move-exception v0

    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_1b
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_48

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_48
    const-string v0, "Invalid type. An image type extra should return a bitmap"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_18

    :cond_4e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5c

    const-string v0, "Invalid asset type. Bitmap should be returned only for image type"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_18

    :cond_5c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_68
    move-object v0, v2

    goto :goto_e
.end method

.method public static zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/ads/internal/zzf$zza;)V
    .registers 8
    .param p0    # Lcom/google/android/gms/internal/zzko;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzh(Lcom/google/android/gms/internal/zzko;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v4, p0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    :goto_12
    if-nez v3, :cond_1c

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object v3, v0

    goto :goto_12

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzko;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzko;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgp;->zzbvg:Ljava/util/List;

    move-object v2, v1

    :goto_25
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_2d
    const-string v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_32} :catch_33

    goto :goto_19

    :catch_33
    move-exception v0

    const-string v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_3a
    move-object v2, v0

    goto :goto_25

    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzha;->zzom()Lcom/google/android/gms/internal/zzhd;

    move-result-object v1

    :goto_46
    iget-object v5, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v5, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->zzon()Lcom/google/android/gms/internal/zzhe;

    move-result-object v0

    :cond_50
    const-string v5, "2"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    if-eqz v1, :cond_7b

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzhd;->zzl(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzhd;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzhd;->recordImpression()V

    :cond_6a
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    const-string v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzfe;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    goto :goto_19

    :cond_79
    move-object v1, v0

    goto :goto_46

    :cond_7b
    const-string v1, "1"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    if-eqz v0, :cond_a5

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhe;->zzl(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhe;->getOverrideImpressionRecording()Z

    move-result v1

    if-nez v1, :cond_95

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhe;->recordImpression()V

    :cond_95
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    const-string v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzfe;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    goto/16 :goto_19

    :cond_a5
    const-string v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_aa} :catch_33

    goto/16 :goto_19
.end method

.method private static zza(Lcom/google/android/gms/internal/zzmd;)V
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxr()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzn$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzmd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzn$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzn$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;Lcom/google/android/gms/internal/zzmd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoaded"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzfe;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoadingFailed"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzfe;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgu;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgu;Ljava/util/concurrent/CountDownLatch;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_12

    move-result v0

    :goto_5
    if-nez v0, :cond_a

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_a
    return v0

    :catch_b
    move-exception v1

    const-string v2, "Unable to invoke load assets"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_12
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzfe;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzn$4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeg;->zzmn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Drawable is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_20

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_29

    const-string v0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_d

    :catch_20
    move-exception v0

    const-string v0, "Unable to get drawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_d

    :cond_29
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method static synthetic zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmd;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmd;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgu;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "AdWebView is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgp;->zzbvg:Ljava/util/List;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1d
    const-string v1, "No template ids present in mediation response"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzgu;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzha;->zzom()Lcom/google/android/gms/internal/zzhd;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzgu;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzha;->zzon()Lcom/google/android/gms/internal/zzhe;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-eqz v2, :cond_5d

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhd;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgp;->zzbvf:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;)V

    :goto_47
    iget-object v0, p1, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgp;->zzbvd:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzgp;->zzbve:Ljava/lang/String;

    if-eqz v1, :cond_79

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzmd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    const/4 v0, 0x1

    goto :goto_c

    :cond_5d
    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    if-eqz v3, :cond_73

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzhe;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgp;->zzbvf:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;)V

    goto :goto_47

    :cond_73
    const-string v1, "No matching template id and mapper"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :cond_79
    const-string/jumbo v0, "text/html"

    const-string v1, "UTF-8"

    invoke-interface {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzmd;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeg$zza;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzko;)Landroid/view/View;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/zzko;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_a

    const-string v0, "AdState is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzh(Lcom/google/android/gms/internal/zzko;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_9

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_25
    if-nez v0, :cond_30

    const-string v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    :cond_2e
    move-object v0, v1

    goto :goto_25

    :cond_30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_36} :catch_37

    goto :goto_9

    :catch_37
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_9
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzko;)Z
    .registers 2
    .param p0    # Lcom/google/android/gms/internal/zzko;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzko;->zzclb:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgp;->zzbvd:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
