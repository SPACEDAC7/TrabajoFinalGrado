.class final Lcom/facebook/share/internal/LikeActionController$5;
.super Lcom/facebook/AccessTokenTracker;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 7
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 368
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    .local v0, "appContext":Landroid/content/Context;
    if-nez p2, :cond_37

    .line 377
    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    # setter for: Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$302(I)I

    .line 378
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "OBJECT_SUFFIX"

    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    # getter for: Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 389
    # getter for: Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$500()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FileLruCache;->clearCache()V

    .line 391
    :cond_37
    const/4 v1, 0x0

    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 392
    return-void
.end method
