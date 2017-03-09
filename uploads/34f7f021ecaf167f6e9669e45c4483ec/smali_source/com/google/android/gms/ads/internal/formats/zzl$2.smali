.class Lcom/google/android/gms/ads/internal/formats/zzl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzl;->zzd(Lcom/google/android/gms/ads/internal/formats/zzj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

.field final synthetic zzbow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzl;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$2;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzl$2;->zzbow:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzl$2;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/formats/zzl;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public zzmu()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzl$2;->zzbov:Lcom/google/android/gms/ads/internal/formats/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzl$2;->zzbow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzl;->onClick(Landroid/view/View;)V

    return-void
.end method
