.class public Lcom/buzzfeed/android/data/BuzzUser;
.super Ljava/lang/Object;
.source "BuzzUser.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONTRIBUTE:Ljava/lang/String; = "contribute"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FACEBOOK_UID:Ljava/lang/String; = "facebook_uid"

.field private static final FILE_NAME:Ljava/lang/String; = "buzz_user"

.field public static final F_INDEX:Ljava/lang/String; = "f_index"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final IS_FACEBOOK_USER:Ljava/lang/String; = "is_facebook_user"

.field public static final IS_MICROSITE:Ljava/lang/String; = "is_microsite"

.field public static final LAST_ACTIVE:Ljava/lang/String; = "last_active"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final MAX_ALIASES:Ljava/lang/String; = "max_aliases"

.field public static final P_ACCESS_STATS:Ljava/lang/String; = "p_access_stats"

.field public static final P_ADMIN:Ljava/lang/String; = "p_admin"

.field public static final P_ALIAS:Ljava/lang/String; = "p_alias"

.field public static final P_ALLOW_RAW_HTML:Ljava/lang/String; = "p_allow_raw_html"

.field public static final P_DASHBOARD:Ljava/lang/String; = "p_dashboard"

.field public static final P_DISABLE_COMMENT:Ljava/lang/String; = "p_disable_comment"

.field public static final P_DISABLE_QUICKPOST:Ljava/lang/String; = "p_disable_quickpost"

.field public static final P_DISABLE_REACTION:Ljava/lang/String; = "p_disable_reaction"

.field public static final P_PARTNER_ADMIN:Ljava/lang/String; = "p_partner_admin"

.field public static final REGISTRATION_PATH:Ljava/lang/String; = "registration_path"

.field public static final SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final SHOW_ACCOUNT_SETTINGS:Ljava/lang/String; = "show_account_settings"

.field private static final TAG:Ljava/lang/String;

.field public static final TERMINAL_USER:Ljava/lang/String; = "terminal_user"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final USER_ID:Ljava/lang/String; = "userid"

.field public static final USER_SWITCHING:Ljava/lang/String; = "user_switching"

.field private static sInstance:Lcom/buzzfeed/android/data/BuzzUser; = null

.field private static final serialVersionUID:J = 0x4457ef79dd8e85ebL

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private contribute:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private fIndex:I

.field private facebookUid:Ljava/lang/String;

.field private facebookUsername:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private isFacebookUser:Z

.field private isMicrosite:Z

.field private lastActive:J

.field private login:Z

.field private loginType:Ljava/lang/String;

.field private maxAliases:I

.field private pAccessStats:Z

.field private pAdmin:Z

.field private pAlias:Z

.field private pAllowRawHTML:Z

.field private pDashboard:Z

.field private pDisableComment:Z

.field private pDisableQuickpost:Z

.field private pDisableReaction:Z

.field private pPartnerAdmin:Z

.field private password:Ljava/lang/String;

.field private registrationPath:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private showAccountSettings:Z

.field private syncId:Ljava/lang/String;

.field private terminalUser:Ljava/lang/String;

