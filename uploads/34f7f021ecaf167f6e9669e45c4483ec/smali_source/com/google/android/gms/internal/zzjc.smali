.class public Lcom/google/android/gms/internal/zzjc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzalt:Lcom/google/android/gms/internal/zzdz;

.field private zzasl:I

.field private zzasm:I

.field private zzasn:Lcom/google/android/gms/internal/zzlm;

.field private final zzbnr:Lcom/google/android/gms/ads/internal/zzq;

.field private final zzbnx:Lcom/google/android/gms/internal/zzav;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private zzcir:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzcis:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzq;)V
    .registers 10

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzako:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zzjc;->zzasl:I

    iput v1, p0, Lcom/google/android/gms/internal/zzjc;->zzasm:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjc;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjc;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjc;->zzalt:Lcom/google/android/gms/internal/zzdz;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzjc;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzlm;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzasn:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjc;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjc;->zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    return-object v0
.end method

.method private zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzmd;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcir:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzjc$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjc$3;-><init>(Lcom/google/android/gms/internal/zzjc;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcir:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcir:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjc;)Lcom/google/android/gms/ads/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjc;Lcom/google/android/gms/internal/zzmd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjc;->zzj(Lcom/google/android/gms/internal/zzmd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjc;Ljava/lang/ref/WeakReference;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzjc;->zza(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private zza(Ljava/lang/ref/WeakReference;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzmd;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_1d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjc;->zzasn:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzlm;->tryAcquire()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjc;->mContext:Landroid/content/Context;

    aget v6, v4, v2

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzjc;->mContext:Landroid/content/Context;

    aget v4, v4, v1

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjc;->zzako:Ljava/lang/Object;

    monitor-enter v5

    :try_start_42
    iget v6, p0, Lcom/google/android/gms/internal/zzjc;->zzasl:I

    if-ne v6, v3, :cond_4a

    iget v6, p0, Lcom/google/android/gms/internal/zzjc;->zzasm:I

    if-eq v6, v4, :cond_5c

    :cond_4a
    iput v3, p0, Lcom/google/android/gms/internal/zzjc;->zzasl:I

    iput v4, p0, Lcom/google/android/gms/internal/zzjc;->zzasm:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/zzjc;->zzasl:I

    iget v6, p0, Lcom/google/android/gms/internal/zzjc;->zzasm:I

    if-nez p2, :cond_61

    move v0, v1

    :goto_59
    invoke-virtual {v3, v4, v6, v0}, Lcom/google/android/gms/internal/zzme;->zza(IIZ)V

    :cond_5c
    monitor-exit v5

    goto :goto_4

    :catchall_5e
    move-exception v0

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    move v0, v2

    goto :goto_59
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjc;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjc;->zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    return-object v0
.end method

.method private zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzmd;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcis:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzjc$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjc$4;-><init>(Lcom/google/android/gms/internal/zzjc;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcis:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcis:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjc;)Lcom/google/android/gms/internal/zzko$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    return-object v0
.end method

.method private zzj(Lcom/google/android/gms/internal/zzmd;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbpw:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbpx:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/precache"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbpy:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbqb:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbpz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbpr:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/videoClicked"

    sget-object v2, Lcom/google/android/gms/internal/zzfd;->zzbps:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v1, "/trackActiveViewUnit"

    new-instance v2, Lcom/google/android/gms/internal/zzjc$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzjc$2;-><init>(Lcom/google/android/gms/internal/zzjc;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method


# virtual methods
.method public zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlt;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzmd;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzlq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlq;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzjc$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzjc$1;-><init>(Lcom/google/android/gms/internal/zzjc;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzlq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method zzsx()Lcom/google/android/gms/internal/zzmd;
    .registers 11

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgn()Lcom/google/android/gms/internal/zzmf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzj(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjc;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjc;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzjc;->zzalt:Lcom/google/android/gms/internal/zzdz;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjc;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zzq;->zzec()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v9

    move v4, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzmf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v0

    return-object v0
.end method
