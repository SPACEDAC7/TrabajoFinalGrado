.class Lcom/google/android/gms/ads/internal/zzl$zza;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaog:Lcom/google/android/gms/ads/internal/zzl;

.field private final zzaoh:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzl;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaoh:I

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method public zzfp()V
    .registers 11

    const/4 v6, -0x1

    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzfm()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/zzl;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    if-eqz v5, :cond_6b

    iget v5, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaoh:I

    :goto_25
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v6, :cond_6d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget v6, v1, Lcom/google/android/gms/internal/zzko;->orientation:I

    :goto_3e
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzl$zza;->zzaog:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzko;->zzclg:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzmd;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzl$zza$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/zzl$zza$1;-><init>(Lcom/google/android/gms/ads/internal/zzl$zza;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6b
    move v5, v6

    goto :goto_25

    :cond_6d
    move v6, v1

    goto :goto_3e
.end method
