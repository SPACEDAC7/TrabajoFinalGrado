.class public final Lcom/google/android/gms/clearcut/zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/zza$zza;,
        Lcom/google/android/gms/clearcut/zza$zzd;,
        Lcom/google/android/gms/clearcut/zza$zzb;,
        Lcom/google/android/gms/clearcut/zza$zzc;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final hg:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzqd;",
            ">;"
        }
    .end annotation
.end field

.field public static final hh:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzqd;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final wc:I

.field private wd:Ljava/lang/String;

.field private we:I

.field private wf:Ljava/lang/String;

.field private wg:Ljava/lang/String;

.field private final wh:Z

.field private wi:I

.field private final wj:Lcom/google/android/gms/clearcut/zzb;

.field private wk:Lcom/google/android/gms/clearcut/zza$zzd;

.field private final wl:Lcom/google/android/gms/clearcut/zza$zzb;

.field private final zzaql:Lcom/google/android/gms/common/util/zze;

.field private final zzcjc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zza;->hg:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/clearcut/zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zza;->hh:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/zza;->hh:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/zza;->hg:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/clearcut/zza;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zza$zzd;Lcom/google/android/gms/clearcut/zza$zzb;)V
    .registers 13

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/clearcut/zza;->we:I

    iput v0, p0, Lcom/google/android/gms/clearcut/zza;->wi:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zza;->zzcjc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/zza;->zzbh(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/clearcut/zza;->wc:I

    iput p2, p0, Lcom/google/android/gms/clearcut/zza;->we:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/zza;->wd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/zza;->wf:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/zza;->wg:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/zza;->wh:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/zza;->wj:Lcom/google/android/gms/clearcut/zzb;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/zza;->zzaql:Lcom/google/android/gms/common/util/zze;

    if-eqz p9, :cond_3a

    :goto_25
    iput-object p9, p0, Lcom/google/android/gms/clearcut/zza;->wk:Lcom/google/android/gms/clearcut/zza$zzd;

    iput v0, p0, Lcom/google/android/gms/clearcut/zza;->wi:I

    iput-object p10, p0, Lcom/google/android/gms/clearcut/zza;->wl:Lcom/google/android/gms/clearcut/zza$zzb;

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/zza;->wh:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zza;->wf:Ljava/lang/String;

    if-nez v1, :cond_34

    const/4 v0, 0x1

    :cond_34
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    :cond_39
    return-void

    :cond_3a
    new-instance p9, Lcom/google/android/gms/clearcut/zza$zzd;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/zza$zzd;-><init>()V

    goto :goto_25
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqc;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzayl()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/zzqh;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/clearcut/zza;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zza$zzd;Lcom/google/android/gms/clearcut/zza$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/clearcut/zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zza;->we:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wd:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_10

    :cond_26
    move-object v0, v2

    goto :goto_3
.end method

.method private zzbh(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method static synthetic zzc(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wf:Ljava/lang/String;

    return-object v0
.end method

.method private static zzc(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic zzd(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wg:Ljava/lang/String;

    return-object v0
.end method

.method private static zzd(Ljava/util/ArrayList;)[[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[[B"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    goto :goto_3
.end method

.method static synthetic zze(Lcom/google/android/gms/clearcut/zza;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zze(Ljava/util/ArrayList;)[I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zza;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->zzaql:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzf(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zza;->zzc(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zza$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wk:Lcom/google/android/gms/clearcut/zza$zzd;

    return-object v0
.end method

.method static synthetic zzg(Ljava/util/ArrayList;)[[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zza;->zzd(Ljava/util/ArrayList;)[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/clearcut/zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zza;->wh:Z

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->zzcjc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/clearcut/zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zza;->wc:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zza$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wl:Lcom/google/android/gms/clearcut/zza$zzb;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza;->wj:Lcom/google/android/gms/clearcut/zzb;

    return-object v0
.end method


# virtual methods
.method public zzm([B)Lcom/google/android/gms/clearcut/zza$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/clearcut/zza$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/zza$zza;-><init>(Lcom/google/android/gms/clearcut/zza;[BLcom/google/android/gms/clearcut/zza$1;)V

    return-object v0
.end method
