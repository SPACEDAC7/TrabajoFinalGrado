.class Lcom/google/android/gms/ads/internal/overlay/zzv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzv;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/ads/internal/overlay/zzh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccs:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field final synthetic zzcct:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzv$1;->zzcct:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzv$1;->zzccs:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzv$1;->zzccs:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzqg()V

    return-void
.end method
