.class public Lcom/google/android/gms/internal/zzho;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field private zzbxt:Landroid/app/Activity;

.field private zzbxu:Lcom/google/android/gms/internal/zzef;

.field private zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzho;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzho;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxt:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzho;)Lcom/google/android/gms/internal/zzef;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    return-object v0
.end method

.method public static zzo(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzef;->zzn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdg(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzbxt:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzef;->zzd(Landroid/app/Activity;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public onPause()V
    .registers 2

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdg(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdg(Ljava/lang/String;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez v0, :cond_d

    const-string v0, "Listener not set for mediation. Returning."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1c

    const-string v0, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_c

    :cond_1c
    invoke-static {p1}, Lcom/google/android/gms/internal/zzho;->zzo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "Default browser does not support custom tabs. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_c

    :cond_2d
    const-string/jumbo v0, "tab_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v0, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_c

    :cond_45
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzho;->zzbxt:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzho;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/internal/zzef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzef;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    new-instance v0, Lcom/google/android/gms/internal/zzho$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzho$1;-><init>(Lcom/google/android/gms/internal/zzho;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzef$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzbxt:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzef;->zze(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzbxv:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_c
.end method

.method public showInterstitial()V
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzbxu:Lcom/google/android/gms/internal/zzef;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzef;->zzmf()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzho;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/zzho$2;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzho$2;-><init>(Lcom/google/android/gms/internal/zzho;)V

    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v5, v6, v6, v6}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzho$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzho$3;-><init>(Lcom/google/android/gms/internal/zzho;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzkr;->zzah(Z)V

    return-void
.end method
