.class public Lcom/google/android/gms/iid/InstanceID;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_BACKOFF:Ljava/lang/String; = "RETRY_LATER"

.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_MISSING_INSTANCEID_SERVICE:Ljava/lang/String; = "MISSING_INSTANCEID_SERVICE"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field static aic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/iid/InstanceID;",
            ">;"
        }
    .end annotation
.end field

.field private static aid:Lcom/google/android/gms/iid/zzd;

.field private static aie:Lcom/google/android/gms/iid/zzc;

.field static aii:Ljava/lang/String;


# instance fields
.field aif:Ljava/security/KeyPair;

.field aig:Ljava/lang/String;

.field aih:J

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->aic:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;
    .registers 6

    const-class v2, Lcom/google/android/gms/iid/InstanceID;

    monitor-enter v2

    if-nez p1, :cond_42

    :try_start_5
    const-string v0, ""

    :goto_7
    if-nez v0, :cond_4d

    const-string v0, ""

    move-object v1, v0

    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/android/gms/iid/zzd;

    invoke-direct {v0, v3}, Lcom/google/android/gms/iid/zzd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    new-instance v0, Lcom/google/android/gms/iid/zzc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/iid/zzc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    :cond_22
    invoke-static {v3}, Lcom/google/android/gms/iid/InstanceID;->zzdd(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->aii:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aic:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/iid/InstanceID;

    if-nez v0, :cond_40

    new-instance v0, Lcom/google/android/gms/iid/InstanceID;

    invoke-direct {v0, v3, v1, p1}, Lcom/google/android/gms/iid/InstanceID;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/google/android/gms/iid/InstanceID;->aic:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_4a

    :cond_40
    monitor-exit v2

    return-object v0

    :cond_42
    :try_start_42
    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4a

    move-result-object v0

    goto :goto_7

    :catchall_4a
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4d
    move-object v1, v0

    goto :goto_c
.end method

.method static zza(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :try_start_8
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    const/4 v2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_27} :catch_29

    move-result-object v0

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    const-string v0, "InstanceID"

    const-string v1, "Unexpected error, device missing required alghorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_28
.end method

.method static zzdd(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    const-string v2, "InstanceID"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Never happens: can\'t find own package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method static zzde(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v1, "InstanceID"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Never happens: can\'t find own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method static zzv([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteInstanceID()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*"

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzboj()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCreationTime()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    const-string v2, "cre"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    :cond_1a
    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzboi()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzbom()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_27

    :cond_1d
    :goto_1d
    return-object v4

    :cond_1e
    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v3, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_27
    if-nez p3, :cond_2e

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_2e
    const-string/jumbo v2, "ttl"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    move v0, v1

    :cond_38
    const-string v2, "jwt"

    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    :goto_47
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    if-eqz v1, :cond_1d

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/iid/InstanceID;->aii:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/iid/zzd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_5b
    move v1, v0

    goto :goto_47
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_20

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_20
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string/jumbo v0, "subscription"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subtype"

    const-string v0, ""

    iget-object v2, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    move-object v0, p1

    :goto_4e
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-subtype"

    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    :goto_5d
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzboi()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/iid/zzc;->zzt(Landroid/content/Intent;)Ljava/lang/String;

    return-void

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    goto :goto_4e

    :cond_73
    iget-object p1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    goto :goto_5d
.end method

.method zzboi()Ljava/security/KeyPair;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzks(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    if-nez v0, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/zzd;->zze(Ljava/lang/String;J)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    return-object v0
.end method

.method public zzboj()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->aih:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzkt(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aif:Ljava/security/KeyPair;

    return-void
.end method

.method public zzbok()Lcom/google/android/gms/iid/zzd;
    .registers 2

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    return-object v0
.end method

.method public zzbol()Lcom/google/android/gms/iid/zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    return-object v0
.end method

.method zzbom()Z
    .registers 7

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    const-string v2, "appVersion"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->aii:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->aid:Lcom/google/android/gms/iid/zzd;

    const-string v2, "lastToken"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x93a80

    cmp-long v1, v2, v4

    if-gtz v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    move-object v0, p1

    :goto_17
    const-string v1, "legacy.register"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzboi()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->aie:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/iid/zzc;->zzt(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->aig:Ljava/lang/String;

    goto :goto_17
.end method
