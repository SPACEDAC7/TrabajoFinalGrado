.class public Lcom/buzzfeed/android/util/BFRateMeUtils;
.super Ljava/lang/Object;
.source "BFRateMeUtils.java"


# static fields
.field private static final MARKET_BUZZFEED_URI_AMAZON:Ljava/lang/String; = "http://www.amazon.com/gp/mas/dl/android?p=com.buzzfeed.android"

.field private static final MARKET_BUZZFEED_URI_GOOGLE:Ljava/lang/String; = "market://details?id=com.buzzfeed.android"

.field private static final TAG:Ljava/lang/String;

.field private static marketUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/util/BuzzUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BFRateMeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarketUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BFRateMeUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getMarketUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "TAG":Ljava/lang/String;
    sget-object v3, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    if-nez v3, :cond_61

    .line 33
    const-class v4, Lcom/buzzfeed/android/util/BFRateMeUtils;

    monitor-enter v4

    .line 34
    :try_start_1c
    sget-object v3, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    if-nez v3, :cond_60

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 36
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "installationSource":Ljava/lang/String;
    if-eqz v1, :cond_64

    const-string v3, "com.amazon.venezia"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 41
    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.buzzfeed.android"

    sput-object v3, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    .line 43
    :goto_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installationSource: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_49

    const-string v1, "null"

    .end local v1    # "installationSource":Ljava/lang/String;
    :cond_49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", marketUri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_1c .. :try_end_61} :catchall_69

    .line 48
    :cond_61
    sget-object v3, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    return-object v3

    .line 42
    .restart local v1    # "installationSource":Ljava/lang/String;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_64
    :try_start_64
    const-string v3, "market://details?id=com.buzzfeed.android"

    sput-object v3, Lcom/buzzfeed/android/util/BFRateMeUtils;->marketUri:Ljava/lang/String;

    goto :goto_3a

    .line 46
    .end local v1    # "installationSource":Ljava/lang/String;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_69
    move-exception v3

    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_69

    throw v3
.end method

.method public static openRateApplication(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BFRateMeUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".openRateApplication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Lcom/buzzfeed/android/util/BFRateMeUtils;->getMarketUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .local v2, "marketIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 28
    .end local v2    # "marketIntent":Landroid/content/Intent;
    :goto_2c
    return-void

    .line 25
    :catch_2d
    move-exception v1

    .line 26
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Could not find activity for market"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method
