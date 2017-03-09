.class public final Lcom/google/android/gms/analytics/zzi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/zzi$zzb;,
        Lcom/google/android/gms/analytics/zzi$zzc;,
        Lcom/google/android/gms/analytics/zzi$zza;
    }
.end annotation


# static fields
.field private static volatile bj:Lcom/google/android/gms/analytics/zzi;


# instance fields
.field private final bk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final bl:Lcom/google/android/gms/analytics/zzd;

.field private final bm:Lcom/google/android/gms/analytics/zzi$zza;

.field private volatile bn:Lcom/google/android/gms/internal/zzms;

.field private bo:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/analytics/zzi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zzi$zza;-><init>(Lcom/google/android/gms/analytics/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bm:Lcom/google/android/gms/analytics/zzi$zza;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bk:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bl:Lcom/google/android/gms/analytics/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzi;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bk:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zzi;->zzb(Lcom/google/android/gms/analytics/zze;)V

    return-void
.end method

.method public static zzav(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzi;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/zzi;->bj:Lcom/google/android/gms/analytics/zzi;

    if-nez v0, :cond_16

    const-class v1, Lcom/google/android/gms/analytics/zzi;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/google/android/gms/analytics/zzi;->bj:Lcom/google/android/gms/analytics/zzi;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zzi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->bj:Lcom/google/android/gms/analytics/zzi;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    :cond_16
    sget-object v0, Lcom/google/android/gms/analytics/zzi;->bj:Lcom/google/android/gms/analytics/zzi;

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/zzi;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bo:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/analytics/zze;)V
    .registers 7

    const-string v0, "deliver should be called from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzht(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzzn()Z

    move-result v0

    const-string v1, "Measurement must be submitted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzzk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    return-void

    :cond_19
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzk;->zzyx()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/zzk;->zzb(Lcom/google/android/gms/analytics/zze;)V

    goto :goto_22
.end method

.method public static zzzx()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzi$zzc;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi;->bo:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzi$zzc;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bm:Lcom/google/android/gms/analytics/zzi$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzi$zza;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_13
.end method

.method zze(Lcom/google/android/gms/analytics/zze;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzzr()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement prototype can\'t be submitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzzn()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement can only be submitted once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzzi()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzzo()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzi;->bm:Lcom/google/android/gms/analytics/zzi$zza;

    new-instance v2, Lcom/google/android/gms/analytics/zzi$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/zzi$1;-><init>(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzi$zza;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzg(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bm:Lcom/google/android/gms/analytics/zzi$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzi$zza;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public zzzv()Lcom/google/android/gms/internal/zzms;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bn:Lcom/google/android/gms/internal/zzms;

    if-nez v0, :cond_4d

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bn:Lcom/google/android/gms/internal/zzms;

    if-nez v0, :cond_4c

    new-instance v3, Lcom/google/android/gms/internal/zzms;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzms;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzms;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzms;->setAppInstallerId(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_67

    const/4 v0, 0x0

    :try_start_25
    iget-object v4, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_44

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_42
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_44} :catch_50
    .catchall {:try_start_25 .. :try_end_44} :catchall_67

    :cond_44
    :goto_44
    :try_start_44
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzms;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzms;->setAppVersion(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/analytics/zzi;->bn:Lcom/google/android/gms/internal/zzms;

    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_67

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->bn:Lcom/google/android/gms/internal/zzms;

    return-object v0

    :catch_50
    move-exception v2

    :try_start_51
    const-string v4, "GAv4"

    const-string v5, "Error retrieving package info: appName set to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6a

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_63
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catchall_67
    move-exception v0

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_67

    throw v0

    :cond_6a
    :try_start_6a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_67

    goto :goto_63
.end method

.method public zzzw()Lcom/google/android/gms/internal/zzmx;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzmx;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmx;->setLanguage(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmx;->zzbz(I)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmx;->zzca(I)V

    return-object v1
.end method
