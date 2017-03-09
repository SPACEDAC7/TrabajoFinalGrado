.class public Lcom/google/android/gms/internal/zzmc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field private zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field private final zzcyz:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzmd;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzmc;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmc;->zzcyz:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcyz:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    :cond_18
    return-void
.end method

.method public onPause()V
    .registers 2

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->pause()V

    :cond_e
    return-void
.end method

.method public zza(IIIIIZ)V
    .registers 15

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxm()Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->zzxl()Lcom/google/android/gms/internal/zzdx;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "vpr2"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmd;->zzxm()Lcom/google/android/gms/internal/zzdy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v5

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmd;IZLcom/google/android/gms/internal/zzdz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcyz:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzme;->zzao(Z)V

    goto :goto_6
.end method

.method public zze(IIII)V
    .registers 6

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    :cond_e
    return-void
.end method

.method public zzwv()Lcom/google/android/gms/ads/internal/overlay/zzk;
    .registers 2

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmc;->zzcep:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-object v0
.end method
