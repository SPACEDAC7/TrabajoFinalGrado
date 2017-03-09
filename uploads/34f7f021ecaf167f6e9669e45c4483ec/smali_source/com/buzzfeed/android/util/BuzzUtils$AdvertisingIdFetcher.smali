.class Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;
.super Landroid/os/AsyncTask;
.source "BuzzUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/BuzzUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvertisingIdFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 350
    const-class v0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->c:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/util/BuzzUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/android/util/BuzzUtils$1;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;-><init>()V

    return-void
.end method

.method private static createDefault()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    .prologue
    .line 385
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const-string v1, "android_id"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 9
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".doInBackground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "TAG":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->c:Landroid/content/Context;

    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->c:Landroid/content/Context;

    if-eqz v5, :cond_25

    .line 364
    :try_start_1f
    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_3a

    move-result-object v2

    .line 374
    :cond_25
    :goto_25
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->createDefault()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    .line 375
    :cond_2b
    return-object v2

    .line 365
    :catch_2c
    move-exception v3

    .line 366
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "network error"

    invoke-static {v0, v5, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 367
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_33
    move-exception v4

    .line 368
    .local v4, "ise":Ljava/lang/IllegalStateException;
    const-string v5, "getAdvertisingIdInfo called on main thread"

    invoke-static {v0, v5, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 369
    .end local v4    # "ise":Ljava/lang/IllegalStateException;
    :catch_3a
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "retrieving Google Play Services Advertising id failed. Reverting to ANDROID_ID"

    invoke-static {v0, v5, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 348
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->doInBackground([Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .registers 3
    .param p1, "params"    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/ads/utils/AdConfig;->setAdvertisingId(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/buzzfeed/ads/utils/AdConfig;->setOptOutInterestAds(Z)V

    .line 382
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 348
    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->onPostExecute(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 355
    return-void
.end method
