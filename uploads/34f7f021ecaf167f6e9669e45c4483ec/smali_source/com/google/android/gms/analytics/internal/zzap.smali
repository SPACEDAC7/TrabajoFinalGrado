.class public Lcom/google/android/gms/analytics/internal/zzap;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field protected aK:Z

.field protected bN:Ljava/lang/String;

.field protected bO:Ljava/lang/String;

.field protected ee:I

.field protected fX:Z

.field protected fY:Z

.field protected fg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method private static zzfo(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const-string/jumbo v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x2

    goto :goto_e

    :cond_24
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    goto :goto_e

    :cond_2e
    const/4 v0, -0x1

    goto :goto_e
.end method


# virtual methods
.method public getLogLevel()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->ee:I

    return v0
.end method

.method zza(Lcom/google/android/gms/analytics/internal/zzaa;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "Loading global XML config values"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzes(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafq()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzaae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->bN:Ljava/lang/String;

    const-string v1, "XML config - app name"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafr()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzaaf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->bO:Ljava/lang/String;

    const-string v1, "XML config - app version"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafs()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzaft()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzfo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_43

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->ee:I

    const-string v1, "XML config - log level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafu()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->fg:I

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzap;->fX:Z

    const-string v1, "XML config - dispatch period (sec)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafw()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzafx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->aK:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzap;->fY:Z

    const-string v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_71
    return-void
.end method

.method public zzaae()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->bN:Ljava/lang/String;

    return-object v0
.end method

.method public zzaaf()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->bO:Ljava/lang/String;

    return-object v0
.end method

.method public zzafs()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    const/4 v0, 0x0

    return v0
.end method

.method public zzafu()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->fX:Z

    return v0
.end method

.method public zzafw()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->fY:Z

    return v0
.end method

.method public zzafx()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->aK:Z

    return v0
.end method

.method public zzahl()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzacj()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->fg:I

    return v0
.end method

.method protected zzahm()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_12} :catch_1b

    move-result-object v0

    :goto_13
    if-nez v0, :cond_23

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzev(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v2, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_13

    :cond_23
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1a

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzabx()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/internal/zzz;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzz;->zzcg(I)Lcom/google/android/gms/analytics/internal/zzp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzaa;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->zza(Lcom/google/android/gms/analytics/internal/zzaa;)V

    goto :goto_1a
.end method

.method protected zzzy()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->zzahm()V

    return-void
.end method
