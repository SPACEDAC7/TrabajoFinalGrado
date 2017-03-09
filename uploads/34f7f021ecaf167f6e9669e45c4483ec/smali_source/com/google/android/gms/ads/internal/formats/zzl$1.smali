.class Lcom/google/android/gms/ads/internal/formats/zzl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzl;->zze(Lcom/google/android/gms/dynamic/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbou:Lcom/google/android/gms/ads/internal/formats/zzj;

.field final synthetic zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzl;Lcom/google/android/gms/ads/internal/formats/zzj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbou:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbou:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzj;->zzmx()Lcom/google/android/gms/internal/zzmd;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzl;->zza(Lcom/google/android/gms/ads/internal/formats/zzl;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzl;->zza(Lcom/google/android/gms/ads/internal/formats/zzl;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbou:Lcom/google/android/gms/ads/internal/formats/zzj;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$1;->zzbou:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzl;->zza(Lcom/google/android/gms/ads/internal/formats/zzl;Lcom/google/android/gms/ads/internal/formats/zzj;)V

    :cond_2a
    return-void
.end method
