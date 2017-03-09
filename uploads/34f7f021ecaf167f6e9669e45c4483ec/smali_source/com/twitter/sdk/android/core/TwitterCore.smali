.class public Lcom/twitter/sdk/android/core/TwitterCore;
.super Lio/fabric/sdk/android/Kit;
.source "TwitterCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final PREF_KEY_ACTIVE_APP_SESSION:Ljava/lang/String; = "active_appsession"

.field static final PREF_KEY_ACTIVE_TWITTER_SESSION:Ljava/lang/String; = "active_twittersession"

.field static final PREF_KEY_APP_SESSION:Ljava/lang/String; = "appsession"

.field static final PREF_KEY_TWITTER_SESSION:Ljava/lang/String; = "twittersession"

.field static final SESSION_PREF_FILE_NAME:Ljava/lang/String; = "session_store"

.field public static final TAG:Ljava/lang/String; = "Twitter"


# instance fields
.field private final apiClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/Session;",
            "Lcom/twitter/sdk/android/core/TwitterApiClient;",
            ">;"
        }
    .end annotation
.end field

.field appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/AppSession;",
            ">;"
        }
    .end annotation
.end field

.field private final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field sessionMonitor:Lcom/twitter/sdk/android/core/internal/SessionMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/SessionMonitor",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .registers 3
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .prologue
    .line 62
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/Session;",
            "Lcom/twitter/sdk/android/core/TwitterApiClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "apiClients":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterApiClient;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 70
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterCore;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    return-void
.end method

.method private static checkInitialized()V
    .registers 2

    .prologue
    .line 155
    const-class v0, Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    if-nez v0, :cond_10

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_10
    return-void
.end method

.method private declared-synchronized createSSLSocketFactory()V
    .registers 5

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-nez v1, :cond_1f

    .line 106
    :try_start_5
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterPinningInfoProvider;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterPinningInfoProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lio/fabric/sdk/android/services/network/NetworkUtils;->getSSLSocketFactory(Lio/fabric/sdk/android/services/network/PinningInfoProvider;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_21
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2e

    .line 113
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 109
    :catch_21
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_22
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Exception setting up custom SSL pinning"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    goto :goto_1f

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getActiveSession()Lcom/twitter/sdk/android/core/Session;
    .registers 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    .line 240
    .local v0, "session":Lcom/twitter/sdk/android/core/Session;
    if-nez v0, :cond_e

    .line 241
    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    .line 243
    :cond_e
    return-object v0
.end method

.method public static getInstance()Lcom/twitter/sdk/android/core/TwitterCore;
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 75
    const-class v0, Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterCore;

    return-object v0
.end method

.method private initializeScribeClient()V
    .registers 3

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "sessionManagers":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/SessionManager<+Lcom/twitter/sdk/android/core/Session;>;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;->initialize(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/util/List;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    .line 140
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    .line 141
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 142
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->initializeScribeClient()V

    .line 145
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sessionMonitor:Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/Fabric;->getActivityLifecycleManager()Lio/fabric/sdk/android/ActivityLifecycleManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->monitorActivityLifecycle(Lio/fabric/sdk/android/ActivityLifecycleManager;)V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;
    .registers 4

    .prologue
    .line 256
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 257
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    .line 258
    .local v0, "session":Lcom/twitter/sdk/android/core/Session;
    if-nez v0, :cond_11

    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must have valid session. Did you authenticate with Twitter?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_11
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient(Lcom/twitter/sdk/android/core/Session;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v1

    return-object v1
.end method

.method public getApiClient(Lcom/twitter/sdk/android/core/Session;)Lcom/twitter/sdk/android/core/TwitterApiClient;
    .registers 4
    .param p1, "session"    # Lcom/twitter/sdk/android/core/Session;

    .prologue
    .line 277
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 278
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 279
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterApiClient;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/Session;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_15
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterApiClient;

    return-object v0
.end method

.method public getAppSessionManager()Lcom/twitter/sdk/android/core/SessionManager;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/AppSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 234
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    return-object v0
.end method

.method public getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 95
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 97
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_a

    .line 98
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->createSSLSocketFactory()V

    .line 100
    :cond_a
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 223
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const-string v0, "1.6.8.127"

    return-object v0
.end method

.method public logIn(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 182
    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    .line 183
    return-void
.end method

.method public logInGuest(Lcom/twitter/sdk/android/core/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/AppSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/AppSession;>;"
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 195
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/TwitterApi;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/TwitterApi;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/TwitterApi;)V

    .line 197
    .local v0, "service":Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
    new-instance v1, Lcom/twitter/sdk/android/core/GuestAuthClient;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/GuestAuthClient;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;)V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-virtual {v1, v2, p1}, Lcom/twitter/sdk/android/core/GuestAuthClient;->authorize(Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/Callback;)V

    .line 198
    return-void
.end method

.method public logOut()V
    .registers 2

    .prologue
    .line 208
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->checkInitialized()V

    .line 209
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    .line 210
    .local v0, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    if-eqz v0, :cond_c

    .line 211
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    .line 213
    :cond_c
    return-void
.end method

.method protected onPreExecute()Z
    .registers 7

    .prologue
    .line 117
    new-instance v0, Lcom/twitter/sdk/android/core/internal/MigrationHelper;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/MigrationHelper;-><init>()V

    .line 118
    .local v0, "migrationHelper":Lcom/twitter/sdk/android/core/internal/MigrationHelper;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session_store"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/MigrationHelper;->migrateSessionStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/twitter/sdk/android/core/PersistedSessionManager;

    new-instance v2, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "session_store"

    invoke-direct {v2, v3, v4}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/twitter/sdk/android/core/TwitterSession$Serializer;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/TwitterSession$Serializer;-><init>()V

    const-string v4, "active_twittersession"

    const-string/jumbo v5, "twittersession"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/sdk/android/core/PersistedSessionManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lio/fabric/sdk/android/services/persistence/SerializationStrategy;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 126
    new-instance v1, Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterCore;->twitterSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v3

    invoke-virtual {v3}, Lio/fabric/sdk/android/Fabric;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/SessionMonitor;-><init>(Lcom/twitter/sdk/android/core/SessionManager;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/SessionVerifier;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->sessionMonitor:Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    .line 129
    new-instance v1, Lcom/twitter/sdk/android/core/PersistedSessionManager;

    new-instance v2, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "session_store"

    invoke-direct {v2, v3, v4}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/twitter/sdk/android/core/AppSession$Serializer;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/AppSession$Serializer;-><init>()V

    const-string v4, "active_appsession"

    const-string v5, "appsession"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/sdk/android/core/PersistedSessionManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lio/fabric/sdk/android/services/persistence/SerializationStrategy;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/TwitterCore;->appSessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 133
    const/4 v1, 0x1

    return v1
.end method
