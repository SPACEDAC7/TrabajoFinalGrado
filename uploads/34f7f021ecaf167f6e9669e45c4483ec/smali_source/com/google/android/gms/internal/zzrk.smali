.class public final Lcom/google/android/gms/internal/zzrk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static Ba:Lcom/google/android/gms/internal/zzrk;

.field private static final zzaox:Ljava/lang/Object;


# instance fields
.field private final Bb:Lcom/google/android/gms/common/api/Status;

.field private final Bc:Z

.field private final Bd:Z

.field private final zzctj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrk;->zzaox:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google_app_measurement_enable"

    const-string v5, "integer"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_4d

    move v2, v0

    :goto_20
    if-nez v2, :cond_4f

    :goto_22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrk;->Bd:Z

    move v0, v2

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrk;->Bc:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzy;->zzcd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    new-instance v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzah;-><init>(Landroid/content/Context;)V

    const-string v1, "google_app_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrk;->Bb:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzctj:Ljava/lang/String;

    :goto_4c
    return-void

    :cond_4d
    move v2, v1

    goto :goto_20

    :cond_4f
    move v0, v1

    goto :goto_22

    :cond_51
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzrk;->Bd:Z

    goto :goto_25

    :cond_54
    iput-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzctj:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xZ:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrk;->Bb:Lcom/google/android/gms/common/api/Status;

    goto :goto_4c
.end method

.method public static zzatt()Ljava/lang/String;
    .registers 1

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrk;->zzhh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrk;->zzctj:Ljava/lang/String;

    return-object v0
.end method

.method public static zzatu()Z
    .registers 1

    const-string v0, "isMeasurementExplicitlyDisabled"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrk;->zzhh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzrk;->Bd:Z

    return v0
.end method

.method public static zzby(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .registers 3

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzrk;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/zzrk;->Ba:Lcom/google/android/gms/internal/zzrk;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzrk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrk;->Ba:Lcom/google/android/gms/internal/zzrk;

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/zzrk;->Ba:Lcom/google/android/gms/internal/zzrk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrk;->Bb:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static zzhh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrk;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/zzrk;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzrk;->Ba:Lcom/google/android/gms/internal/zzrk;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Initialize must be called before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    sget-object v0, Lcom/google/android/gms/internal/zzrk;->Ba:Lcom/google/android/gms/internal/zzrk;

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    return-object v0
.end method
