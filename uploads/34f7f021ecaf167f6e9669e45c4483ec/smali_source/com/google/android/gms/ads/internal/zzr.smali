.class public Lcom/google/android/gms/ads/internal/zzr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzr$zza;
    }
.end annotation


# instance fields
.field private final zzapi:Lcom/google/android/gms/ads/internal/zzr$zza;

.field private zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzapk:Z

.field private zzapl:Z

.field private zzapm:J

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzr$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzr$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzr$zza;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapl:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapm:J

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapi:Lcom/google/android/gms/ads/internal/zzr$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzr$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzr$1;-><init>(Lcom/google/android/gms/ads/internal/zzr;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzr;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzr;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapi:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapl:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapi:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public resume()V
    .registers 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapl:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapm:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_10
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    if-eqz v0, :cond_a

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapm:J

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapl:Z

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapi:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/ads/internal/zzr$zza;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public zzfy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapk:Z

    return v0
.end method

.method public zzg(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-void
.end method

.method public zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    return-void
.end method
