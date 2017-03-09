.class public Lcom/buzzfeed/android/data/EnvironmentConfig;
.super Ljava/lang/Object;
.source "EnvironmentConfig.java"


# static fields
.field public static JSON_CACHE_INTERVAL:I

.field public static final TAG:Ljava/lang/String;

.field private static sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/data/EnvironmentConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->TAG:Ljava/lang/String;

    .line 26
    const v0, 0x1b7740

    sput v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->JSON_CACHE_INTERVAL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugLog(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    .line 202
    .local v0, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Base Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "Base SSL Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, "Base Static Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, "Ad Urls url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getAdUrlsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v2, "User Agreement Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUserAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, "Privacy Policy Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, "Ad Choices Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getAdChoicesUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/data/EnvironmentConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".debugLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private static ensureInitialization()V
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;

    if-nez v0, :cond_c

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need to call EnvironmentConfig.initialize() before using EnvironmentConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_c
    return-void
.end method

.method public static getABExperimentUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 168
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/Environment;->getABExperimentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdChoicesUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 180
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/Environment;->getAdChoicesUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdUrlsUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v4

    sget-object v5, Lcom/buzzfeed/toolkit/networking/Environment;->DEVELOPMENT:Lcom/buzzfeed/toolkit/networking/Environment;

    if-ne v4, v5, :cond_48

    const v0, 0x7f0901a4

    .line 193
    .local v0, "adPathResourceId":I
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v5

    iget-object v5, v5, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 195
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "locale":Ljava/lang/String;
    const-string v4, "country"

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 190
    .end local v0    # "adPathResourceId":I
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_48
    const v0, 0x7f0902c0

    goto :goto_b
.end method

.method public static getEdition(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/android/data/EnvironmentConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".getEdition"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "TAG":Ljava/lang/String;
    new-instance v3, Lcom/buzzfeed/android/data/preferences/EditionPreference;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/data/preferences/EditionPreference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "editionPreference":Lcom/buzzfeed/android/data/preferences/EditionPreference;
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/preferences/EditionPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "edition":Ljava/lang/String;
    const v7, 0x7f09023d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "defaultEdition":Ljava/lang/String;
    if-eqz v2, :cond_2d

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 91
    :cond_2d
    const-string v7, "Failed to retrieve edition, reverting to device language/country"

    invoke-static {v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "locale":Ljava/lang/String;
    const-string v7, "en-gb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    const-string v6, "en-uk"

    .line 96
    :cond_40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "editionValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4c
    array-length v7, v4

    if-ge v5, v7, :cond_5c

    .line 98
    aget-object v7, v4, v5

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    move-object v2, v6

    .line 104
    .end local v2    # "edition":Ljava/lang/String;
    .end local v4    # "editionValues":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "locale":Ljava/lang/String;
    :cond_58
    :goto_58
    return-object v2

    .line 97
    .restart local v2    # "edition":Ljava/lang/String;
    .restart local v4    # "editionValues":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "locale":Ljava/lang/String;
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 101
    :cond_5c
    const-string v7, "es"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    const-string v2, "es"

    goto :goto_58

    .line 102
    :cond_67
    const-string v2, "en-us"

    goto :goto_58
.end method

.method public static getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/Environment;->values()[Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironmentOrdinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized getEnvironmentOrdinal()I
    .registers 2

    .prologue
    .line 74
    const-class v1, Lcom/buzzfeed/android/data/EnvironmentConfig;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->ensureInitialization()V

    .line 75
    sget-object v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/ServerPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit v1

    return v0

    .line 74
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPrivacyPolicyUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 176
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/Environment;->getPrivacyPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlWithBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    .line 138
    .local v0, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    .line 127
    .local v0, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_13

    const-string p0, ""

    .end local p0    # "uri":Ljava/lang/String;
    :cond_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlWithStaticBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    .line 133
    .local v0, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserAgreementUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/Environment;->getUserAgreementUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeaverEdition(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "edition":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 161
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .end local v0    # "edition":Ljava/lang/String;
    :cond_1c
    return-object v0
.end method

.method public static getWeaverLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "edition":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 148
    const/4 v1, 0x0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v0    # "edition":Ljava/lang/String;
    :cond_1b
    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-class v1, Lcom/buzzfeed/android/data/EnvironmentConfig;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/data/preferences/ServerPreference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/data/preferences/ServerPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;

    .line 32
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setupEnvironments()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 33
    monitor-exit v1

    return-void

    .line 31
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 36
    const-class v1, Lcom/buzzfeed/android/data/EnvironmentConfig;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/data/preferences/ServerPreference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/data/preferences/ServerPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/buzzfeed/android/data/EnvironmentConfig;->sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;

    .line 37
    invoke-static {p1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setEnvironmentPreference(Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 38
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setupEnvironments()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 39
    monitor-exit v1

    return-void

    .line 36
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isProductionBuild()Z
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/Environment;->ordinal()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isProductionEnvironment()Z
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStageEnvironment()Z
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    .line 114
    .local v0, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->DEVELOPMENT:Lcom/buzzfeed/toolkit/networking/Environment;

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized setEnvironment(Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 3
    .param p0, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 49
    const-class v1, Lcom/buzzfeed/android/data/EnvironmentConfig;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->ensureInitialization()V

    .line 50
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setEnvironmentPreference(Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 51
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setupEnvironments()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 52
    monitor-exit v1

    return-void

    .line 49
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setEnvironmentPreference(Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 4
    .param p0, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/data/EnvironmentConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setEnvironmentPreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "TAG":Ljava/lang/String;
    sget-object v1, Lcom/buzzfeed/android/data/EnvironmentConfig;->sServerPreference:Lcom/buzzfeed/android/data/preferences/ServerPreference;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/Environment;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/preferences/ServerPreference;->setValue(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuzzFeed Environment set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static setupEnvironments()V
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 62
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->PROD:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->setEnvironment(Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;)V

    .line 63
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->PROD:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-static {v0}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->setEnvironment(Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;)V

    .line 70
    :goto_10
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_SERVICE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/spicerack/data/constant/Environment;->initBaseUrl(Ljava/lang/String;)V

    .line 71
    return-void

    .line 65
    :cond_1a
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->STAGE:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->setEnvironment(Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;)V

    .line 66
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-static {v0}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->setEnvironment(Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;)V

    goto :goto_10
.end method
