.class public Lcom/google/android/gms/internal/zzjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjb$zzb;,
        Lcom/google/android/gms/internal/zzjb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzko;",
        ">;"
    }
.end annotation


# static fields
.field static zzchj:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzalt:Lcom/google/android/gms/internal/zzdz;

.field private final zzbnv:Lcom/google/android/gms/internal/zzja;

.field private final zzbnx:Lcom/google/android/gms/internal/zzav;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private zzcgw:I

.field private final zzchs:Lcom/google/android/gms/internal/zzli;

.field private final zzcht:Lcom/google/android/gms/ads/internal/zzq;

.field private zzchu:Z

.field private zzchv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchw:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzjb;->zzchj:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjb;->zzcht:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjb;->zzchs:Lcom/google/android/gms/internal/zzli;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjb;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjb;->zzalt:Lcom/google/android/gms/internal/zzdz;

    invoke-virtual {p0, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->zzsh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchu:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchv:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzjb$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/formats/zzi$zza;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb;->zzst()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    :cond_b
    :goto_b
    return-object v1

    :cond_c
    const-string/jumbo v0, "tracking_urls_and_actions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "impression_tracking_urls"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzjb;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    move-object v0, v1

    :goto_1c
    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchv:Ljava/util/List;

    const-string v0, "active_view"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchw:Lorg/json/JSONObject;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/zzjb$zza;->zza(Lcom/google/android/gms/internal/zzjb;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzi$zza;

    move-result-object v6

    if-nez v6, :cond_37

    const-string v0, "Failed to retrieve ad assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1c

    :cond_37
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzcht:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjb;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v7, v5, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzav;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/ads/internal/formats/zzi$zza;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    move-object v1, v6

    goto :goto_b
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjb;)Lcom/google/android/gms/internal/zzko$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    return-object v0
.end method

.method private zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlt;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p2, :cond_29

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_a
    const-string v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v0, "is_transparent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzjb;->zza(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    :goto_28
    return-object v0

    :cond_29
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_31
    if-eqz p3, :cond_42

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v8, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    goto :goto_28

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchs:Lcom/google/android/gms/internal/zzli;

    new-instance v1, Lcom/google/android/gms/internal/zzjb$6;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzjb$6;-><init>(Lcom/google/android/gms/internal/zzjb;ZDZLjava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzli$zza;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    goto :goto_28
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    check-cast p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzjb$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjb$zzb;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    new-instance v1, Lcom/google/android/gms/internal/zzjb$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/ads/internal/formats/zzf;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjb$zzb;->zzciq:Lcom/google/android/gms/internal/zzfe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    new-instance v2, Lcom/google/android/gms/internal/zzjb$4;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzjb$4;-><init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zzfe;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V

    goto :goto_4
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zzeo;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/internal/zzeo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjb;)Lcom/google/android/gms/ads/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcht:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/ads/internal/formats/zzi$zza;)Lcom/google/android/gms/internal/zzko;
    .registers 41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzjb;->zzako:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zzjb;->zzcgw:I

    if-nez p1, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/zzjb;->zzcgw:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_13

    const/4 v6, 0x0

    :cond_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_fd

    const/4 v2, -0x2

    if-eq v6, v2, :cond_100

    const/16 v30, 0x0

    :goto_19
    new-instance v2, Lcom/google/android/gms/internal/zzko;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvk:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzjb;->zzchv:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjx:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsp:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzchw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclt:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvn:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclx:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzmd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgs;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :catchall_fd
    move-exception v2

    :try_start_fe
    monitor-exit v3
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v2

    :cond_100
    move-object/from16 v30, p1

    goto/16 :goto_19
.end method

