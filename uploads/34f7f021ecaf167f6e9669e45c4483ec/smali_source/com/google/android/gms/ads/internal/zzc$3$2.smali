.class Lcom/google/android/gms/ads/internal/zzc$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamn:Lcom/google/android/gms/ads/internal/zze;

.field final synthetic zzamo:Lcom/google/android/gms/ads/internal/zzc$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3$2;->zzamo:Lcom/google/android/gms/ads/internal/zzc$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3$2;->zzamn:Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3$2;->zzamn:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zze;->recordClick()V

    return-void
.end method
