.class public Lcom/google/android/gms/internal/zzgf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgf$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzgf$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzge;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzgf$zza",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;",
            "Lcom/google/android/gms/internal/zzav;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")",
            "Lcom/google/android/gms/internal/zzge;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzgg;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/zzgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)V

    iput-object v0, p3, Lcom/google/android/gms/internal/zzgf$zza;->zzbti:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzgf$2;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/zzgf$2;-><init>(Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/internal/zzgf$zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/internal/zzge$zza;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgf;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzgf$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzge;
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzgf$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)Ljava/util/concurrent/Future;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzav;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/zzgf$zza;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzgf$zza;-><init>(Lcom/google/android/gms/internal/zzgf$1;)V

    sget-object v8, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzgf$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzgf$1;-><init>(Lcom/google/android/gms/internal/zzgf;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzgf$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
