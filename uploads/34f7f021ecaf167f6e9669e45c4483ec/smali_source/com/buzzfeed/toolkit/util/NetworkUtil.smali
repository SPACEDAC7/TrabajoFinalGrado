.class public Lcom/buzzfeed/toolkit/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
    }
.end annotation


# static fields
.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uriString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    .end local p0    # "uriString":Ljava/lang/String;
    :goto_8
    return-object p0

    .restart local p0    # "uriString":Ljava/lang/String;
    :cond_9
    const-string v0, "http"

    const-string v1, "https"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static getConnectionType(Landroid/content/Context;)Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 40
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 43
    sget-object v2, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->WiFi:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    .line 46
    :goto_1d
    return-object v2

    .line 44
    :cond_1e
    sget-object v2, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->Mobile:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    goto :goto_1d

    .line 46
    :cond_21
    sget-object v2, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->None:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    goto :goto_1d
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget v1, Lcom/buzzfeed/toolkit/R$string;->http_user_agent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "versionInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isConnectedToNetwork(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 26
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 27
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isConnectedToWifi(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->getConnectionType(Landroid/content/Context;)Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->WiFi:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
