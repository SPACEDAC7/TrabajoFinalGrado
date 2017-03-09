.class public Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;
.super Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;
.source "RandomUserAgentInterceptor.java"


# static fields
.field private static mRandomUserAgent:Ljava/lang/String;

.field private static final userAgentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->userAgentList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;-><init>()V

    .line 66
    sget-object v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->mRandomUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->mRandomUserAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    :cond_f
    invoke-static {}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->getRandomUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->mRandomUserAgent:Ljava/lang/String;

    .line 69
    :cond_15
    const-string v0, "User-agent"

    sget-object v1, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->mRandomUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private static getRandomUserAgent()Ljava/lang/String;
    .registers 6

    .prologue
    .line 82
    sget-object v2, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->userAgentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    .local v0, "len":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 84
    .local v1, "rnd":I
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->getUserAgent(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUserAgent(I)Ljava/lang/String;
    .registers 4
    .param p0, "num"    # I

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "userAgent":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->userAgentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, "len":I
    if-ltz p0, :cond_13

    if-ge p0, v0, :cond_13

    .line 76
    sget-object v2, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;->userAgentList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "userAgent":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 78
    .restart local v1    # "userAgent":Ljava/lang/String;
    :cond_13
    return-object v1
.end method
