.class public Lcom/google/android/gms/internal/zzfv;
.super Lcom/google/android/gms/internal/zzfs;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static final zzbrn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbro:Ljava/text/DecimalFormat;


# instance fields
.field private zzbrp:Ljava/io/File;

.field private zzbrq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzfv;->zzbro:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfs;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "Context.getCacheDir() returned null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Ljava/io/File;

    const-string v2, "admobVideoStreams"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v1, "Could not create preload cache directory at "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    goto :goto_13

    :cond_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_5f
    const-string v1, "Could not set cache file permissions at "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    goto :goto_13

    :cond_7b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_75
.end method

.method private zzb(Ljava/io/File;)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzc(Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_d

    :catch_12
    move-exception v0

    goto :goto_d
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrq:Z

    return-void
.end method

.method public zzbg(Ljava/lang/String;)Z
    .registers 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    const-string v3, "noCacheDir"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_12
    return v2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzfv;->zznj()I

    move-result v3

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbdn:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzfv;->zznk()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "Unable to expire stream cache"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "expireFailed"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_12

    :cond_3d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/zzfv;->zzbh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-direct {v12, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/zzfv;->zzb(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v4, "Stream cache hit at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_81

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_71
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto :goto_12

    :cond_81
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :cond_87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d5

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_a2
    sget-object v3, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    monitor-enter v3

    :try_start_a5
    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string v4, "Stream cache already in progress at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_dc

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_bd
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inProgress"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v3

    goto/16 :goto_12

    :catchall_d2
    move-exception v2

    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_a5 .. :try_end_d4} :catchall_d2

    throw v2

    :cond_d5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_a2

    :cond_dc
    :try_start_dc
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_bd

    :cond_e2
    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_d2

    const/4 v5, 0x0

    const-string v10, "error"

    const/4 v9, 0x0

    :try_start_ec
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgz()Lcom/google/android/gms/internal/zzlv;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbdt:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/zzlv;->zzb(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v3

    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d6

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x190

    if-lt v2, v4, :cond_1d6

    const-string v4, "badUrl"
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_114} :catch_20b
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_114} :catch_285

    :try_start_114
    const-string v6, "HTTP request failed. Code: "

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1cc

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_127} :catch_1d3
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_127} :catch_452

    move-result-object v3

    :goto_128
    :try_start_128
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x20

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "HTTP status code "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " at "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_157} :catch_157
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_157} :catch_456

    :catch_157
    move-exception v2

    :goto_158
    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_165

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v6

    const-string v7, "VideoStreamFullFileCache.preload"

    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_165
    :try_start_165
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_44c
    .catch Ljava/lang/NullPointerException; {:try_start_165 .. :try_end_168} :catch_44f

    :goto_168
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzfv;->zzbrq:Z

    if-eqz v5, :cond_41b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Preload aborted for URL \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    :goto_196
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b9

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1b9

    const-string v5, "Could not delete partial cache file at "

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_445

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1b6
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_1b9
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_1cc
    :try_start_1cc
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1d1} :catch_1d3
    .catch Ljava/lang/RuntimeException; {:try_start_1cc .. :try_end_1d1} :catch_452

    goto/16 :goto_128

    :catch_1d3
    move-exception v2

    move-object v3, v9

    goto :goto_158

    :cond_1d6
    :try_start_1d6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    if-gez v6, :cond_210

    const-string v3, "Stream cache aborted, missing content-length header at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_205

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1ec
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentLengthMissing"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_205
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1ec

    :catch_20b
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_158

    :cond_210
    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbro:Ljava/text/DecimalFormat;

    int-to-long v14, v6

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbdo:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v6, v14, :cond_28a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Content length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds limit at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const-string v3, "File too big for full file cache. Size: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27f

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_26a
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sizeExceeded"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_27f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_26a

    :catch_285
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_158

    :cond_28a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Caching "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v15

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2cc
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_2cc} :catch_20b
    .catch Ljava/lang/RuntimeException; {:try_start_1d6 .. :try_end_2cc} :catch_285

    :try_start_2cc
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v18

    const/4 v5, 0x0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v20

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbds:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v19, Lcom/google/android/gms/internal/zzlm;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzlm;-><init>(J)V

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbdr:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    :cond_2fe
    :goto_2fe
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ltz v2, :cond_3ba

    add-int/2addr v5, v2

    if-le v5, v14, :cond_337

    const-string v4, "sizeExceeded"
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_30b} :catch_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_2cc .. :try_end_30b} :catch_459

    :try_start_30b
    const-string v2, "File too big for full file cache. Size: "

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_32c

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_31e} :catch_332
    .catch Ljava/lang/RuntimeException; {:try_start_30b .. :try_end_31e} :catch_39b

    move-result-object v3

    :goto_31f
    :try_start_31f
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "stream cache file size limit exceeded"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_328
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_328} :catch_328
    .catch Ljava/lang/RuntimeException; {:try_start_31f .. :try_end_328} :catch_387

    :catch_328
    move-exception v2

    move-object v5, v11

    goto/16 :goto_158

    :cond_32c
    :try_start_32c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_331
    .catch Ljava/io/IOException; {:try_start_32c .. :try_end_331} :catch_332
    .catch Ljava/lang/RuntimeException; {:try_start_32c .. :try_end_331} :catch_39b

    goto :goto_31f

    :catch_332
    move-exception v2

    move-object v3, v9

    move-object v5, v11

    goto/16 :goto_158

    :cond_337
    :try_start_337
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_33a
    invoke-virtual/range {v16 .. v17}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gtz v2, :cond_33a

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v22

    cmp-long v2, v2, v24

    if-lez v2, :cond_38b

    const-string v4, "downloadTimeout"
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_353} :catch_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_337 .. :try_end_353} :catch_459

    :try_start_353
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timeout exceeded. Limit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37d
    .catch Ljava/io/IOException; {:try_start_353 .. :try_end_37d} :catch_332
    .catch Ljava/lang/RuntimeException; {:try_start_353 .. :try_end_37d} :catch_39b

    move-result-object v3

    :try_start_37e
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "stream cache time limit exceeded"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_387
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_387} :catch_328
    .catch Ljava/lang/RuntimeException; {:try_start_37e .. :try_end_387} :catch_387

    :catch_387
    move-exception v2

    move-object v5, v11

    goto/16 :goto_158

    :cond_38b
    :try_start_38b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzfv;->zzbrq:Z

    if-eqz v2, :cond_3a0

    const-string v4, "externalAbort"
    :try_end_393
    .catch Ljava/io/IOException; {:try_start_38b .. :try_end_393} :catch_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_38b .. :try_end_393} :catch_459

    :try_start_393
    new-instance v2, Ljava/io/IOException;

    const-string v3, "abort requested"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39b
    .catch Ljava/io/IOException; {:try_start_393 .. :try_end_39b} :catch_332
    .catch Ljava/lang/RuntimeException; {:try_start_393 .. :try_end_39b} :catch_39b

    :catch_39b
    move-exception v2

    move-object v3, v9

    move-object v5, v11

    goto/16 :goto_158

    :cond_3a0
    :try_start_3a0
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/zzlm;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_2fe

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_2fe

    :catch_3b4
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_158

    :cond_3ba
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v2

    if-eqz v2, :cond_400

    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbro:Ljava/text/DecimalFormat;

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    :cond_400
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v13}, Lcom/google/android/gms/internal/zzfv;->zzc(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/google/android/gms/internal/zzfv;->zzbrn:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_418
    .catch Ljava/io/IOException; {:try_start_3a0 .. :try_end_418} :catch_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_3a0 .. :try_end_418} :catch_459

    const/4 v2, 0x1

    goto/16 :goto_12

    :cond_41b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x19

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Preload failed for URL \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_196

    :cond_445
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b6

    :catch_44c
    move-exception v5

    goto/16 :goto_168

    :catch_44f
    move-exception v5

    goto/16 :goto_168

    :catch_452
    move-exception v2

    move-object v3, v9

    goto/16 :goto_158

    :catch_456
    move-exception v2

    goto/16 :goto_158

    :catch_459
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_158
.end method

.method public zznj()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    if-nez v1, :cond_6

    :cond_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public zznk()Z
    .registers 12

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    if-nez v0, :cond_6

    :goto_5
    return v6

    :cond_6
    const/4 v5, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbrp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_14
    if-ge v7, v9, :cond_33

    aget-object v4, v8, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v10, v0, v2

    if-gez v10, :cond_4c

    move-object v2, v4

    :goto_2d
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-object v5, v2

    move-wide v2, v0

    goto :goto_14

    :cond_33
    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzfv;->zzb(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_48
    :goto_48
    move v6, v0

    goto :goto_5

    :cond_4a
    move v0, v6

    goto :goto_48

    :cond_4c
    move-wide v0, v2

    move-object v2, v5

    goto :goto_2d
.end method
