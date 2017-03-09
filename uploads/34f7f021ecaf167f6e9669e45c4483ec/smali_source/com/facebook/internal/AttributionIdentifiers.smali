.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v5, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v5}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 63
    .local v5, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_1e

    .line 64
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "getAndroidId cannot be called on the main thread."

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_17

    .line 110
    :catch_17
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "android_id"

    invoke-static {v8, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    return-object v5

    .line 66
    :cond_1e
    :try_start_1e
    const-string v8, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v9, "isGooglePlayServicesAvailable"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 72
    .local v6, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_1d

    .line 76
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v6, v9}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "connectionResult":Ljava/lang/Object;
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_1d

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "connectionResult":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1d

    .line 83
    const-string v8, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v9, "getAdvertisingIdInfo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 88
    .local v3, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1d

    .line 91
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v3, v9}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "advertisingInfo":Ljava/lang/Object;
    if-eqz v0, :cond_1d

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getId"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 98
    .local v4, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "isLimitAdTrackingEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 101
    .local v7, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1d

    if-eqz v7, :cond_1d

    .line 105
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 107
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_9e} :catch_17

    goto/16 :goto_1d
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 117
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v4, v3, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 120
    sget-object v10, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 160
    :cond_17
    :goto_17
    return-object v10

    .line 123
    :cond_18
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v10

    .line 124
    .local v10, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v8, 0x0

    .line 126
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x3

    :try_start_1e
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "limit_tracking"

    aput-object v1, v2, v0

    .line 130
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 132
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_41} :catch_8a
    .catchall {:try_start_1e .. :try_end_41} :catchall_af

    move-result v0

    if-nez v0, :cond_4a

    .line 153
    :cond_44
    if-eqz v8, :cond_17

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 135
    :cond_4a
    :try_start_4a
    const-string v0, "aid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, "attributionColumnIndex":I
    const-string v0, "androidid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, "androidIdColumnIndex":I
    const-string v0, "limit_tracking"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 139
    .local v11, "limitTrackingColumnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    .line 143
    if-lez v6, :cond_7c

    if-lez v11, :cond_7c

    invoke-virtual {v10}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7c

    .line 145
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 146
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7c} :catch_8a
    .catchall {:try_start_4a .. :try_end_7c} :catchall_af

    .line 153
    :cond_7c
    if-eqz v8, :cond_81

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 159
    sput-object v10, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    goto :goto_17

    .line 149
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "androidIdColumnIndex":I
    .end local v7    # "attributionColumnIndex":I
    .end local v11    # "limitTrackingColumnIndex":I
    :catch_8a
    move-exception v9

    .line 150
    .local v9, "e":Ljava/lang/Exception;
    :try_start_8b
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8b .. :try_end_a7} :catchall_af

    .line 153
    if-eqz v8, :cond_ac

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_ac
    move-object v10, v12

    goto/16 :goto_17

    .line 153
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_af
    move-exception v0

    if-eqz v8, :cond_b5

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v0
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
