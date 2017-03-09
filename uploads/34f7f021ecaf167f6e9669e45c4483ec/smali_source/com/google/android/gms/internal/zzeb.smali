.class public Lcom/google/android/gms/internal/zzeb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbmf:Lcom/google/android/gms/internal/zzec;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->zzme()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not delegate getBaseURL to CustomRenderedAd"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->getContent()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not delegate getContent to CustomRenderedAd"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onAdRendered(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzec;->zzi(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_e

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :catch_e
    move-exception v0

    const-string v1, "Could not delegate onAdRendered to CustomRenderedAd"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public recordClick()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->recordClick()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not delegate recordClick to CustomRenderedAd"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public recordImpression()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzbmf:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not delegate recordImpression to CustomRenderedAd"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
