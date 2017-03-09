.class public Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzir$zza;
    }
.end annotation


# instance fields
.field private final zzakh:I

.field private final zzaki:I

.field protected final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field private final zzcgl:Landroid/os/Handler;

.field private final zzcgm:J

.field private zzcgn:J

.field private zzcgo:Lcom/google/android/gms/internal/zzme$zza;

.field protected zzcgp:Z

.field protected zzcgq:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzmd;II)V
    .registers 15

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x32

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzir;-><init>(Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzmd;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzmd;IIJJ)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzir;->zzcgm:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzir;->zzcgn:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgl:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzir;->zzcgo:Lcom/google/android/gms/internal/zzme$zza;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzir;->zzcgp:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzir;->zzcgq:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzir;->zzaki:I

    iput p3, p0, Lcom/google/android/gms/internal/zzir;->zzakh:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzir;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzir;->zzakh:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzir;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzir;->zzaki:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzir;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgn:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgn:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzir;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgn:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzir;)Lcom/google/android/gms/internal/zzme$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgo:Lcom/google/android/gms/internal/zzme$zza;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzir;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgm:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzir;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgl:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzir;->zzsc()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgo:Lcom/google/android/gms/internal/zzme$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzme$zza;->zza(Lcom/google/android/gms/internal/zzmd;Z)V

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzir$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzir$zza;-><init>(Lcom/google/android/gms/internal/zzir;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzir$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzmo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcli:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzmo;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzmd;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzir;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzmo;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzmo;)V
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzmd;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v1, v5

    :goto_11
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzmd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->zzcz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public zzsa()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgl:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzir;->zzcgm:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized zzsb()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgp:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzsc()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzsd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzcgq:Z

    return v0
.end method
