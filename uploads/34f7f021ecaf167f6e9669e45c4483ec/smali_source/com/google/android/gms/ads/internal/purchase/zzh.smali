.class public Lcom/google/android/gms/ads/internal/purchase/zzh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/purchase/zzh$zza;
    }
.end annotation


# static fields
.field private static final zzako:Ljava/lang/Object;

.field private static final zzcfy:Ljava/lang/String;

.field private static zzcga:Lcom/google/android/gms/ads/internal/purchase/zzh;


# instance fields
.field private final zzcfz:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "InAppPurchase"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "purchase_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "developer_payload"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "record_time"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcfy:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    const-string v1, "google_inapp_purchase.db"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;-><init>(Lcom/google/android/gms/ads/internal/purchase/zzh;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcfz:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcfy:Ljava/lang/String;

    return-object v0
.end method

.method public static zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;
    .registers 3

    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcga:Lcom/google/android/gms/ads/internal/purchase/zzh;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcga:Lcom/google/android/gms/ads/internal/purchase/zzh;

    :cond_e
    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcga:Lcom/google/android/gms/ads/internal/purchase/zzh;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public getRecordCount()I
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v3, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_d

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_26

    :goto_c
    return v0

    :cond_d
    :try_start_d
    const-string v4, "select count(*) from InAppPurchase"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_1e} :catch_30
    .catchall {:try_start_d .. :try_end_1e} :catchall_54

    move-result v0

    if-eqz v2, :cond_24

    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_24
    monitor-exit v3

    goto :goto_c

    :catchall_26
    move-exception v0

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2e
    :goto_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_26

    goto :goto_c

    :catch_30
    move-exception v1

    :try_start_31
    const-string v4, "Error getting record count"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_45
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_54

    if-eqz v2, :cond_2e

    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_26

    goto :goto_2e

    :cond_4e
    :try_start_4e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_45

    :catchall_54
    move-exception v0

    if-eqz v2, :cond_5a

    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_26
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzcfz:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "Error opening writable conversion tracking database"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzf;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/ads/internal/purchase/zzf;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 10

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    goto :goto_2

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "purchase_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcft:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "InAppPurchase"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_e

    goto :goto_2
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    goto :goto_2

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "product_id"

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcfv:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "developer_payload"

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcfu:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "record_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "InAppPurchase"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcft:J

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getRecordCount()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzru()V

    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_e

    goto :goto_2
.end method

.method public zzg(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/purchase/zzf;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    monitor-exit v11

    move-object v0, v9

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1b

    monitor-exit v11
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_66

    move-object v0, v9

    goto :goto_11

    :cond_1b
    :try_start_1b
    const-string v7, "record_time ASC"

    const-string v1, "InAppPurchase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2b} :catch_47
    .catchall {:try_start_1b .. :try_end_2b} :catchall_76

    move-result-object v1

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_32
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3c} :catch_79
    .catchall {:try_start_2c .. :try_end_3c} :catchall_6f

    move-result v0

    if-nez v0, :cond_32

    :cond_3f
    if-eqz v1, :cond_44

    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    :goto_44
    monitor-exit v11
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_66

    move-object v0, v9

    goto :goto_11

    :catch_47
    move-exception v0

    move-object v1, v10

    :goto_49
    :try_start_49
    const-string v2, "Error extracing purchase info: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_6f

    if-eqz v1, :cond_44

    :try_start_62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_66
    move-exception v0

    monitor-exit v11
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_6f

    goto :goto_5d

    :catchall_6f
    move-exception v0

    :goto_70
    if-eqz v1, :cond_75

    :try_start_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_66

    :catchall_76
    move-exception v0

    move-object v1, v10

    goto :goto_70

    :catch_79
    move-exception v0

    goto :goto_49
.end method

.method public zzru()V
    .registers 12

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzako:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_c

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    :goto_b
    return-void

    :cond_c
    :try_start_c
    const-string v7, "record_time ASC"

    const-string v1, "InAppPurchase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1a} :catch_34
    .catchall {:try_start_c .. :try_end_1a} :catchall_60

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_2a} :catch_63
    .catchall {:try_start_1d .. :try_end_2a} :catchall_59

    :cond_2a
    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    :goto_2f
    monitor-exit v10

    goto :goto_b

    :catchall_31
    move-exception v0

    monitor-exit v10
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw v0

    :catch_34
    move-exception v0

    move-object v1, v9

    :goto_36
    :try_start_36
    const-string v2, "Error remove oldest record"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_59

    if-eqz v1, :cond_2f

    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_31

    goto :goto_2f

    :cond_53
    :try_start_53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_59

    goto :goto_4a

    :catchall_59
    move-exception v0

    :goto_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_31

    :catchall_60
    move-exception v0

    move-object v1, v9

    goto :goto_5a

    :catch_63
    move-exception v0

    goto :goto_36
.end method
