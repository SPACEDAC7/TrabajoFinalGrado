.class Lcom/google/android/gms/ads/internal/zzt$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzt;->zzfz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapv:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzgb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbka:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_37

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_37
    move-exception v0

    const-string v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_3e
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkb:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_5e

    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_65

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_65
    move-exception v0

    const-string v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_6c
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkc:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_8b

    :try_start_82
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLoaded()V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_99

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zzab(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto/16 :goto_f

    :catch_99
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :cond_a0
    const-string v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    move v0, v2

    goto/16 :goto_f

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_bc

    :try_start_b3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLeftApplication()V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bc} :catch_ca

    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzapv:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzb(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_f

    :catch_ca
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bc
.end method
