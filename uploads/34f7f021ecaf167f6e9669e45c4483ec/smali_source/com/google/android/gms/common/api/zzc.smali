.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final vS:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final xA:Lcom/google/android/gms/internal/zzsb;

.field private final xB:Lcom/google/android/gms/common/api/Api$zze;

.field private final xC:Lcom/google/android/gms/internal/zzqr;

.field private final xw:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final xx:Lcom/google/android/gms/internal/zzql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzql",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final xy:Lcom/google/android/gms/internal/zzrh;

.field private final xz:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzajy:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzsb;)V
    .registers 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzsb;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzc;->zzajy:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xx:Lcom/google/android/gms/internal/zzql;

    new-instance v0, Lcom/google/android/gms/internal/zzri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzri;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xz:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzath()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iput-object p5, p0, Lcom/google/android/gms/common/api/zzc;->xA:Lcom/google/android/gms/internal/zzsb;

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzc;->xC:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->xx:Lcom/google/android/gms/internal/zzql;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzqw;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/internal/zzql;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzsb;)V
    .registers 11
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/zzsb;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzsb;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzqr;)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzqr;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzajy:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzql;->zzb(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xx:Lcom/google/android/gms/internal/zzql;

    new-instance v0, Lcom/google/android/gms/internal/zzri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzri;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xz:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzath()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xA:Lcom/google/android/gms/internal/zzsb;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p5, p0, Lcom/google/android/gms/common/api/zzc;->xC:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzsb;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzsb;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzc;->zzajy:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xx:Lcom/google/android/gms/internal/zzql;

    new-instance v0, Lcom/google/android/gms/internal/zzri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzri;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xz:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzath()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iput-object p5, p0, Lcom/google/android/gms/common/api/zzc;->xA:Lcom/google/android/gms/internal/zzsb;

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzc;->xC:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzsb;)V
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/zzsb;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    :goto_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzsb;)V

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_a
.end method

.method private zza(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzqo$zza;->zzarv()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzqo$zza;)V

    return-object p2
.end method

.method private zza(ILcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p2    # Lcom/google/android/gms/internal/zzse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(I",
            "Lcom/google/android/gms/internal/zzse",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zzc;->xA:Lcom/google/android/gms/internal/zzsb;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzse;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzsb;)V

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xz:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Client is already built, use getClient(). getClientCallbacks() should also be provided with a helper."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzaqw()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzaqu()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/internal/zzag;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzh;->zzaqz()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzf;->zzca(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/Api$zzh;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzg;)V

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_5

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzaqt()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzf;->zzca(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    goto :goto_32
.end method

.method public doBestEffortWrite(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method

.method public doBestEffortWrite(Lcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzse",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doRead(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method

.method public doRead(Lcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzse",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doRegisterEventListener(Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsh;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/zzrw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzrw",
            "<TA;>;U:",
            "Lcom/google/android/gms/internal/zzsh",
            "<TA;>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzatz()Lcom/google/android/gms/internal/zzrr$zzb;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzsh;->zzatz()Lcom/google/android/gms/internal/zzrr$zzb;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzatz()Lcom/google/android/gms/internal/zzrr$zzb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzsh;->zzatz()Lcom/google/android/gms/internal/zzrr$zzb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrr$zzb;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsh;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doUnregisterEventListener(Lcom/google/android/gms/internal/zzrr$zzb;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzrr$zzb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzrr$zzb;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzse",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzse;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getApi()Lcom/google/android/gms/common/api/Api;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->vS:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public getApiKey()Lcom/google/android/gms/internal/zzql;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzql",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xx:Lcom/google/android/gms/internal/zzql;

    return-object v0
.end method

.method public getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getClient()Lcom/google/android/gms/common/api/Api$zze;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    const-string v1, "Client is null, buildApiClient() should be used."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public getClientCallbacks()Lcom/google/android/gms/internal/zzqr;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xC:Lcom/google/android/gms/internal/zzqr;

    const-string v1, "ClientCallbacks is null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqr;

    return-object v0
.end method

.method public getInstanceId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzajy:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnectionlessGoogleApiClient()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xB:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->xC:Lcom/google/android/gms/internal/zzqr;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrr;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzrr",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzajy:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/zzrs;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrr;

    move-result-object v0

    return-object v0
.end method
