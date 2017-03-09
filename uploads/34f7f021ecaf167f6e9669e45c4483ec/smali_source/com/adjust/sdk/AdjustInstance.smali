.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "AdjustInstance.java"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/ActivityHandler;

.field private pushToken:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private referrerClickTime:J

.field private sessionParametersActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkActivityHandler()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v1, :cond_11

    .line 225
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_9
    return-void

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 100
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$1;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_9
    return-void

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 118
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$2;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public appWillOpenUrl(Landroid/net/Uri;)V
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v2

    if-nez v2, :cond_7

    .line 65
    :goto_6
    return-void

    .line 63
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    goto :goto_6
.end method

.method public getAdid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 215
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getAttribution()Lcom/adjust/sdk/AdjustAttribution;
    .registers 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 220
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 58
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    goto :goto_7
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .registers 5
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_11

    .line 24
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_10
    return-void

    .line 28
    :cond_11
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    .line 29
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    iput-wide v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    .line 30
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->sessionParametersActionsArray:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_10
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 49
    :goto_6
    return-void

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onPause()V

    goto :goto_6
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    :goto_6
    return-void

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onResume()V

    goto :goto_6
.end method

.method public removeSessionCallbackParameter(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->removeSessionCallbackParameter(Ljava/lang/String;)V

    .line 142
    :goto_9
    return-void

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 136
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$3;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public removeSessionPartnerParameter(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 146
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->removeSessionPartnerParameter(Ljava/lang/String;)V

    .line 160
    :goto_9
    return-void

    .line 150
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 154
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$4;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public resetSessionCallbackParameters()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->resetSessionCallbackParameters()V

    .line 178
    :goto_9
    return-void

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 172
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$5;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$5;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public resetSessionPartnerParameters()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->resetSessionPartnerParameters()V

    .line 196
    :goto_9
    return-void

    .line 186
    :cond_a
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_15

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 190
    :cond_15
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$6;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$6;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public sendFirstPackages()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 88
    :goto_6
    return-void

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->sendFirstPackages()V

    goto :goto_6
.end method

.method public sendReferrer(Ljava/lang/String;)V
    .registers 5
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v2, :cond_d

    .line 72
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    .line 73
    iput-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    .line 77
    :goto_c
    return-void

    .line 75
    :cond_d
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 54
    :goto_6
    return-void

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabled(Z)V

    goto :goto_6
.end method

.method public setOfflineMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    :goto_6
    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setOfflineMode(Z)V

    goto :goto_6
.end method

.method public setPushToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setPushToken(Ljava/lang/String;)V

    .line 211
    :cond_b
    return-void
.end method

.method public teardown(Z)V
    .registers 3
    .param p1, "deleteState"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    :goto_6
    return-void

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->teardown(Z)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_6
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    :goto_6
    return-void

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_6
.end method