.method private zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private zzb(Lcom/google/android/gms/internal/zzeo;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcht:Lcom/google/android/gms/ads/internal/zzq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzeo;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/zzes;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzes;->zza(Lcom/google/android/gms/internal/zzeo;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private zzcj(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb;->zzst()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/zzlq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlq;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzjb$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzjb$zzb;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    new-instance v2, Lcom/google/android/gms/internal/zzjb$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzjb$1;-><init>(Lcom/google/android/gms/internal/zzjb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjb$zzb;Lcom/google/android/gms/internal/zzlq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V

    sget-wide v2, Lcom/google/android/gms/internal/zzjb;->zzchj:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzlq;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_7
.end method

.method private zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    move-object v0, v1

    goto :goto_7
.end method

.method private static zzh(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzc;->zzmn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v1
.end method

.method static synthetic zzi(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzjb;->zzh(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb;->zzss()Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzja;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzja;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;)V

    return-object v0
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/zzjc;
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzq;)V

    return-object v0
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzlt;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_12

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_d
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_6
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_19

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1e

    :cond_14
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zzjb;->zza(IZ)V

    move-object v0, v3

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_7

    :cond_1e
    if-eqz p5, :cond_3d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_24
    move v4, v2

    :goto_25
    if-ge v4, v1, :cond_3f

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_32

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_32
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlt;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_25

    :cond_3d
    const/4 v1, 0x1

    goto :goto_24

    :cond_3f
    move-object v0, v3

    goto :goto_18
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    return-object v0
.end method

.method public zza(IZ)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjb;->zzas(I)V

    :cond_5
    return-void
.end method

.method public zzas(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchu:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzjb;->zzcgw:I

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlt;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzmd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, "vast_xml"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Required field \'vast_xml\' is missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjb;->zzalt:Lcom/google/android/gms/internal/zzdz;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjb;->zzcht:Lcom/google/android/gms/ads/internal/zzq;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/zzjc;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzjc;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    goto :goto_c
.end method

.method protected zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzjb$zza;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb;->zzst()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v0, v3

    :goto_b
    return-object v0

    :cond_c
    const-string/jumbo v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzboj:Z

    :goto_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbol:Z

    :goto_33
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    new-instance v1, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzjd;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_b

    :cond_42
    move v0, v1

    goto :goto_23

    :cond_44
    move v2, v1

    goto :goto_33

    :cond_46
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    new-instance v1, Lcom/google/android/gms/internal/zzje;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzje;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_b

    :cond_55
    const-string v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const-string v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzlq;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzjb$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/google/android/gms/internal/zzjb$2;-><init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zzlq;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v4, Lcom/google/android/gms/internal/zzjb;->zzchj:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/internal/zzlq;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_83

    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzjf;-><init>(Z)V

    move-object v0, v1

    goto :goto_b

    :cond_83
    const-string v1, "No handler for custom template: "

    const-string v0, "custom_template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_99
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    :goto_9c
    move-object v0, v3

    goto/16 :goto_b

    :cond_9f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_99

    :cond_a5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzjb;->zzas(I)V

    goto :goto_9c
.end method

.method public zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlt;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v0, "text_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v0, "bg_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->versionCode:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_80

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v8, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbom:I

    :goto_58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_82

    const-string v2, "images"

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_6d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzls;->zzo(Ljava/util/List;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v13

    new-instance v0, Lcom/google/android/gms/internal/zzjb$5;

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzjb$5;-><init>(Lcom/google/android/gms/internal/zzjb;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/zzls;->zza(Lcom/google/android/gms/internal/zzlt;Lcom/google/android/gms/internal/zzls$zza;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    goto :goto_10

    :cond_80
    move v8, v5

    goto :goto_58

    :cond_82
    const-string v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzlt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d
.end method

.method public zzss()Lcom/google/android/gms/internal/zzko;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzbnv:Lcom/google/android/gms/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->zzsi()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb;->zzsu()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjb;->zzcj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzjb;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzjb$zza;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/internal/zzjb$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/formats/zzi$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/ads/internal/formats/zzi$zza;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi$zza;)Lcom/google/android/gms/internal/zzko;
    :try_end_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_1b} :catch_3c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1b} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1b} :catch_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1b} :catch_31

    move-result-object v0

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchu:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjb;->zzas(I)V

    :cond_2b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi$zza;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    goto :goto_1c

    :catch_31
    move-exception v0

    const-string v1, "Timeout when loading native ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :catch_38
    move-exception v0

    goto :goto_23

    :catch_3a
    move-exception v0

    goto :goto_23

    :catch_3c
    move-exception v0

    goto :goto_23
.end method

.method public zzst()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb;->zzchu:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method zzsu()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
