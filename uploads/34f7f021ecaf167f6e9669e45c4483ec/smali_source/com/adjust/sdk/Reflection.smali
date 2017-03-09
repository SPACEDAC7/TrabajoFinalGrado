.class public Lcom/adjust/sdk/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "classObject"    # Ljava/lang/Class;

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 156
    :goto_4
    return-object v0

    .line 155
    :catch_5
    move-exception v1

    .line 156
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static createDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "classObject":Ljava/lang/Class;
    invoke-static {v0}, Lcom/adjust/sdk/Reflection;->createDefaultInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "instance":Ljava/lang/Object;
    return-object v1
.end method

.method public static varargs createInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cArgs"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 162
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    .local v0, "classObject":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 165
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 168
    .end local v0    # "classObject":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_c
    return-object v2

    .line 167
    :catch_d
    move-exception v3

    .line 168
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 141
    :goto_4
    return-object v0

    .line 140
    :catch_5
    move-exception v1

    .line 141
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v1, "getAdvertisingIdInfo"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    :try_start_0
    const-string v2, "com.adjust.sdk.plugin.AndroidIdUtil"

    const-string v3, "getAndroidId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 87
    :goto_18
    return-object v0

    .line 86
    :catch_19
    move-exception v1

    .line 87
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "cpuAbi":Ljava/lang/String;
    :try_start_1
    const-string v2, "android.os.Build"

    const-string v3, "CPU_ABI"

    invoke-static {v2, v3}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 112
    :goto_d
    return-object v1

    .line 111
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method public static getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 5
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "locale":Ljava/util/Locale;
    :try_start_1
    const-string v2, "android.content.res.Configuration"

    const-string v3, "locale"

    invoke-static {v2, v3, p0}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Locale;

    move-object v1, v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 133
    :goto_d
    return-object v1

    .line 132
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method public static getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 9
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "locale":Ljava/util/Locale;
    :try_start_2
    const-string v4, "getLocales"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5, v6}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "localesList":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 125
    .end local v2    # "localesList":Ljava/lang/Object;
    :goto_e
    return-object v3

    .line 122
    .restart local v2    # "localesList":Ljava/lang/Object;
    :cond_f
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Locale;

    move-object v1, v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2e

    .end local v2    # "localesList":Ljava/lang/Object;
    :goto_2c
    move-object v3, v1

    .line 125
    goto :goto_e

    .line 124
    :catch_2e
    move-exception v3

    goto :goto_2c
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    :try_start_0
    const-string v2, "com.adjust.sdk.plugin.MacAddressUtil"

    const-string v3, "getMacAddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 76
    :goto_18
    return-object v0

    .line 75
    :catch_19
    move-exception v1

    .line 76
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 42
    :try_start_1
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "AdvertisingInfoObject":Ljava/lang/Object;
    const-string v4, "getId"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_12

    .line 48
    .end local v0    # "AdvertisingInfoObject":Ljava/lang/Object;
    :goto_11
    return-object v1

    .line 47
    :catch_12
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v1, v3

    .line 48
    goto :goto_11
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v2, "pluginKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getPlugins()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/plugin/Plugin;

    .line 220
    .local v0, "plugin":Lcom/adjust/sdk/plugin/Plugin;
    invoke-interface {v0, p0}, Lcom/adjust/sdk/plugin/Plugin;->getParameter(Landroid/content/Context;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 221
    .local v1, "pluginEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_d

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 226
    .end local v0    # "plugin":Lcom/adjust/sdk/plugin/Plugin;
    .end local v1    # "pluginEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_32

    .line 227
    const/4 v2, 0x0

    .line 229
    .end local v2    # "pluginKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_32
    return-object v2
.end method

.method private static getPlugins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/adjust/sdk/Constants;->PLUGINS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v2, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/adjust/sdk/plugin/Plugin;>;"
    sget-object v3, Lcom/adjust/sdk/Constants;->PLUGINS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "pluginName":Ljava/lang/String;
    invoke-static {v0}, Lcom/adjust/sdk/Reflection;->createDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, "pluginObject":Ljava/lang/Object;
    if-eqz v1, :cond_11

    instance-of v4, v1, Lcom/adjust/sdk/plugin/Plugin;

    if-eqz v4, :cond_11

    .line 239
    check-cast v1, Lcom/adjust/sdk/plugin/Plugin;

    .end local v1    # "pluginObject":Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 243
    .end local v0    # "pluginName":Ljava/lang/String;
    :cond_2d
    return-object v2
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "supportedAbis":[Ljava/lang/String;
    :try_start_1
    const-string v2, "android.os.Build"

    const-string v3, "SUPPORTED_ABIS"

    invoke-static {v2, v3}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    .line 104
    :goto_f
    return-object v1

    .line 103
    :catch_10
    move-exception v2

    goto :goto_f
.end method

.method public static getVMRuntimeObject()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 23
    :try_start_1
    const-string v2, "dalvik.system.VMRuntime"

    const-string v3, "getRuntime"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    .line 25
    .local v0, "t":Ljava/lang/Throwable;
    :goto_d
    return-object v1

    .line 24
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 25
    .restart local v0    # "t":Ljava/lang/Throwable;
    goto :goto_d
.end method

.method public static getVmInstructionSet()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 31
    :try_start_1
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getVMRuntimeObject()Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "VMRuntimeObject":Ljava/lang/Object;
    const-string/jumbo v4, "vmInstructionSet"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_13

    .line 36
    :goto_12
    return-object v2

    .line 35
    :catch_13
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    move-object v2, v3

    .line 36
    goto :goto_12
.end method

.method public static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cArgs"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "classObject":Ljava/lang/Class;
    invoke-static {v0, p1, p0, p2, p3}, Lcom/adjust/sdk/Reflection;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "classObject"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "cArgs"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    .local v0, "methodObject":Ljava/lang/reflect/Method;
    if-nez v0, :cond_8

    .line 191
    const/4 v1, 0x0

    .line 195
    :goto_7
    return-object v1

    .line 193
    :cond_8
    invoke-virtual {v0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "resultObject":Ljava/lang/Object;
    goto :goto_7
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cArgs"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    .local v0, "classObject":Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lcom/adjust/sdk/Reflection;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 54
    :try_start_2
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "AdvertisingInfoObject":Ljava/lang/Object;
    const-string v5, "isLimitAdTrackingEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v6, v7}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 58
    .local v1, "isLimitedTrackingEnabled":Ljava/lang/Boolean;
    if-nez v1, :cond_15

    .line 62
    .end local v0    # "AdvertisingInfoObject":Ljava/lang/Object;
    .end local v1    # "isLimitedTrackingEnabled":Ljava/lang/Boolean;
    :goto_14
    return-object v2

    .line 58
    .restart local v0    # "AdvertisingInfoObject":Ljava/lang/Object;
    .restart local v1    # "isLimitedTrackingEnabled":Ljava/lang/Boolean;
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1c

    const/4 v4, 0x1

    :cond_1c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_21

    move-result-object v2

    goto :goto_14

    .line 61
    .end local v0    # "AdvertisingInfoObject":Ljava/lang/Object;
    .end local v1    # "isLimitedTrackingEnabled":Ljava/lang/Boolean;
    :catch_21
    move-exception v3

    .line 62
    .local v3, "t":Ljava/lang/Throwable;
    goto :goto_14
.end method

.method public static readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "classObject":Ljava/lang/Class;
    if-nez v0, :cond_8

    .line 213
    :cond_7
    :goto_7
    return-object v2

    .line 209
    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 210
    .local v1, "fieldObject":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_7

    .line 213
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7
.end method
