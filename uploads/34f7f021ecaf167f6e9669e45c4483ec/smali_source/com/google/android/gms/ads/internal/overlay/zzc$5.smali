.class Lcom/google/android/gms/ads/internal/overlay/zzc$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzc;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaf:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field final synthetic zzcai:I

.field final synthetic zzcaj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcaf:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcai:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcaj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcaf:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcaf:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcai:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzcaj:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzf(II)V

    :cond_15
    return-void
.end method
