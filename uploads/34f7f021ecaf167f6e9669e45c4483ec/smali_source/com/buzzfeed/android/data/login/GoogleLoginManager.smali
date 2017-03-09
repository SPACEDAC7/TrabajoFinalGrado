.class public Lcom/buzzfeed/android/data/login/GoogleLoginManager;
.super Ljava/lang/Object;
.source "GoogleLoginManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final RC_SIGN_IN:I = 0x539

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/buzzfeed/android/data/login/GoogleLoginManager;


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->setupGoogleApiClient(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/data/login/GoogleLoginManager;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/android/data/login/GoogleLoginManager;
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->sInstance:Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "You must call initialize() first!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 35
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 38
    :cond_12
    :try_start_12
    sget-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->sInstance:Lcom/buzzfeed/android/data/login/GoogleLoginManager;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->sInstance:Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->sInstance:Lcom/buzzfeed/android/data/login/GoogleLoginManager;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 32
    :cond_e
    monitor-exit v1

    return-void

    .line 29
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public login(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "signInIntent":Landroid/content/Intent;
    const/16 v1, 0x539

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    return-void
.end method

.method public logout()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 80
    :cond_f
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    sget-object v0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login to google failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected setupGoogleApiClient(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 43
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/util/BFVault;->getGoogleOAuthClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 47
    .local v0, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;-><init>(Lcom/buzzfeed/android/data/login/GoogleLoginManager;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 64
    return-void
.end method
