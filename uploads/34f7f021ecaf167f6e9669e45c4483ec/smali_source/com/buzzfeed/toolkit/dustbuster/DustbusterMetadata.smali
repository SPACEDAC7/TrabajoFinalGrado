.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;
.super Ljava/lang/Object;
.source "DustbusterMetadata.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersionCode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getBaseMetadataForEvent(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildEnvironment"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "app_version"

    invoke-static {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "build_number"

    invoke-static {p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "os"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "os_version"

    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "device"

    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "build_environment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "client_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadataForSessionEvent()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "device"

    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "os_version"

    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v1, "system_language"

    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterMetadata;->getSystemLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v0
.end method

.method private static getOsVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemLanguage()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
