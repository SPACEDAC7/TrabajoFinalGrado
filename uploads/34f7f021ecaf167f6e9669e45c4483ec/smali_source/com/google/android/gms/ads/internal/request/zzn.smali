.class public Lcom/google/android/gms/ads/internal/request/zzn;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzn$zza;,
        Lcom/google/android/gms/ads/internal/request/zzn$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzn$zzc;
    }
.end annotation


# static fields
.field private static final zzaox:Ljava/lang/Object;

.field private static zzchl:Lcom/google/android/gms/internal/zzgh;

.field static final zzcmk:J

.field static zzcml:Z

.field private static zzcmm:Lcom/google/android/gms/internal/zzff;

.field private static zzcmn:Lcom/google/android/gms/internal/zzfj;

.field private static zzcmo:Lcom/google/android/gms/internal/zzfe;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcgi:Ljava/lang/Object;

.field private final zzcjh:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzcji:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field private zzcmp:Lcom/google/android/gms/internal/zzgh$zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmk:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzaox:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcml:Z

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzchl:Lcom/google/android/gms/internal/zzgh;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmm:Lcom/google/android/gms/internal/zzff;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmo:Lcom/google/android/gms/internal/zzfe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .registers 11

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkw;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcgi:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcjh:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcji:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    sget-object v6, Lcom/google/android/gms/ads/internal/request/zzn;->zzaox:Ljava/lang/Object;

    monitor-enter v6

    :try_start_14
    sget-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcml:Z

    if-nez v0, :cond_59

    new-instance v0, Lcom/google/android/gms/internal/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    new-instance v0, Lcom/google/android/gms/internal/zzff;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmm:Lcom/google/android/gms/internal/zzff;

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzn$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzn$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmo:Lcom/google/android/gms/internal/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcji:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzbcx:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/internal/request/zzn$zzb;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/request/zzn$zzb;-><init>()V

    new-instance v5, Lcom/google/android/gms/ads/internal/request/zzn$zza;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/request/zzn$zza;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzchl:Lcom/google/android/gms/internal/zzgh;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcml:Z

    :cond_59
    monitor-exit v6

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/ads/internal/request/zza$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcjh:Lcom/google/android/gms/ads/internal/request/zza$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzgh$zzc;)Lcom/google/android/gms/internal/zzgh$zzc;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmp:Lcom/google/android/gms/internal/zzgh$zzc;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v2, "sdk_less_server_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/zzjj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzjj;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzjj;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgv()Lcom/google/android/gms/internal/zzjs;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjs;->zzv(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjr;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjj;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_d

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_32} :catch_77
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_2d .. :try_end_32} :catch_79
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_2d .. :try_end_32} :catch_6b

    move-result-object v0

    :goto_33
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "request_param"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_62

    const-string v2, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    :goto_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :try_start_62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzlb;->zzap(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_69} :catch_75

    move-result-object v1

    goto :goto_d

    :catch_6b
    move-exception v0

    :goto_6c
    const-string v4, "Cannot get advertising id info"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_33

    :cond_73
    const/4 v0, 0x0

    goto :goto_5b

    :catch_75
    move-exception v0

    goto :goto_d

    :catch_77
    move-exception v0

    goto :goto_6c

    :catch_79
    move-exception v0

    goto :goto_6c

    :catch_7b
    move-exception v0

    goto :goto_6c
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzgh$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmp:Lcom/google/android/gms/internal/zzgh$zzc;

    return-object v0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/zzge;)V
    .registers 3

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmm:Lcom/google/android/gms/internal/zzff;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmo:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzge;)V
    .registers 3

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmm:Lcom/google/android/gms/internal/zzff;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmo:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzge;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method private zze(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 12

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlb;->zzvr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v9}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzfj;->zzbd(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcxr:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/ads/internal/request/zzn$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/zzn$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmk:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_3b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3b .. :try_end_43} :catch_7f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_43} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3b .. :try_end_43} :catch_52
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3b .. :try_end_43} :catch_5a

    if-nez v0, :cond_61

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v8}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_15

    :catch_4b
    move-exception v0

    :goto_4c
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v8}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_15

    :catch_52
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_15

    :catch_5a
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v9}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_15

    :cond_61
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_15

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_15

    :catch_7f
    move-exception v0

    goto :goto_4c
.end method

.method static synthetic zztf()Lcom/google/android/gms/internal/zzfj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcmn:Lcom/google/android/gms/internal/zzfj;

    return-object v0
.end method

.method static synthetic zztg()Lcom/google/android/gms/internal/zzgh;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzchl:Lcom/google/android/gms/internal/zzgh;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcgi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcxr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzn$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzn$3;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzfp()V
    .registers 12

    const/4 v3, 0x0

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcji:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/request/zzn;->zze(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/internal/zzko$zza;

    iget v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    iget-wide v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-object v4, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzko$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcxr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzn$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzn$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzko$zza;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
