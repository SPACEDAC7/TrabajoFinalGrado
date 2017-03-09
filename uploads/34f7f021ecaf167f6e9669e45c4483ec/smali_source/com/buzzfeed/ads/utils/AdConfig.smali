.class public Lcom/buzzfeed/ads/utils/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEST_AD_TYPE_ADOPS_GIRAFFE:I = 0x3

.field public static final TEST_AD_TYPE_DEBUG:I = 0x1

.field public static final TEST_AD_TYPE_GIRAFFE:I = 0x2

.field public static final TEST_AD_TYPE_NONE:I

.field private static advertisingId:Ljava/lang/String;

.field private static optOutInterestAds:Z

.field private static testAdType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/buzzfeed/ads/utils/AdConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/utils/AdConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/buzzfeed/ads/utils/AdConfig;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestAdType()I
    .registers 1

    .prologue
    .line 26
    sget v0, Lcom/buzzfeed/ads/utils/AdConfig;->testAdType:I

    return v0
.end method

.method public static isOptOutInterestAds()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/buzzfeed/ads/utils/AdConfig;->optOutInterestAds:Z

    return v0
.end method

.method public static setAdvertisingId(Ljava/lang/String;)V
    .registers 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/ads/utils/AdConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setAdvertisingId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "TAG":Ljava/lang/String;
    sput-object p0, Lcom/buzzfeed/ads/utils/AdConfig;->advertisingId:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdvertisingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/ads/utils/AdConfig;->advertisingId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static setOptOutInterestAds(Z)V
    .registers 4
    .param p0, "optOut"    # Z

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/ads/utils/AdConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setOptOutInterestAds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "TAG":Ljava/lang/String;
    sput-boolean p0, Lcom/buzzfeed/ads/utils/AdConfig;->optOutInterestAds:Z

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOptOutInterestAds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/buzzfeed/ads/utils/AdConfig;->optOutInterestAds:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static setTestAdType(I)V
    .registers 4
    .param p0, "testAdType"    # I

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/ads/utils/AdConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setTestAdType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "TAG":Ljava/lang/String;
    sput p0, Lcom/buzzfeed/ads/utils/AdConfig;->testAdType:I

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad testing set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
