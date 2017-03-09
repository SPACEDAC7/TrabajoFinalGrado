.class public Lcom/google/android/gms/common/util/zzy;
.super Ljava/lang/Object;


# static fields
.field private static final GH:Ljava/lang/reflect/Method;

.field private static final GI:Ljava/lang/reflect/Method;

.field private static final GJ:Ljava/lang/reflect/Method;

.field private static final GK:Ljava/lang/reflect/Method;

.field private static final GL:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzy;->zzaza()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzy;->GH:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzy;->zzazb()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzy;->GI:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzy;->zzazc()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzy;->GJ:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzy;->zzazd()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzy;->GK:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzy;->zzaze()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzy;->GL:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/os/WorkSource;)I
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GJ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_5
    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GJ:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const-string v2, "WorkSourceUtil"

    const-string v3, "Unable to assign blame through WorkSource"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    move v0, v1

    goto :goto_14
.end method

.method public static zza(Landroid/os/WorkSource;I)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_4
    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GL:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GI:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_24

    if-nez p2, :cond_8

    const-string p2, ""

    :cond_8
    :try_start_8
    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GI:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v1, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_24
    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GH:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_28
    sget-object v0, Lcom/google/android/gms/common/util/zzy;->GH:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_38

    goto :goto_1a

    :catch_38
    move-exception v0

    const-string v1, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private static zzaza()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static zzazb()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayt()Z

    move-result v1

    if-eqz v1, :cond_1c

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1d

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0

    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method private static zzazc()Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private static zzazd()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static zzaze()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayt()Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public static zzb(Landroid/os/WorkSource;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_9

    move v2, v1

    :goto_4
    if-nez v2, :cond_f

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzy;->zza(Landroid/os/WorkSource;)I

    move-result v0

    move v2, v0

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    if-ge v1, v2, :cond_8

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzy;->zza(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/zzv;->zzij(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public static zzcm(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsz;->zzco(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v1

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzsy;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static zzf(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 3

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/zzy;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    return-object v0
.end method

.method public static zzy(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsz;->zzco(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzsy;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_13} :catch_2d

    move-result-object v0

    if-nez v0, :cond_51

    const-string v2, "WorkSourceUtil"

    const-string v3, "Could not get applicationInfo from package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_a

    :catch_2d
    move-exception v0

    const-string v2, "WorkSourceUtil"

    const-string v3, "Could not find package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_a

    :cond_45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_40

    :cond_4b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_51
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzy;->zzf(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    goto :goto_a
.end method
