.class public Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;
.super Ljava/lang/Object;
.source "SpicerackConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;
    }
.end annotation


# static fields
.field private static final BUZZFEED_DOMAIN_BASE:Ljava/lang/String; = "buzzfeed.com"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https://"

.field private static final PROD_PREFIX:Ljava/lang/String; = "spicerack."

.field public static SPICERACK_URL:Ljava/lang/String; = null

.field private static final STAGE_PREFIX:Ljava/lang/String; = "spicerack-stage."

.field private static final TAG:Ljava/lang/String;

.field private static sEnvironment:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-class v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->sEnvironment:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnvironment(Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;)V
    .registers 4
    .param p0, "environment"    # Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    .prologue
    .line 24
    sput-object p0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->sEnvironment:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    .line 25
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spicerack Environment was set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->setEnvironmentUrls()V

    .line 27
    return-void
.end method

.method private static setEnvironmentUrls()V
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$1;->$SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment:[I

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->sEnvironment:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 43
    :goto_d
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spicerack URL was set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->SPICERACK_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 37
    :pswitch_28
    const-string v0, "https://spicerack.buzzfeed.com"

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->SPICERACK_URL:Ljava/lang/String;

    goto :goto_d

    .line 40
    :pswitch_2d
    const-string v0, "https://spicerack-stage.buzzfeed.com"

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;->SPICERACK_URL:Ljava/lang/String;

    goto :goto_d

    .line 35
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2d
    .end packed-switch
.end method