.field private userSwitching:I

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/BuzzUser;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/data/BuzzUser;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v1, Lcom/buzzfeed/android/data/BuzzUser;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    if-nez v0, :cond_1c

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzUser;->loadFromStorage(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    .line 97
    sget-object v0, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    if-nez v0, :cond_1c

    .line 98
    new-instance v0, Lcom/buzzfeed/android/data/BuzzUser;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/BuzzUser;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    .line 102
    :cond_1c
    sget-object v0, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public static loadFromStorage(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 419
    .local v1, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :try_start_1
    const-string v5, "buzz_user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 420
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 421
    .local v4, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/buzzfeed/android/data/BuzzUser;

    move-object v1, v0

    .line 422
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 423
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1a} :catch_42

    .line 432
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    :goto_1a
    return-object v1

    .line 424
    :catch_1b
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/buzzfeed/android/data/BuzzUser;->TAG:Ljava/lang/String;

    const-string v6, "No BuzzUser information was found on disk"

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 426
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_24
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/buzzfeed/android/data/BuzzUser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to load BuzzUser information from disk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 428
    .end local v2    # "e":Ljava/io/IOException;
    :catch_42
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/buzzfeed/android/data/BuzzUser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to deserialize BuzzUser information from disk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method public deleteFromStorage(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const-string v0, "buzz_user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 437
    return-void
.end method

.method public getContribute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->contribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFIndex()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->fIndex:I

    return v0
.end method

.method public getFacebookUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->facebookUid:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->facebookUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActive()J
    .registers 3

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->lastActive:J

    return-wide v0
.end method

.method public getLoginType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAliases()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->maxAliases:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->registrationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->syncId:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->terminalUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSwitching()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->userSwitching:I

    return v0
.end method

.method public getUserid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isFacebookUser()Z
    .registers 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->isFacebookUser:Z

    return v0
.end method

.method public isLogin()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->login:Z

    return v0
.end method

.method public isMicrosite()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->isMicrosite:Z

    return v0
.end method

.method public isPAccessStats()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAccessStats:Z

    return v0
.end method

.method public isPAdmin()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAdmin:Z

    return v0
.end method

.method public isPAlias()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAlias:Z

    return v0
.end method

.method public isPAllowRawHTML()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAllowRawHTML:Z

    return v0
.end method

.method public isPDashboard()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDashboard:Z

    return v0
.end method

.method public isPDisableComment()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableComment:Z

    return v0
.end method

.method public isPDisableQuickpost()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableQuickpost:Z

    return v0
.end method

.method public isPDisableReaction()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableReaction:Z

    return v0
.end method

.method public isPPartnerAdmin()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->pPartnerAdmin:Z

    return v0
.end method

.method public isShowAccountSettings()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzUser;->showAccountSettings:Z

    return v0
.end method

.method public loadFromJson(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 360
    const-string/jumbo v3, "userid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->userid:Ljava/lang/String;

    .line 361
    const-string v3, "p_disable_reaction"

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableReaction:Z

    .line 362
    const-string v3, "p_disable_comment"

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableComment:Z

    .line 363
    const-string v3, "session_key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->sessionKey:Ljava/lang/String;

    .line 364
    const-string v3, "p_disable_quickpost"

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableQuickpost:Z

    .line 365
    const-string v3, "last_active"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/buzzfeed/android/data/BuzzUser;->lastActive:J

    .line 366
    const-string v3, "facebook_uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->facebookUid:Ljava/lang/String;

    .line 367
    const-string v3, "display_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->displayName:Ljava/lang/String;

    .line 368
    const-string v3, "image"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "imagePath":Ljava/lang/String;
    if-eqz v1, :cond_9e

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://img.buzzfeed.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 372
    .local v0, "dot":I
    iget-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "imgFormat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_large"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    .line 378
    .end local v0    # "dot":I
    .end local v2    # "imgFormat":Ljava/lang/String;
    :goto_94
    const-string/jumbo v3, "username"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->username:Ljava/lang/String;

    .line 379
    return-void

    .line 375
    :cond_9e
    const-string v3, ""

    iput-object v3, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    goto :goto_94
.end method

.method public logout(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 386
    new-instance v0, Lcom/buzzfeed/android/data/BuzzUser;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/BuzzUser;-><init>()V

    .line 387
    .local v0, "blankUser":Lcom/buzzfeed/android/data/BuzzUser;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setBuzzUser(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 389
    invoke-static {}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->getInstance()Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->logout()V

    .line 392
    invoke-static {p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v1

    .line 393
    .local v1, "bookmarkManager":Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->uploadLocalBookmarkChanges()V

    .line 394
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->resetBookmarks()V

    .line 397
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/BuzzUser;->deleteFromStorage(Landroid/content/Context;)V

    .line 398
    return-void
.end method

.method public saveToStorage(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    :try_start_0
    const-string v3, "buzz_user"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 405
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    .local v2, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 408
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 412
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    :goto_15
    return-void

    .line 409
    :catch_16
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/buzzfeed/android/data/BuzzUser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to save BuzzUser information to disk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public setBuzzUser(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 4
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 107
    sget-object v1, Lcom/buzzfeed/android/data/BuzzUser;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    sput-object p1, Lcom/buzzfeed/android/data/BuzzUser;->sInstance:Lcom/buzzfeed/android/data/BuzzUser;

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setContribute(Ljava/lang/String;)V
    .registers 2
    .param p1, "contribute"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->contribute:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->displayName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setFIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->fIndex:I

    .line 164
    return-void
.end method

.method public setFacebookUid(Ljava/lang/String;)V
    .registers 2
    .param p1, "facebookUid"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->facebookUid:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setFacebookUser(Z)V
    .registers 2
    .param p1, "isFacebookUser"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->isFacebookUser:Z

    .line 308
    return-void
.end method

.method public setFacebookUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "facebookUsername"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->facebookUsername:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->imageUrl:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setLastActive(J)V
    .registers 4
    .param p1, "lastActive"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->lastActive:J

    .line 236
    return-void
.end method

.method public setLogin(Z)V
    .registers 2
    .param p1, "login"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->login:Z

    .line 300
    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginType"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->loginType:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setMaxAliases(I)V
    .registers 2
    .param p1, "maxAliases"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->maxAliases:I

    .line 204
    return-void
.end method

.method public setMicrosite(Z)V
    .registers 2
    .param p1, "isMicrosite"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->isMicrosite:Z

    .line 212
    return-void
.end method

.method public setPAccessStats(Z)V
    .registers 2
    .param p1, "accessStats"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAccessStats:Z

    .line 180
    return-void
.end method

.method public setPAdmin(Z)V
    .registers 2
    .param p1, "admin"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAdmin:Z

    .line 196
    return-void
.end method

.method public setPAlias(Z)V
    .registers 2
    .param p1, "alias"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAlias:Z

    .line 316
    return-void
.end method

.method public setPAllowRawHTML(Z)V
    .registers 2
    .param p1, "allowRawHTML"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pAllowRawHTML:Z

    .line 172
    return-void
.end method

.method public setPDashboard(Z)V
    .registers 2
    .param p1, "dashboard"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDashboard:Z

    .line 244
    return-void
.end method

.method public setPDisableComment(Z)V
    .registers 2
    .param p1, "disableComment"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableComment:Z

    .line 148
    return-void
.end method

.method public setPDisableQuickpost(Z)V
    .registers 2
    .param p1, "disableQuickpost"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableQuickpost:Z

    .line 228
    return-void
.end method

.method public setPDisableReaction(Z)V
    .registers 2
    .param p1, "disableReaction"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pDisableReaction:Z

    .line 140
    return-void
.end method

.method public setPPartnerAdmin(Z)V
    .registers 2
    .param p1, "partnerAdmin"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->pPartnerAdmin:Z

    .line 156
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->password:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setRegistrationPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "registrationPath"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->registrationPath:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->sessionKey:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setShowAccountSettings(Z)V
    .registers 2
    .param p1, "showAccountSettings"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->showAccountSettings:Z

    .line 332
    return-void
.end method

.method public setSyncId(Ljava/lang/String;)V
    .registers 2
    .param p1, "syncId"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->syncId:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setTerminalUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "terminalUser"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->terminalUser:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setUserSwitching(I)V
    .registers 2
    .param p1, "userSwitching"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->userSwitching:I

    .line 252
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .registers 2
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->userid:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzUser;->username:Ljava/lang/String;

    .line 292
    return-void
.end method
