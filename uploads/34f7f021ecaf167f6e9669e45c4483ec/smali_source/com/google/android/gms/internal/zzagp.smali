.class public Lcom/google/android/gms/internal/zzagp;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final aVg:Landroid/net/Uri;

.field public static final aVh:Ljava/util/regex/Pattern;

.field public static final aVi:Ljava/util/regex/Pattern;

.field private static final aVj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static aVk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aVl:Ljava/lang/Object;

.field private static aVm:Z

.field static aVn:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVg:Landroid/net/Uri;

    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVh:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVi:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzagp;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-wide p2

    :cond_a
    :goto_a
    return-wide p2

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzagp;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-class v1, Lcom/google/android/gms/internal/zzagp;

    monitor-enter v1

    :try_start_6
    invoke-static {p0}, Lcom/google/android/gms/internal/zzagp;->zza(Landroid/content/ContentResolver;)V

    sget-object v6, Lcom/google/android/gms/internal/zzagp;->aVl:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    move-object p2, v0

    :cond_1e
    monitor-exit v1

    :cond_1f
    :goto_1f
    return-object p2

    :cond_20
    sget-object v4, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    array-length v5, v4

    move v0, v3

    :goto_24
    if-ge v0, v5, :cond_5c

    aget-object v7, v4, v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    sget-boolean v0, Lcom/google/android/gms/internal/zzagp;->aVm:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_3a
    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzagp;->zzc(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_52

    move-object p2, v0

    :cond_52
    monitor-exit v1

    goto :goto_1f

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    :try_start_57
    monitor-exit v1

    goto :goto_1f

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_54

    sget-object v1, Lcom/google/android/gms/internal/zzagp;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_72

    :try_start_6c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_72
    const/4 v0, 0x0

    invoke-static {v6, p1, v0}, Lcom/google/android/gms/internal/zzagp;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_96

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :cond_7c
    const/4 v0, 0x1

    :try_start_7d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    move-object v0, p2

    :cond_8a
    invoke-static {v6, p1, v0}, Lcom/google/android/gms/internal/zzagp;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_96

    if-eqz v0, :cond_90

    move-object p2, v0

    :cond_90
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :catchall_96
    move-exception v0

    if-eqz v1, :cond_9c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw v0
.end method

.method public static varargs zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzagp;->aVg:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_13

    :catchall_27
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method private static zza(Landroid/content/ContentResolver;)V
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    if-nez v0, :cond_2f

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVl:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/zzagp;->aVm:Z

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/zzagp$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzagp$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVl:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/zzagp;->aVm:Z

    goto :goto_2e
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/google/android/gms/internal/zzagp;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVl:Ljava/lang/Object;

    if-ne p0, v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static varargs zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 5

    array-length v0, p1

    if-nez v0, :cond_4

    :goto_3
    return-void

    :cond_4
    const-class v1, Lcom/google/android/gms/internal/zzagp;

    monitor-enter v1

    :try_start_7
    invoke-static {p0}, Lcom/google/android/gms/internal/zzagp;->zza(Landroid/content/ContentResolver;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagp;->zzk([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/google/android/gms/internal/zzagp;->aVm:Z

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1a
    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzagp;->zzc(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    monitor-exit v1

    goto :goto_3

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    array-length v2, v0

    if-eqz v2, :cond_1f

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzagp;->zzc(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    goto :goto_1f
.end method

.method private static zzc(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVk:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzagp;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzagp;->aVm:Z

    return-void
.end method

.method static synthetic zzcng()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVj:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static zzk([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    array-length v0, v0

    array-length v2, p0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p0

    move v0, v1

    :goto_21
    if-ge v0, v4, :cond_31

    aget-object v5, p0, v0

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-array v0, v1, [Ljava/lang/String;

    :goto_39
    return-object v0

    :cond_3a
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzagp;->aVn:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_39
.end method
