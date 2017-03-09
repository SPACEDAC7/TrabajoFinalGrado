.class public Lcom/buzzfeed/android/data/GoogleAuthApiProvider;
.super Ljava/lang/Object;
.source "GoogleAuthApiProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/buzzfeed/android/data/GoogleAuthApiProvider;


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPlayServices(Landroid/app/Activity;)V
    .registers 6
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".checkPlayServices"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 32
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got play services result of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isAmazonDevice()Z

    move-result v2

    if-nez v2, :cond_39

    .line 34
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    .line 36
    :cond_39
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/android/data/GoogleAuthApiProvider;
    .registers 2

    .prologue
    .line 19
    const-class v1, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->sInstance:Lcom/buzzfeed/android/data/GoogleAuthApiProvider;

    if-nez v0, :cond_e

    .line 20
    new-instance v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->sInstance:Lcom/buzzfeed/android/data/GoogleAuthApiProvider;

    .line 23
    :cond_e
    sget-object v0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->sInstance:Lcom/buzzfeed/android/data/GoogleAuthApiProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getGoogleApiClient(Landroid/app/Activity;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->checkPlayServices(Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1e

    .line 41
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 46
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/android/data/GoogleAuthApiProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method
