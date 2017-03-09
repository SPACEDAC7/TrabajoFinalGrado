.class Lcom/google/android/gms/ads/internal/zzf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzme$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzko;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamw:Lcom/google/android/gms/ads/internal/zzf;

.field final synthetic zzamx:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzamy:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzko;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzamw:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzamx:Lcom/google/android/gms/internal/zzko;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzamy:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzff()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzamx:Lcom/google/android/gms/internal/zzko;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzko;->zzcsj:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzamy:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlb;->zzb(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
