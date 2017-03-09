.class public Lcom/buzzfeed/ads/data/VideoApiClient;
.super Ljava/lang/Object;
.source "VideoApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;
    }
.end annotation


# static fields
.field private static final PRODUCTION:Ljava/lang/String; = "http://videoapp-api-ng.buzzfeed.com/v2/videos/"

.field private static final STAGE:Ljava/lang/String; = "http://videoapp-api-stage.buzzfeed.com/v2/videos/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/ads/data/VideoApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/data/VideoApiClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/buzzfeed/ads/data/VideoApiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideo(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;Landroid/content/Context;I)V
    .registers 7
    .param p0, "listener"    # Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoId"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/buzzfeed/ads/data/VideoServiceHelper;

    invoke-direct {v0, p1}, Lcom/buzzfeed/ads/data/VideoServiceHelper;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "mServiceHelper":Lcom/buzzfeed/ads/data/VideoServiceHelper;
    new-instance v1, Lcom/buzzfeed/ads/data/VideoApiClient$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/ads/data/VideoApiClient$1;-><init>(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;)V

    .line 50
    .local v1, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://videoapp-api-ng.buzzfeed.com/v2/videos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/buzzfeed/ads/data/VideoServiceHelper;->loadAdUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 51
    return-void
.end method

.method static parseResponse(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;Ljava/lang/String;)V
    .registers 6
    .param p0, "listener"    # Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/buzzfeed/ads/data/VideoResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/ads/data/VideoResponse;

    .line 57
    .local v1, "video":Lcom/buzzfeed/ads/data/VideoResponse;
    if-eqz v1, :cond_13

    invoke-interface {p0, v1}, Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;->onResponse(Lcom/buzzfeed/ads/data/VideoResponse;)V

    .line 63
    .end local v1    # "video":Lcom/buzzfeed/ads/data/VideoResponse;
    :goto_12
    return-void

    .line 58
    .restart local v1    # "video":Lcom/buzzfeed/ads/data/VideoResponse;
    :cond_13
    const-string v2, "Error parsing video response"

    invoke-interface {p0, v2}, Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;->onErrorResponse(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_12

    .line 60
    .end local v1    # "video":Lcom/buzzfeed/ads/data/VideoResponse;
    :catch_19
    move-exception v0

    .line 61
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;->onErrorResponse(Ljava/lang/String;)V

    goto :goto_12
.end method
