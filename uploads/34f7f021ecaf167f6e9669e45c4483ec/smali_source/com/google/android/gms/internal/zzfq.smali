.class public Lcom/google/android/gms/internal/zzfq;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field final zzbra:Lcom/google/android/gms/internal/zzfs;

.field private final zzbrb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzbra:Lcom/google/android/gms/internal/zzfs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfq;->zzbrb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhj()Lcom/google/android/gms/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfr;->zza(Lcom/google/android/gms/internal/zzfq;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbra:Lcom/google/android/gms/internal/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs;->abort()V

    return-void
.end method

.method public zzfp()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbra:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzbrb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->zzbg(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_12

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfq$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfq$1;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_12
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzfq$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfq$1;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
