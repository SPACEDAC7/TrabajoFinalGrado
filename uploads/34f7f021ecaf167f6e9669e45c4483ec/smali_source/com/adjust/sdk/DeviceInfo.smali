.class Lcom/adjust/sdk/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field abi:Ljava/lang/String;

.field androidId:Ljava/lang/String;

.field apiLevel:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field buildName:Ljava/lang/String;

.field clientSdk:Ljava/lang/String;

.field country:Ljava/lang/String;

.field deviceManufacturer:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field deviceType:Ljava/lang/String;

.field displayHeight:Ljava/lang/String;

.field displayWidth:Ljava/lang/String;

.field fbAttributionId:Ljava/lang/String;

.field hardwareName:Ljava/lang/String;

.field language:Ljava/lang/String;

.field macSha1:Ljava/lang/String;

.field macShortMd5:Ljava/lang/String;

.field osName:Ljava/lang/String;

.field osVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pluginKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field screenDensity:Ljava/lang/String;

.field screenFormat:Ljava/lang/String;

.field screenSize:Ljava/lang/String;

.field vmInstructionSet:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 59
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 60
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v4

    .line 61
    .local v4, "locale":Ljava/util/Locale;
    iget v7, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 62
    .local v7, "screenLayout":I
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_bb

    const/4 v3, 0x1

    .line 63
    .local v3, "isGooglePlayServicesAvailable":Z
    :goto_1c
    invoke-direct {p0, p1, v3}, Lcom/adjust/sdk/DeviceInfo;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "macAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 68
    invoke-direct {p0, v7}, Lcom/adjust/sdk/DeviceInfo;->getDeviceType(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->deviceName:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->osName:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getApiLevel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v4}, Lcom/adjust/sdk/DeviceInfo;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->language:Ljava/lang/String;

    .line 75
    invoke-direct {p0, v4}, Lcom/adjust/sdk/DeviceInfo;->getCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->country:Ljava/lang/String;

    .line 76
    invoke-direct {p0, v7}, Lcom/adjust/sdk/DeviceInfo;->getScreenSize(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->screenSize:Ljava/lang/String;

    .line 77
    invoke-direct {p0, v7}, Lcom/adjust/sdk/DeviceInfo;->getScreenFormat(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->screenFormat:Ljava/lang/String;

    .line 78
    invoke-direct {p0, v2}, Lcom/adjust/sdk/DeviceInfo;->getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->screenDensity:Ljava/lang/String;

    .line 79
    invoke-direct {p0, v2}, Lcom/adjust/sdk/DeviceInfo;->getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->displayWidth:Ljava/lang/String;

    .line 80
    invoke-direct {p0, v2}, Lcom/adjust/sdk/DeviceInfo;->getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->displayHeight:Ljava/lang/String;

    .line 81
    invoke-direct {p0, p2}, Lcom/adjust/sdk/DeviceInfo;->getClientSdk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1, v3}, Lcom/adjust/sdk/DeviceInfo;->getAndroidId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->fbAttributionId:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    .line 85
    invoke-direct {p0, v5}, Lcom/adjust/sdk/DeviceInfo;->getMacSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    .line 86
    invoke-direct {p0, v5}, Lcom/adjust/sdk/DeviceInfo;->getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getHardwareName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->hardwareName:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getABI()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->abi:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getBuildName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->buildName:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/adjust/sdk/DeviceInfo;->vmInstructionSet:Ljava/lang/String;

    .line 91
    return-void

    .line 62
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "isGooglePlayServicesAvailable":Z
    .end local v5    # "macAddress":Ljava/lang/String;
    :cond_bb
    const/4 v3, 0x0

    goto/16 :goto_1c
.end method

.method private getABI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    invoke-static {}, Lcom/adjust/sdk/Util;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "SupportedABIS":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_e

    .line 287
    :cond_9
    invoke-static {}, Lcom/adjust/sdk/Util;->getCpuAbi()Ljava/lang/String;

    move-result-object v1

    .line 290
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_d
.end method

.method private getAndroidId(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGooglePlayServicesAvailable"    # Z

    .prologue
    .line 250
    if-nez p2, :cond_7

    .line 251
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getApiLevel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 111
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 113
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 115
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_f
    return-object v4

    .line 114
    :catch_10
    move-exception v0

    .line 115
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private getBuildName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private getClientSdk(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p1, :cond_5

    .line 224
    const-string v0, "android4.11.0"

    .line 226
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s@%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "android4.11.0"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceType(I)Ljava/lang/String;
    .registers 4
    .param p1, "screenLayout"    # I

    .prologue
    .line 120
    and-int/lit8 v0, p1, 0xf

    .line 122
    .local v0, "screenSize":I
    packed-switch v0, :pswitch_data_e

    .line 130
    const/4 v1, 0x0

    :goto_6
    return-object v1

    .line 125
    :pswitch_7
    const-string v1, "phone"

    goto :goto_6

    .line 128
    :pswitch_a
    const-string/jumbo v1, "tablet"

    goto :goto_6

    .line 122
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 219
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 215
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 259
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, "uri":Landroid/net/Uri;
    const-string v7, "aid"

    .line 262
    .local v7, "columnName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aid"

    aput-object v4, v2, v3

    .line 263
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_20

    move-object v6, v10

    .line 277
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1f
    return-object v6

    .line 268
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "columnName":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 269
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v10

    .line 270
    goto :goto_1f

    .line 273
    :cond_2b
    const-string v3, "aid"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "attributionId":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 276
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "attributionId":Ljava/lang/String;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_39
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v6, v10

    .line 277
    goto :goto_1f
.end method

.method private getHardwareName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method private getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGooglePlayServicesAvailable"    # Z

    .prologue
    .line 94
    if-nez p2, :cond_1b

    .line 95
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 96
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Missing permission: ACCESS_WIFI_STATE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_16
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getMacSha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 231
    if-nez p1, :cond_4

    .line 232
    const/4 v0, 0x0

    .line 236
    :goto_3
    return-object v0

    .line 234
    :cond_4
    invoke-static {p1}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "macSha1":Ljava/lang/String;
    goto :goto_3
.end method

.method private getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 240
    if-nez p1, :cond_4

    .line 241
    const/4 v1, 0x0

    .line 246
    :goto_3
    return-object v1

    .line 243
    :cond_4
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "macShort":Ljava/lang/String;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "macShortMd5":Ljava/lang/String;
    goto :goto_3
.end method

.method private getOsName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    const-string v0, "android"

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 6
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 200
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 201
    .local v0, "density":I
    const/16 v2, 0x8c

    .line 202
    .local v2, "low":I
    const/16 v1, 0xc8

    .line 204
    .local v1, "high":I
    if-nez v0, :cond_a

    .line 205
    const/4 v3, 0x0

    .line 211
    :goto_9
    return-object v3

    .line 206
    :cond_a
    if-ge v0, v2, :cond_f

    .line 207
    const-string v3, "low"

    goto :goto_9

    .line 208
    :cond_f
    if-le v0, v1, :cond_14

    .line 209
    const-string v3, "high"

    goto :goto_9

    .line 211
    :cond_14
    const-string v3, "medium"

    goto :goto_9
.end method

.method private getScreenFormat(I)Ljava/lang/String;
    .registers 4
    .param p1, "screenLayout"    # I

    .prologue
    .line 187
    and-int/lit8 v0, p1, 0x30

    .line 189
    .local v0, "screenFormat":I
    sparse-switch v0, :sswitch_data_e

    .line 195
    const/4 v1, 0x0

    :goto_6
    return-object v1

    .line 191
    :sswitch_7
    const-string v1, "long"

    goto :goto_6

    .line 193
    :sswitch_a
    const-string v1, "normal"

    goto :goto_6

    .line 189
    nop

    :sswitch_data_e
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_7
    .end sparse-switch
.end method

.method private getScreenSize(I)Ljava/lang/String;
    .registers 4
    .param p1, "screenLayout"    # I

    .prologue
    .line 170
    and-int/lit8 v0, p1, 0xf

    .line 172
    .local v0, "screenSize":I
    packed-switch v0, :pswitch_data_14

    .line 182
    const/4 v1, 0x0

    :goto_6
    return-object v1

    .line 174
    :pswitch_7
    const-string v1, "small"

    goto :goto_6

    .line 176
    :pswitch_a
    const-string v1, "normal"

    goto :goto_6

    .line 178
    :pswitch_d
    const-string v1, "large"

    goto :goto_6

    .line 180
    :pswitch_10
    const-string/jumbo v1, "xlarge"

    goto :goto_6

    .line 172
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method private getVmInstructionSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    invoke-static {}, Lcom/adjust/sdk/Util;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "instructionSet":Ljava/lang/String;
    return-object v0
.end method
