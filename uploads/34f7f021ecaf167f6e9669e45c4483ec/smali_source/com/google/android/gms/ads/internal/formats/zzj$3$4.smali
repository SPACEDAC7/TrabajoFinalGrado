.class Lcom/google/android/gms/ads/internal/formats/zzj$3$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzj$3;->zze(Lcom/google/android/gms/internal/zzgi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbog:Lcom/google/android/gms/ads/internal/formats/zzj$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzj$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$4;->zzbog:Lcom/google/android/gms/ads/internal/formats/zzj$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$4;->zzbog:Lcom/google/android/gms/ads/internal/formats/zzj$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzj$3;->zzboe:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzj;->zzb(Lcom/google/android/gms/ads/internal/formats/zzj;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
