.class final Lcom/facebook/ProfileCache;
.super Ljava/lang/Object;
.source "ProfileCache.java"


# static fields
.field static final CACHED_PROFILE_KEY:Ljava/lang/String; = "com.facebook.ProfileManager.CachedProfile"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.facebook.AccessTokenManager.SharedPreferences"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ProfileCache;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/ProfileCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.ProfileManager.CachedProfile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method

.method load()Lcom/facebook/Profile;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v2, p0, Lcom/facebook/ProfileCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "com.facebook.ProfileManager.CachedProfile"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 48
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/facebook/Profile;

    invoke-direct {v2, v0}, Lcom/facebook/Profile;-><init>(Lorg/json/JSONObject;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_15} :catch_16

    .line 54
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_15
    return-object v2

    .line 50
    :catch_16
    move-exception v2

    :cond_17
    move-object v2, v3

    .line 54
    goto :goto_15
.end method

.method save(Lcom/facebook/Profile;)V
    .registers 6
    .param p1, "profile"    # Lcom/facebook/Profile;

    .prologue
    .line 58
    const-string v1, "profile"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/facebook/Profile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_1e

    .line 61
    iget-object v1, p0, Lcom/facebook/ProfileCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.facebook.ProfileManager.CachedProfile"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :cond_1e
    return-void
.end method
