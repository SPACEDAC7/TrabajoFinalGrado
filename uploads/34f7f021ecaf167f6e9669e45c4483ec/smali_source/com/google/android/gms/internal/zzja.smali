.class public Lcom/google/android/gms/internal/zzja;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzja$zza;
    }
.end annotation


# static fields
.field private static final zzaox:Ljava/lang/Object;

.field private static final zzchj:J

.field private static zzchk:Z

.field private static zzchl:Lcom/google/android/gms/internal/zzgh;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbnr:Lcom/google/android/gms/ads/internal/zzq;

.field private final zzbnx:Lcom/google/android/gms/internal/zzav;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private zzchm:Lcom/google/android/gms/internal/zzgf;

.field private zzchn:Lcom/google/android/gms/internal/zzgh$zze;

.field private zzcho:Lcom/google/android/gms/internal/zzge;

.field private zzchp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzja;->zzchj:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzja;->zzaox:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzja;->zzchk:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzja;->zzchl:Lcom/google/android/gms/internal/zzgh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzav;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzja;->zzchp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzja;->zzbnx:Lcom/google/android/gms/internal/zzav;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbiz:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzja;->zzchp:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/ads/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzko$zza;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "https:"

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const-string v0, "http:"

    goto :goto_e

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private zzsj()V
    .registers 8

    sget-object v6, Lcom/google/android/gms/internal/zzja;->zzaox:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/zzja;->zzchk:Z

    if-nez v0, :cond_3d

    new-instance v0, Lcom/google/android/gms/internal/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzja;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzbix:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzko$zza;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzja$3;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzja$3;-><init>(Lcom/google/android/gms/internal/zzja;)V

    new-instance v5, Lcom/google/android/gms/internal/zzgh$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzgh$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg;)V

    sput-object v0, Lcom/google/android/gms/internal/zzja;->zzchl:Lcom/google/android/gms/internal/zzgh;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzja;->zzchk:Z

    :cond_3d
    monitor-exit v6

    return-void

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->mContext:Landroid/content/Context;

    goto :goto_17

    :catchall_42
    move-exception v0

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private zzsk()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzgh$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzja;->zzsp()Lcom/google/android/gms/internal/zzgh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja;->zzbnx:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzgh;->zzc(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgh$zze;-><init>(Lcom/google/android/gms/internal/zzgh$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzchn:Lcom/google/android/gms/internal/zzgh$zze;

    return-void
.end method

.method private zzsl()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzchm:Lcom/google/android/gms/internal/zzgf;

    return-void
.end method

.method private zzsm()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzja;->zzsn()Lcom/google/android/gms/internal/zzgf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzbix:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzko$zza;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/zzq;->zzec()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v2, Lcom/google/android/gms/internal/zzja;->zzchj:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzge;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzcho:Lcom/google/android/gms/internal/zzge;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzcho:Lcom/google/android/gms/internal/zzge;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zzbnr:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhw;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzja$zza;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzja;->zzchp:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzja;->zzsq()Lcom/google/android/gms/internal/zzgh$zze;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "SharedJavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/zzja$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzja$1;-><init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zza;)V

    new-instance v2, Lcom/google/android/gms/internal/zzja$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzja$2;-><init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zza;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zze;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    goto :goto_f

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzja;->zzso()Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "JavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_f

    :cond_2a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzja$zza;->zze(Lcom/google/android/gms/internal/zzgi;)V

    goto :goto_f
.end method

.method public zzsh()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzja;->zzchp:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzja;->zzsj()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzja;->zzsl()V

    goto :goto_7
.end method

.method public zzsi()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzja;->zzchp:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzja;->zzsk()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzja;->zzsm()V

    goto :goto_7
.end method

.method protected zzsn()Lcom/google/android/gms/internal/zzgf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzchm:Lcom/google/android/gms/internal/zzgf;

    return-object v0
.end method

.method protected zzso()Lcom/google/android/gms/internal/zzge;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzcho:Lcom/google/android/gms/internal/zzge;

    return-object v0
.end method

.method protected zzsp()Lcom/google/android/gms/internal/zzgh;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzja;->zzchl:Lcom/google/android/gms/internal/zzgh;

    return-object v0
.end method

.method protected zzsq()Lcom/google/android/gms/internal/zzgh$zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzchn:Lcom/google/android/gms/internal/zzgh$zze;

    return-object v0
.end method
