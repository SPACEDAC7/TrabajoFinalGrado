.class Lcom/google/android/gms/analytics/internal/zzl;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final dC:Lcom/google/android/gms/analytics/internal/zzj;

.field private final dD:Lcom/google/android/gms/analytics/internal/zzah;

.field private final dE:Lcom/google/android/gms/analytics/internal/zzag;

.field private final dF:Lcom/google/android/gms/analytics/internal/zzi;

.field private dG:J

.field private final dH:Lcom/google/android/gms/analytics/internal/zzt;

.field private final dI:Lcom/google/android/gms/analytics/internal/zzt;

.field private final dJ:Lcom/google/android/gms/analytics/internal/zzal;

.field private dK:J

.field private dL:Z

.field private mStarted:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dG:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzk(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzm(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzn(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dD:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzo(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dJ:Lcom/google/android/gms/analytics/internal/zzal;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$1;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$2;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dI:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzmt;)V
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabx()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzdr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzact()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzyu()Lcom/google/android/gms/analytics/zze;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznb;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznb;->zzeh(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznb;->zzat(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzg;)V

    const-class v1, Lcom/google/android/gms/internal/zzmw;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzmw;

    const-class v2, Lcom/google/android/gms/internal/zzms;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzms;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzmc()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzms;->setAppName(Ljava/lang/String;)V

    goto :goto_51

    :cond_75
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzms;->setAppVersion(Ljava/lang/String;)V

    goto :goto_51

    :cond_81
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzms;->setAppId(Ljava/lang/String;)V

    goto :goto_51

    :cond_8d
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzms;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_51

    :cond_99
    const-string/jumbo v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zznb;->setUserId(Ljava/lang/String;)V

    goto :goto_51

    :cond_a6
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzmw;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_aa
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzago()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/analytics/zze;->zzp(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/zze;->zzzm()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzl;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadj()V

    return-void
.end method

.method private zzadh()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabx()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->zzat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    :cond_16
    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzau(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzew(Ljava/lang/String;)V

    goto :goto_16

    :cond_2e
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzau(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private zzadj()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzl$4;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method

.method private zzadk()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzadb()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_8} :catch_14

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dI:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zzx(J)V

    return-void

    :catch_14
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private zzadq()Z
    .registers 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dL:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadw()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private zzadr()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacd()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzafn()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzfy()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadc()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeo()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaen()J

    move-result-wide v2

    const-string v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->schedule()V

    goto :goto_a
.end method

.method private zzads()V
    .registers 9

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadr()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadw()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzagq()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_4d

    :goto_29
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzt;->zzfy()Z

    move-result v2

    if-eqz v2, :cond_67

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzt;->zzafk()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzy(J)V

    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzael()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_29

    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzael()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_29

    :cond_67
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzx(J)V

    goto :goto_4c
.end method

.method private zzadt()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadu()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadv()V

    return-void
.end method

.method private zzadu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzfy()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dH:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->cancel()V

    return-void
.end method

.method private zzadv()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacd()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzfy()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->cancel()V

    :cond_d
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzl;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadk()V

    return-void
.end method

.method private zzez(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsz;->zzco(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected onServiceConnected()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadm()V

    return-void
.end method

.method start()V
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    if-nez v0, :cond_1d

    move v0, v1

    :goto_9
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacc()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzl$3;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzh;Z)J
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacr()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacr()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_42

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzh;->zzr(J)V

    :goto_32
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Lcom/google/android/gms/analytics/internal/zzh;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_3c} :catch_49
    .catchall {:try_start_9 .. :try_end_3c} :catchall_65

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_41} :catch_57

    :goto_41
    return-wide v0

    :cond_42
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_45
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzh;->zzr(J)V
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_65

    goto :goto_32

    :catch_49
    move-exception v0

    :try_start_4a
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_65

    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_54} :catch_5e

    :goto_54
    const-wide/16 v0, -0x1

    goto :goto_41

    :catch_57
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :catch_5e
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_54

    :catchall_65
    move-exception v0

    :try_start_66
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_6b} :catch_6c

    :goto_6b
    throw v0

    :catch_6c
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6b
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzab;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dL:Z

    if-eqz v0, :cond_27

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzet(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadl()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzet(Ljava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_38} :catch_39

    goto :goto_26

    :catch_39
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzw;J)V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzagq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_23
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadl()V

    :try_start_32
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadn()Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzagr()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    if-eqz p1, :cond_45

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzf(Ljava/lang/Throwable;)V

    :cond_45
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dK:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzagj()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zzagr()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    if-eqz p1, :cond_50

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzf(Ljava/lang/Throwable;)V

    goto :goto_50
.end method

.method public zzabr()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzacz()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzada()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_1b} :catch_2c

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadl()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzacv()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :cond_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public zzabu()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method zzabw()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dK:J

    return-void
.end method

.method public zzadc()J
    .registers 3

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzadc()J
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v0

    :goto_c
    return-wide v0

    :catch_d
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method protected zzadi()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadh()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzago()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzez(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzew(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadx()V

    :cond_20
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzez(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzew(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadx()V

    :cond_30
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzau(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :goto_3f
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dL:Z

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadl()V

    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    return-void

    :cond_55
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method protected zzadl()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dL:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzafb()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dJ:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dJ:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->connect()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dJ:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->onServiceConnected()V

    goto :goto_4
.end method

.method public zzadm()V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaby()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeg()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaep()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzt(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_4b} :catch_4c

    goto :goto_25

    :catch_4c
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto :goto_25

    :cond_56
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_59
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/internal/zzj;->zzu(J)V
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_62} :catch_7b

    :cond_62
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    goto :goto_25

    :catch_7b
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto :goto_25
.end method

.method protected zzadn()Z
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move v0, v1

    :goto_19
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzl;->dD:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzagk()Z

    move-result v3

    if-nez v3, :cond_2d

    :goto_21
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :goto_2a
    return v2

    :cond_2b
    move v0, v2

    goto :goto_19

    :cond_2d
    move v1, v2

    goto :goto_21

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaep()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeq()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_4b
    :try_start_4b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_1dd

    :try_start_53
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzj;->zzt(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_67} :catch_cc
    .catchall {:try_start_53 .. :try_end_67} :catchall_1dd

    :try_start_67
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_2a

    :catch_72
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto :goto_2a

    :cond_7c
    :try_start_7c
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_89} :catch_cc
    .catchall {:try_start_7c .. :try_end_89} :catchall_1dd

    :try_start_89
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_8d

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V
    :try_end_b5
    .catchall {:try_start_89 .. :try_end_b5} :catchall_1dd

    :try_start_b5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b5 .. :try_end_bf} :catch_c1

    goto/16 :goto_2a

    :catch_c1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :catch_cc
    move-exception v0

    :try_start_cd
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_1dd

    :try_start_d5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d5 .. :try_end_df} :catch_e1

    goto/16 :goto_2a

    :catch_e1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :cond_ec
    :try_start_ec
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1f4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzes(Ljava/lang/String;)V

    :goto_fc
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f4

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v1

    if-nez v1, :cond_13a

    move-wide v0, v4

    :goto_112
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->dD:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->zzagk()Z

    move-result v4

    if-eqz v4, :cond_188

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->dD:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/internal/zzah;->zzt(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v0

    :goto_125
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_125

    :cond_13a
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14a
    .catchall {:try_start_ec .. :try_end_14a} :catchall_1dd

    :try_start_14a
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/analytics/internal/zzj;->zzu(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14a .. :try_end_15e} :catch_15f
    .catchall {:try_start_14a .. :try_end_15e} :catchall_1dd

    goto :goto_fc

    :catch_15f
    move-exception v0

    :try_start_160
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V
    :try_end_168
    .catchall {:try_start_160 .. :try_end_168} :catchall_1dd

    :try_start_168
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_172
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_168 .. :try_end_172} :catch_174

    goto/16 :goto_2a

    :catch_174
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :cond_17f
    :try_start_17f
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/internal/zzj;->zzr(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_187
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17f .. :try_end_187} :catch_1a5
    .catchall {:try_start_17f .. :try_end_187} :catchall_1dd

    move-wide v0, v4

    :cond_188
    :try_start_188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_1dd

    move-result v4

    if-eqz v4, :cond_1c5

    :try_start_18e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18e .. :try_end_198} :catch_19a

    goto/16 :goto_2a

    :catch_19a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :catch_1a5
    move-exception v0

    :try_start_1a6
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V
    :try_end_1ae
    .catchall {:try_start_1a6 .. :try_end_1ae} :catchall_1dd

    :try_start_1ae
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ae .. :try_end_1b8} :catch_1ba

    goto/16 :goto_2a

    :catch_1ba
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :cond_1c5
    :try_start_1c5
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c5 .. :try_end_1cf} :catch_1d2

    move-wide v4, v0

    goto/16 :goto_4b

    :catch_1d2
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :catchall_1dd
    move-exception v0

    :try_start_1de
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1e8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1de .. :try_end_1e8} :catch_1e9

    throw v0

    :catch_1e9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto/16 :goto_2a

    :cond_1f4
    move-wide v0, v4

    goto/16 :goto_112
