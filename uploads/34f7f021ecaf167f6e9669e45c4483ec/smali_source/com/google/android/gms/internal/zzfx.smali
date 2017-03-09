.class Lcom/google/android/gms/internal/zzfx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfx$zza;
    }
.end annotation


# instance fields
.field private final zzani:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfx$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzani:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzani:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzfy;)V
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzani:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfx$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzfx$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/zzfx$7;-><init>(Lcom/google/android/gms/internal/zzfx;Lcom/google/android/gms/internal/zzfx$zza;Lcom/google/android/gms/internal/zzfy;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzani:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method zzc(Lcom/google/android/gms/ads/internal/zzl;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzfx$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$1;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfx$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$2;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfx$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$3;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzig;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfx$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$4;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzed;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfx$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$5;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfx$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfx$6;-><init>(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    return-void
.end method
