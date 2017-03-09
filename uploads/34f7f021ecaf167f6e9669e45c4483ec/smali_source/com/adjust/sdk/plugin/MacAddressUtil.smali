.class public Lcom/adjust/sdk/plugin/MacAddressUtil;
.super Ljava/lang/Object;
.source "MacAddressUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/adjust/sdk/plugin/MacAddressUtil;->getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "rawAddress":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 16
    const/4 v2, 0x0

    .line 19
    :goto_7
    return-object v2

    .line 18
    :cond_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "upperAddress":Ljava/lang/String;
    invoke-static {v1}, Lcom/adjust/sdk/plugin/MacAddressUtil;->removeSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method private static getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Lcom/adjust/sdk/plugin/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "wlanAddress":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 46
    .end local v3    # "wlanAddress":Ljava/lang/String;
    :goto_9
    return-object v3

    .line 30
    .restart local v3    # "wlanAddress":Ljava/lang/String;
    :cond_a
    const-string v4, "eth0"

    invoke-static {v4}, Lcom/adjust/sdk/plugin/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "ethAddress":Ljava/lang/String;
    if-eqz v0, :cond_14

    move-object v3, v0

    .line 32
    goto :goto_9

    .line 37
    :cond_14
    :try_start_14
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 38
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_29

    move-result-object v1

    .line 39
    .local v1, "wifiAddress":Ljava/lang/String;
    if-eqz v1, :cond_2a

    move-object v3, v1

    .line 40
    goto :goto_9

    .line 42
    .end local v1    # "wifiAddress":Ljava/lang/String;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_29
    move-exception v4

    .line 46
    :cond_2a
    const/4 v3, 0x0

    goto :goto_9
.end method

.method private static loadAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x3e8

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .local v2, "fileData":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 54
    .local v6, "reader":Ljava/io/BufferedReader;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 58
    .local v0, "buf":[C
    :goto_30
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "numRead":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_43

    .line 59
    const/4 v7, 0x0

    invoke-static {v0, v7, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "readData":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 65
    .end local v0    # "buf":[C
    .end local v2    # "fileData":Ljava/lang/StringBuilder;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "numRead":I
    .end local v5    # "readData":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_40
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_42
    return-object v7

    .line 63
    .restart local v0    # "buf":[C
    .restart local v2    # "fileData":Ljava/lang/StringBuilder;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "numRead":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_43
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_40

    move-result-object v7

    goto :goto_42
.end method

.method private static removeSpaceString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p0, :cond_5

    move-object v0, v1

    .line 80
    :cond_4
    :goto_4
    return-object v0

    .line 75
    :cond_5
    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "outputString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 77
    goto :goto_4
.end method