.end method

.method public zzado()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzet(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dK:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadl()V

    :try_start_13
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadn()Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzagr()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->dK:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzagj()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    goto :goto_2b
.end method

.method public zzadp()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzabx()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadq()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    goto :goto_18

    :cond_2a
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->eU:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzagh()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dE:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->isConnected()Z

    move-result v0

    :goto_43
    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzads()V

    goto :goto_18

    :cond_49
    const/4 v0, 0x1

    goto :goto_43

    :cond_4b
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadt()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadr()V

    goto :goto_18
.end method

.method public zzadw()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dG:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dG:J

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaem()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzh()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzap;->zzafu()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzh()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzahl()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_a
.end method

.method public zzadx()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dL:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    return-void
.end method

.method public zzaw(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzw;)V
    .registers 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dK:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/analytics/internal/zzh;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzacs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzagp()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzafi()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmt;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzmt;)V

    goto :goto_22
.end method

.method zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzagt()Lcom/google/android/gms/analytics/internal/zzai$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzagw()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzmc()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzab;->zza(Lcom/google/android/gms/analytics/internal/zzc;Lcom/google/android/gms/analytics/internal/zzab;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object p1

    goto :goto_a
.end method

.method public zzfa(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzib(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaby()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmt;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzev(Ljava/lang/String;)V

    goto :goto_18

    :cond_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzff(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzace()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzagp()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzafi()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :cond_5c
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzv(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzmt;)V

    goto :goto_6d
.end method

.method public zzw(J)V
    .registers 6

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzacj()V

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    move-wide p1, v0

    :cond_d
    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->dG:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzadp()V

    return-void
.end method

.method protected zzzy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dC:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dD:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->dF:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->initialize()V

    return-void
.end method
