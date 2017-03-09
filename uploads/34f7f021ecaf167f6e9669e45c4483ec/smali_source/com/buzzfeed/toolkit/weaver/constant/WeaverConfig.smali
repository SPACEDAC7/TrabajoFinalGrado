.class public Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;
.super Ljava/lang/Object;
.source "WeaverConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;
    }
.end annotation


# static fields
.field private static final BUZZFEED_DOMAIN_BASE:Ljava/lang/String; = "buzzfeed.com"

.field public static final CACHE_INTERVAL:I = 0x493e0

.field public static final HOME_FEED_PATH:Ljava/lang/String; = "home"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https://"

.field public static final NEWS_FEED_PATH:Ljava/lang/String; = "news"

.field private static final PROD_PREFIX:Ljava/lang/String; = "weaver-api."

.field public static final QUIZ_FEED_PATH:Ljava/lang/String; = "quiz"

.field public static final SHOW_FEED_PREFIX:Ljava/lang/String; = "shows-"

.field private static final STAGE_PREFIX:Ljava/lang/String; = "weaver-api-stage."

.field private static final TAG:Ljava/lang/String;

.field public static final TRENDING_FEED_PATH:Ljava/lang/String; = "trending"

.field public static final VIDEO_FEED_PATH:Ljava/lang/String; = "videos"

.field public static WEAVER_URL:Ljava/lang/String;

.field private static sEnvironment:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->STAGE:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->sEnvironment:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnvironment(Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;)V
    .registers 4
    .param p0, "environment"    # Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    .prologue
    .line 37
    sput-object p0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->sEnvironment:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    .line 38
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weaver Environment was set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->setEnvironmentUrls()V

    .line 40
    return-void
.end method

.method private static setEnvironmentUrls()V
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$1;->$SwitchMap$com$buzzfeed$toolkit$weaver$constant$WeaverConfig$Environment:[I

    sget-object v1, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->sEnvironment:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 56
    :goto_d
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weaver URL was set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->WEAVER_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 50
    :pswitch_28
    const-string v0, "https://weaver-api.buzzfeed.com"

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->WEAVER_URL:Ljava/lang/String;

    goto :goto_d

    .line 53
    :pswitch_2d
    const-string v0, "https://weaver-api-stage.buzzfeed.com"

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->WEAVER_URL:Ljava/lang/String;

    goto :goto_d

    .line 48
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2d
    .end packed-switch
.end method
