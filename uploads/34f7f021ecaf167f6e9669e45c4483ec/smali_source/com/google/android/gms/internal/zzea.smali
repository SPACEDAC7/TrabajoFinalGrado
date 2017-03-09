.class public final Lcom/google/android/gms/internal/zzea;
.super Lcom/google/android/gms/internal/zzec$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbmc:Lcom/google/android/gms/ads/internal/zzh;

.field private final zzbmd:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzec$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzbmc:Lcom/google/android/gms/ads/internal/zzh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzea;->zzbmd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzea;->zzbme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbme:Ljava/lang/String;

    return-object v0
.end method

.method public recordClick()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbmc:Lcom/google/android/gms/ads/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzh;->zzfa()V

    return-void
.end method

.method public recordImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbmc:Lcom/google/android/gms/ads/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzh;->zzfb()V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/dynamic/zzd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzbmc:Lcom/google/android/gms/ads/internal/zzh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/zzh;->zzc(Landroid/view/View;)V

    goto :goto_2
.end method

.method public zzme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbmd:Ljava/lang/String;

    return-object v0
.end method
