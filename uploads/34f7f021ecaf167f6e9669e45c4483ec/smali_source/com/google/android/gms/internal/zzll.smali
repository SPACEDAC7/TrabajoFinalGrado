.class public final Lcom/google/android/gms/internal/zzll;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzae:Ljava/lang/String;

.field private final zzcxh:Lcom/google/android/gms/ads/internal/util/client/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlb;->zzh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcxh:Lcom/google/android/gms/ads/internal/util/client/zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzae:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method public zzfp()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcxh:Lcom/google/android/gms/ads/internal/util/client/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzc;->zzv(Ljava/lang/String;)V

    return-void
.end method
