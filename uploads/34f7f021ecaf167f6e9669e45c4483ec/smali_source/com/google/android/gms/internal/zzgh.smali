.class public Lcom/google/android/gms/internal/zzgh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgh$zza;,
        Lcom/google/android/gms/internal/zzgh$zze;,
        Lcom/google/android/gms/internal/zzgh$zzc;,
        Lcom/google/android/gms/internal/zzgh$zzd;,
        Lcom/google/android/gms/internal/zzgh$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzbtp:Ljava/lang/String;

.field private zzbtq:Lcom/google/android/gms/internal/zzlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlg",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;"
        }
    .end annotation
.end field

.field private zzbtr:Lcom/google/android/gms/internal/zzlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlg",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;"
        }
    .end annotation
.end field

.field private zzbts:Lcom/google/android/gms/internal/zzgh$zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbtt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzako:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgh;->zzbtp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzgh$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgh$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtq:Lcom/google/android/gms/internal/zzlg;

    new-instance v0, Lcom/google/android/gms/internal/zzgh$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgh$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtr:Lcom/google/android/gms/internal/zzlg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzlg",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;",
            "Lcom/google/android/gms/internal/zzlg",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgh;->zzbtq:Lcom/google/android/gms/internal/zzlg;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgh;->zzbtr:Lcom/google/android/gms/internal/zzlg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzd;
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzgh$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbtr:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgh$zzd;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzgh$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzgh$1;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzgh$zzd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgh$zzd;)Lcom/google/android/gms/internal/zzgh$zzd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzlg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtq:Lcom/google/android/gms/internal/zzlg;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzgh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzgh$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzge;
    .registers 6
    .param p3    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzgg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/zzgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzd;
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgh$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzgh$2;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgh$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzgh$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgh$3;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgh$zzd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zzd;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzc;
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_22

    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->zznz()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    monitor-exit v1

    :goto_21
    return-object v0

    :cond_22
    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->zznz()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->zznz()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :cond_44
    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbtt:I

    if-ne v0, v3, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->zznz()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbts:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->zznz()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_2e

    goto :goto_21
.end method

.method public zzny()Lcom/google/android/gms/internal/zzgh$zzc;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzc(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    return-object v0
.end method
