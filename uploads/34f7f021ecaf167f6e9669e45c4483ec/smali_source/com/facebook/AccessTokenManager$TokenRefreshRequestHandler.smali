.class Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;
.super Landroid/os/Handler;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenRefreshRequestHandler"
.end annotation


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private tokenRefreshRequest:Lcom/facebook/AccessTokenManager$TokenRefreshRequest;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;Lcom/facebook/AccessTokenManager$TokenRefreshRequest;)V
    .registers 4
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "tokenRefreshRequest"    # Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->accessToken:Lcom/facebook/AccessToken;

    .line 227
    iput-object p2, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->tokenRefreshRequest:Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 233
    .local v0, "currentAccessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_27

    iget-object v2, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0, v2}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 235
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 236
    .local v1, "newToken":Lcom/facebook/AccessToken;
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 241
    .end local v1    # "newToken":Lcom/facebook/AccessToken;
    :cond_27
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->tokenRefreshRequest:Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 242
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;->tokenRefreshRequest:Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    # invokes: Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->cleanup()V
    invoke-static {v2}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->access$200(Lcom/facebook/AccessTokenManager$TokenRefreshRequest;)V

    .line 243
    return-void
.end method
