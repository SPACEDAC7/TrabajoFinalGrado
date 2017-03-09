.class public Lcom/buzzfeed/spicerack/data/constant/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field public static final BUZZFEED_DOMAIN_BASE:Ljava/lang/String; = "buzzfeed.com"

.field public static final BUZZFEED_MOBILE_PARAM:Ljava/lang/String; = "s=mobile_app"

.field public static BUZZ_URL:Ljava/lang/String; = null

.field public static final MOBILE_APP_PARAM_KEY:Ljava/lang/String; = "s"

.field public static final MOBILE_APP_PARAM_VALUE:Ljava/lang/String; = "mobile_app"

.field private static final SPICE_API_PREFIX:Ljava/lang/String; = "api/v2/mobileapp/buzz"

.field private static final TAG:Ljava/lang/String;

.field private static bfUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/buzzfeed/spicerack/data/constant/Environment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/Environment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendMobileAppParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p0, :cond_a

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_a
    const-string p0, ""

    .line 62
    .end local p0    # "url":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object p0

    .line 38
    .restart local p0    # "url":Ljava/lang/String;
    :cond_d
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/constant/Environment;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 40
    .local v5, "uri":Landroid/net/Uri;
    const-string v7, "s"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "mobileAppParam":Ljava/lang/String;
    if-eqz v0, :cond_27

    const-string v7, "s=mobile_app"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 44
    :cond_27
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 45
    .local v2, "newUri":Landroid/net/Uri$Builder;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_43

    .line 50
    .end local v4    # "s":Ljava/lang/String;
    :cond_53
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    .line 51
    .local v6, "urlQueryParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 52
    const-string v7, "s"

    const-string v8, "mobile_app"

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    :cond_64
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 54
    :cond_6d
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_75
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "name":Ljava/lang/String;
    const-string v8, "s"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 56
    const-string v8, "s"

    const-string v9, "mobile_app"

    invoke-virtual {v2, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_75

    .line 58
    :cond_91
    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_75
.end method

.method public static buildWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/Environment;->BUZZ_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/constant/Environment;->stripLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/spicerack/data/constant/Environment;->appendMobileAppParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBFUserAgent()Ljava/lang/String;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/Environment;->bfUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getSpiceUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->SPICERACK_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "api/v2/mobileapp/buzz"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSpiceUrlFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->SPICERACK_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 74
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "api/v2/mobileapp/buzz"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/constant/Environment;->stripLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initBaseUrl(Ljava/lang/String;)V
    .registers 4
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 26
    sput-object p0, Lcom/buzzfeed/spicerack/data/constant/Environment;->BUZZ_URL:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/Environment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting spicy environment base url to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/spicerack/data/constant/Environment;->BUZZ_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static isBuzzFeedUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "buzzfeed.com"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .registers 3
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (progressiveloading)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/Environment;->bfUserAgent:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static stripLeadingSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_f

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    .end local p0    # "uri":Ljava/lang/String;
    :cond_f
    return-object p0
.end method
