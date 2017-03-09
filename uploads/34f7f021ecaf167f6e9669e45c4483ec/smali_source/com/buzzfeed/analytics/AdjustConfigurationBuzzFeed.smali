.class public Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;
.super Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;
.source "AdjustConfigurationBuzzFeed.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "adjustToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "adjustProduction"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;-><init>(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iget-object v4, p0, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;->mAdjustToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 32
    :goto_8
    return-void

    .line 26
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27
    .local v2, "ts":J
    iget-boolean v4, p0, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;->mAdjustProduction:Z

    if-eqz v4, :cond_4c

    const-string v0, "production"

    .line 28
    .local v0, "adjustEnv":Ljava/lang/String;
    :goto_13
    new-instance v1, Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, p0, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;->mAdjustToken:Ljava/lang/String;

    invoke-direct {v1, p1, v4, v0}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, "config":Lcom/adjust/sdk/AdjustConfig;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 30
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/adjust/sdk/Adjust;->setEnabled(Z)V

    .line 31
    sget-object v4, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished initializing Adjust (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " secs)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 27
    .end local v0    # "adjustEnv":Ljava/lang/String;
    .end local v1    # "config":Lcom/adjust/sdk/AdjustConfig;
    :cond_4c
    const-string v0, "sandbox"

    goto :goto_13
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 42
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 37
    return-void
.end method

.method public trackAdjustEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "adjustEventToken"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/adjust/sdk/Adjust;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->setEnabled(Z)V

    .line 47
    :cond_a
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 48
    return-void
.end method
