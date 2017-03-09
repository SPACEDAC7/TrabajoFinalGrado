.class public Lcom/twitter/sdk/android/tweetui/TweetUi;
.super Lio/fabric/sdk/android/Kit;
.source "TweetUi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/DependsOn;
    value = {
        Lcom/twitter/sdk/android/core/TwitterCore;
    }
.end annotation


# static fields
.field private static final KIT_SCRIBE_NAME:Ljava/lang/String; = "TweetUi"

.field static final LOGTAG:Ljava/lang/String; = "TweetUi"

.field static final NOT_STARTED_ERROR:Ljava/lang/String; = "Must start TweetUi Kit in Fabric.with()."


# instance fields
.field private guestAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

.field guestSessionManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field guestSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;

.field private imageLoader:Lcom/squareup/picasso/Picasso;

.field scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

.field private tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

.field private userAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

.field userSessionManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field userSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    return-void
.end method

.method private static checkInitialized()V
    .registers 2

    .prologue
    .line 119
    const-class v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    if-nez v0, :cond_10

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start TweetUi Kit in Fabric.with()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_10
    return-void
.end method

.method public static getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->checkInitialized()V

    .line 64
    const-class v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-object v0
.end method

.method private setUpScribeClient()V
    .registers 5

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const-string v1, "TweetUi"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionManagers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/util/List;Lio/fabric/sdk/android/services/common/IdManager;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    .line 127
    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;->sessionRestored(Lcom/twitter/sdk/android/core/Session;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;->sessionRestored(Lcom/twitter/sdk/android/core/Session;)V

    .line 109
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->setUpScribeClient()V

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getGuestAuthQueue()Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "com.twitter.sdk.android:tweet-ui"

    return-object v0
.end method

.method getImageLoader()Lcom/squareup/picasso/Picasso;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "1.10.3.127"

    return-object v0
.end method

.method protected onPreExecute()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-super {p0}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z

    .line 80
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    .line 81
    .local v0, "twitterCore":Lcom/twitter/sdk/android/core/TwitterCore;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionManagers:Ljava/util/List;

    .line 82
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionManagers:Ljava/util/List;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionManagers:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;

    .line 84
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/UserSessionProvider;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/internal/SessionProvider;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionManagers:Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionManagers:Ljava/util/List;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionManagers:Ljava/util/List;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getAppSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionManagers:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/util/List;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;

    .line 90
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/tweetui/internal/GuestSessionProvider;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/internal/SessionProvider;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    .line 92
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetRepository;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/Fabric;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->userAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestAuthQueue:Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/TweetRepository;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;Lcom/twitter/sdk/android/tweetui/TweetUiAuthRequestQueue;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .line 94
    return v5
.end method

.method scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V
    .registers 4
    .param p1, "ns"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v0, :cond_5

    .line 141
    :goto_4
    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    goto :goto_4
.end method

.method varargs scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V
    .registers 9
    .param p1, "namespaces"    # [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    .prologue
    .line 130
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v4, :cond_5

    .line 135
    :cond_4
    return-void

    .line 132
    :cond_5
    move-object v0, p1

    .local v0, "arr$":[Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 133
    .local v3, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method setImageLoader(Lcom/squareup/picasso/Picasso;)V
    .registers 2
    .param p1, "imageLoader"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    .line 163
    return-void
.end method

.method setTweetRepository(Lcom/twitter/sdk/android/tweetui/TweetRepository;)V
    .registers 2
    .param p1, "tweetRepository"    # Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .line 154
    return-void
.end method
