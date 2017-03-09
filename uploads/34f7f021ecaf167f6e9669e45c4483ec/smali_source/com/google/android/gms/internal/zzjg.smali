.class public Lcom/google/android/gms/internal/zzjg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static final zzaox:Ljava/lang/Object;

.field private static zzcja:Lcom/google/android/gms/internal/zzjh;


# instance fields
.field private final zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzcjb:Ljava/lang/Object;

.field private final zzcjc:Ljava/lang/String;

.field private final zzcjd:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjg;->zzaox:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzjg;->zzcja:Lcom/google/android/gms/internal/zzjh;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzcjb:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzcjd:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg;->zzcjc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg;->zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjg;->zzsz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjg;->zzsy()V

    return-void
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzjh;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/zzjg;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzjg;->zzcja:Lcom/google/android/gms/internal/zzjh;

    if-nez v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbdc:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "unknown"
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_32

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_2b
    .catchall {:try_start_18 .. :try_end_1f} :catchall_32

    move-result-object v0

    :goto_20
    :try_start_20
    new-instance v2, Lcom/google/android/gms/internal/zzjg;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzjg;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sput-object v2, Lcom/google/android/gms/internal/zzjg;->zzcja:Lcom/google/android/gms/internal/zzjh;

    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_32

    sget-object v0, Lcom/google/android/gms/internal/zzjg;->zzcja:Lcom/google/android/gms/internal/zzjh;

    return-object v0

    :catch_2b
    move-exception v2

    :try_start_2c
    const-string v2, "Cannot obtain package name, proceeding."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_20

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    new-instance v0, Lcom/google/android/gms/internal/zzjh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjh$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjg;->zzcja:Lcom/google/android/gms/internal/zzjh;
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    goto :goto_27
.end method

.method private zzd(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 16

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbdd:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-object p1

    :cond_11
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    :goto_16
    if-eqz p1, :cond_20

    invoke-virtual {v6, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_16

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {v6}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "<filtered>"

    const-string v10, "<filtered>"

    invoke-direct {v1, v4, v9, v10, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v9, v7

    move v4, v5

    move v1, v5

    :goto_4d
    if-ge v4, v9, :cond_7f

    aget-object v10, v7, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/zzjg;->zzck(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_62

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_62
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/zzjg;->zzcl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_70
    new-instance v10, Ljava/lang/StackTraceElement;

    const-string v11, "<filtered>"

    const-string v12, "<filtered>"

    const-string v13, "<filtered>"

    invoke-direct {v10, v11, v12, v13, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_7f
    if-eqz v1, :cond_a6

    if-nez v2, :cond_99

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_8c
    new-array v0, v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :goto_97
    move-object v2, v1

    goto :goto_21

    :cond_99
    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8c

    :cond_a3
    move-object p1, v2

    goto/16 :goto_10

    :cond_a6
    move-object v1, v2

    goto :goto_97
.end method

.method private zzsy()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjg$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzjg$1;-><init>(Lcom/google/android/gms/internal/zzjg;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private zzsz()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjg;->zza(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method zza(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "//pagead2.googlesyndication.com/pagead/gen_204"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "gmob-apps-report-exception"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "api"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "device"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzlb;->zzvt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "js"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjg;->zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjg;->zzcjc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "exceptiontype"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "stacktrace"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "eids"

    const-string v2, ","

    invoke-static {}, Lcom/google/android/gms/internal/zzdr;->zzlq()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exceptionkey"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cl"

    const-string v2, "135396225"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rc"

    const-string v2, "dev"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/Thread;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzcjb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzcjd:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1e

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjg$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzjg$2;-><init>(Lcom/google/android/gms/internal/zzjg;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_2

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzjg;->zzb(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzjg;->zzc(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjg;->zzd(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/zzjg;->zza(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzux()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzlb;->zza(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected zzb(Ljava/lang/Throwable;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v3

    :cond_5
    move v2, v3

    move v0, v3

    :goto_7
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_f
    if-ge v4, v6, :cond_34

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/zzjg;->zzck(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move v0, v1

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    move v2, v1

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_7

    :cond_39
    if-eqz v0, :cond_3f

    if-nez v2, :cond_3f

    :goto_3d
    move v3, v1

    goto :goto_4

    :cond_3f
    move v1, v3

    goto :goto_3d
.end method

.method public zzc(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzjg;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method protected zzck(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbde:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    :try_start_19
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/zzji;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_24

    move-result v0

    goto :goto_8

    :catch_24
    move-exception v0

    move-object v2, v0

    const-string v3, "Fail to check class type for class "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_8

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_36
.end method

.method protected zzcl(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "android."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "java."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method
