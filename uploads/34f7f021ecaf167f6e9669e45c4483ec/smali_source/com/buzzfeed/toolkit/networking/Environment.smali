.class public final enum Lcom/buzzfeed/toolkit/networking/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/networking/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final COUNTRY_PARAM:Ljava/lang/String; = "country"

.field public static final enum DEVELOPMENT:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA01:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA02:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA03:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA04:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA05:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum QA06:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum STAGE:Lcom/buzzfeed/toolkit/networking/Environment;

.field public static final enum STAGE02:Lcom/buzzfeed/toolkit/networking/Environment;


# instance fields
.field private final AB_EXPERIMENT_URL:Ljava/lang/String;

.field private final AD_CHOICES_URL:Ljava/lang/String;

.field public final BASE_SERVICE_URL:Ljava/lang/String;

.field public final BASE_STATIC_URL:Ljava/lang/String;

.field public final BASE_URL:Ljava/lang/String;

.field public final BUZZFEED_ANDROID_DOMAIN:Ljava/lang/String;

.field private final FEED_LIST_URL:Ljava/lang/String;

.field private final PRIVACY_POLICY_URL:Ljava/lang/String;

.field private final USER_AGREEMENT_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v1, "PRODUCTION"

    const-string v3, "http://www.buzzfeed.com"

    const-string v4, "https://www.buzzfeed.com"

    const-string v5, "https://webappstatic.buzzfeed.com"

    const-string v6, "android."

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 18
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "DEVELOPMENT"

    const-string v6, "http://dev.buzzfeed.com/bf2"

    const-string v7, "http://dev.buzzfeed.com/bf2"

    const-string v8, "https://webappstatic-stage.buzzfeed.com"

    const-string v9, "dev.android."

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->DEVELOPMENT:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 23
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "STAGE"

    const-string v6, "http://stage.buzzfeed.com"

    const-string v7, "https://stage.buzzfeed.com"

    const-string v8, "https://webappstatic-stage.buzzfeed.com"

    const-string v9, "stage.android."

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->STAGE:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 28
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "STAGE02"

    const-string v6, "http://stage02.buzzfeed.com"

    const-string v7, "https://stage02.buzzfeed.com"

    const-string v8, "https://webappstatic-stage02.buzzfeed.com"

    const-string v9, "stage02.android."

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->STAGE02:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 33
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA01"

    const-string v6, "http://qa01.buzzfeed.com"

    const-string v7, "https://qa01.buzzfeed.com"

    const-string v8, "https://webappstatic-qa01.buzzfeed.com"

    const-string v9, "qa01.android."

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA01:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 38
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA02"

    const/4 v5, 0x5

    const-string v6, "http://qa02.buzzfeed.com"

    const-string v7, "https://qa02.buzzfeed.com"

    const-string v8, "https://webappstatic-qa02.buzzfeed.com"

    const-string v9, "qa02.android."

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA02:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 43
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA03"

    const/4 v5, 0x6

    const-string v6, "http://qa03.buzzfeed.com"

    const-string v7, "https://qa03.buzzfeed.com"

    const-string v8, "https://webappstatic-qa03.buzzfeed.com"

    const-string v9, "qa03.android."

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA03:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 48
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA04"

    const/4 v5, 0x7

    const-string v6, "http://qa04.buzzfeed.com"

    const-string v7, "https://qa04.buzzfeed.com"

    const-string v8, "https://webappstatic-qa04.buzzfeed.com"

    const-string v9, "qa04.android."

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA04:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 53
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA05"

    const/16 v5, 0x8

    const-string v6, "http://qa05.buzzfeed.com"

    const-string v7, "https://qa05.buzzfeed.com"

    const-string v8, "https://webappstatic-qa05.buzzfeed.com"

    const-string v9, "qa05.android."

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA05:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 58
    new-instance v3, Lcom/buzzfeed/toolkit/networking/Environment;

    const-string v4, "QA06"

    const/16 v5, 0x9

    const-string v6, "http://qa06.buzzfeed.com"

    const-string v7, "https://qa06.buzzfeed.com"

    const-string v8, "https://webappstatic-qa06.buzzfeed.com"

    const-string v9, "qa06.android."

    invoke-direct/range {v3 .. v9}, Lcom/buzzfeed/toolkit/networking/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/buzzfeed/toolkit/networking/Environment;->QA06:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/buzzfeed/toolkit/networking/Environment;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->DEVELOPMENT:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v1, v0, v10

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->STAGE:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v1, v0, v11

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->STAGE02:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v1, v0, v12

    sget-object v1, Lcom/buzzfeed/toolkit/networking/Environment;->QA01:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/toolkit/networking/Environment;->QA02:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/toolkit/networking/Environment;->QA03:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/toolkit/networking/Environment;->QA04:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/toolkit/networking/Environment;->QA05:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/toolkit/networking/Environment;->QA06:Lcom/buzzfeed/toolkit/networking/Environment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/toolkit/networking/Environment;->$VALUES:[Lcom/buzzfeed/toolkit/networking/Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "baseServiceUrl"    # Ljava/lang/String;
    .param p5, "baseStaticUrl"    # Ljava/lang/String;
    .param p6, "baseDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BUZZFEED_ANDROID_DOMAIN:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/about/useragreement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->USER_AGREEMENT_URL:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/about/privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->PRIVACY_POLICY_URL:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/about/privacy#adchoices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->AD_CHOICES_URL:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_SERVICE_URL:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/static/mobile/js/bf-android-ab-experiments.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->AB_EXPERIMENT_URL:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/static/mobile/js/feed.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->FEED_LIST_URL:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static getEnvironmentWithPosition(I)Lcom/buzzfeed/toolkit/networking/Environment;
    .registers 2
    .param p0, "pos"    # I

    .prologue
    .line 117
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/Environment;->values()[Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/Environment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/Environment;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/networking/Environment;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/buzzfeed/toolkit/networking/Environment;->$VALUES:[Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/networking/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/networking/Environment;

    return-object v0
.end method


# virtual methods
.method public getABExperimentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->AB_EXPERIMENT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getAdChoicesUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->AD_CHOICES_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedListUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "edition"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 144
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->FEED_LIST_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "country"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->FEED_LIST_URL:Ljava/lang/String;

    goto :goto_1a
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->PRIVACY_POLICY_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgreementUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 122
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->USER_AGREEMENT_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "country"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/Environment;->USER_AGREEMENT_URL:Ljava/lang/String;

    goto :goto_1a
.end method
