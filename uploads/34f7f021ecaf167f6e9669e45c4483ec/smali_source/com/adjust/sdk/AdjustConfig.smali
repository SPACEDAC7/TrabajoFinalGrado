.class public Lcom/adjust/sdk/AdjustConfig;
.super Ljava/lang/Object;
.source "AdjustConfig.java"


# static fields
.field public static final ENVIRONMENT_PRODUCTION:Ljava/lang/String; = "production"

.field public static final ENVIRONMENT_SANDBOX:Ljava/lang/String; = "sandbox"


# instance fields
.field allowSuppressLogLevel:Z

.field appToken:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deepLinkComponent:Ljava/lang/Class;

.field defaultTracker:Ljava/lang/String;

.field delayStart:Ljava/lang/Double;

.field deviceKnown:Ljava/lang/Boolean;

.field environment:Ljava/lang/String;

.field eventBufferingEnabled:Z

.field logger:Lcom/adjust/sdk/ILogger;

.field onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

.field onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

.field onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

.field onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

.field onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

.field onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

.field processName:Ljava/lang/String;

.field pushToken:Ljava/lang/String;

.field referrer:Ljava/lang/String;

.field referrerClickTime:J

.field sdkPrefix:Ljava/lang/String;

.field sendInBackground:Z

.field sessionParametersActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adjust/sdk/AdjustConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;
    .param p4, "allowSuppressLogLevel"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adjust/sdk/AdjustConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method private checkAppToken(Ljava/lang/String;)Z
    .registers 6
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    if-nez p1, :cond_e

    .line 182
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing App Token"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :goto_d
    return v0

    .line 186
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_22

    .line 187
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_22
    move v0, v1

    .line 191
    goto :goto_d
.end method

.method private checkContext(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_d

    .line 168
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing context"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :goto_c
    return v0

    .line 172
    :cond_d
    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 173
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing permission: INTERNET"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 177
    :cond_1f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private checkEnvironment(Ljava/lang/String;)Z
    .registers 6
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_e

    .line 196
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing environment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_d
    return v0

    .line 200
    :cond_e
    const-string v2, "sandbox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 201
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 204
    goto :goto_d

    .line 206
    :cond_21
    const-string v2, "production"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 207
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 211
    goto :goto_d

    .line 214
    :cond_34
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Unknown environment \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;
    .param p4, "allowSuppressLogLevel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-boolean p4, p0, Lcom/adjust/sdk/AdjustConfig;->allowSuppressLogLevel:Z

    .line 49
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    .line 51
    sget-object v0, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    invoke-direct {p0, v0, p3}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/AdjustConfig;->isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 64
    :goto_14
    return-void

    .line 57
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    .line 63
    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    goto :goto_14
.end method

.method private isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AdjustConfig;->checkAppToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 141
    :cond_7
    :goto_7
    return v0

    .line 138
    :cond_8
    invoke-direct {p0, p3}, Lcom/adjust/sdk/AdjustConfig;->checkEnvironment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustConfig;->checkContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V
    .registers 5
    .param p1, "logLevel"    # Lcom/adjust/sdk/LogLevel;
    .param p2, "environment"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "newLogLevel":Lcom/adjust/sdk/LogLevel;
    const-string v1, "production"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 148
    iget-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->allowSuppressLogLevel:Z

    if-eqz v1, :cond_15

    .line 149
    sget-object v0, Lcom/adjust/sdk/LogLevel;->SUPRESS:Lcom/adjust/sdk/LogLevel;

    .line 163
    :goto_f
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 164
    return-void

    .line 152
    :cond_15
    sget-object v0, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    goto :goto_f

    .line 156
    :cond_18
    iget-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->allowSuppressLogLevel:Z

    if-nez v1, :cond_23

    sget-object v1, Lcom/adjust/sdk/LogLevel;->SUPRESS:Lcom/adjust/sdk/LogLevel;

    if-ne p1, v1, :cond_23

    .line 158
    sget-object v0, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    goto :goto_f

    .line 160
    :cond_23
    move-object v0, p1

    goto :goto_f
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDeepLinkComponent(Ljava/lang/Class;)V
    .registers 2
    .param p1, "deepLinkComponent"    # Ljava/lang/Class;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    .line 102
    return-void
.end method

.method public setDefaultTracker(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultTracker"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDelayStart(D)V
    .registers 4
    .param p1, "delayStart"    # D

    .prologue
    .line 125
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->delayStart:Ljava/lang/Double;

    .line 126
    return-void
.end method

.method public setDeviceKnown(Z)V
    .registers 3
    .param p1, "deviceKnown"    # Z

    .prologue
    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    .line 98
    return-void
.end method

.method public setEventBufferingEnabled(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "eventBufferingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    if-nez p1, :cond_6

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    .line 72
    :goto_5
    return-void

    .line 71
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    goto :goto_5
.end method

.method public setLogLevel(Lcom/adjust/sdk/LogLevel;)V
    .registers 3
    .param p1, "logLevel"    # Lcom/adjust/sdk/LogLevel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V
    .registers 2
    .param p1, "onAttributionChangedListener"    # Lcom/adjust/sdk/OnAttributionChangedListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    .line 94
    return-void
.end method

.method public setOnDeeplinkResponseListener(Lcom/adjust/sdk/OnDeeplinkResponseListener;)V
    .registers 2
    .param p1, "onDeeplinkResponseListener"    # Lcom/adjust/sdk/OnDeeplinkResponseListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    .line 122
    return-void
.end method

.method public setOnEventTrackingFailedListener(Lcom/adjust/sdk/OnEventTrackingFailedListener;)V
    .registers 2
    .param p1, "onEventTrackingFailedListener"    # Lcom/adjust/sdk/OnEventTrackingFailedListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    .line 110
    return-void
.end method

.method public setOnEventTrackingSucceededListener(Lcom/adjust/sdk/OnEventTrackingSucceededListener;)V
    .registers 2
    .param p1, "onEventTrackingSucceededListener"    # Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    .line 106
    return-void
.end method

.method public setOnSessionTrackingFailedListener(Lcom/adjust/sdk/OnSessionTrackingFailedListener;)V
    .registers 2
    .param p1, "onSessionTrackingFailedListener"    # Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    .line 118
    return-void
.end method

.method public setOnSessionTrackingSucceededListener(Lcom/adjust/sdk/OnSessionTrackingSucceededListener;)V
    .registers 2
    .param p1, "onSessionTrackingSucceededListener"    # Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    .line 114
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSendInBackground(Z)V
    .registers 2
    .param p1, "sendInBackground"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    .line 76
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->userAgent:Ljava/lang/String;

    .line 130
    return-void
.end method
