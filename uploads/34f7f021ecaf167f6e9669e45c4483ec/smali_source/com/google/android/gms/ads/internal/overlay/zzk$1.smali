.class Lcom/google/android/gms/ads/internal/overlay/zzk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzk;->zzqb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccm:Lcom/google/android/gms/ads/internal/overlay/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk$1;->zzccm:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk$1;->zzccm:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const-string/jumbo v1, "surfaceCreated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Lcom/google/android/gms/ads/internal/overlay/zzk;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
