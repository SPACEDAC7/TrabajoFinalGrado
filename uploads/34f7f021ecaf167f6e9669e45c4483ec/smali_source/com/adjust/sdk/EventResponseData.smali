.class public Lcom/adjust/sdk/EventResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "EventResponseData.java"


# instance fields
.field public eventToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityPackage;)V
    .registers 4
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "event_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustEventFailure;
    .registers 3

    .prologue
    .line 29
    iget-boolean v1, p0, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-eqz v1, :cond_6

    .line 30
    const/4 v0, 0x0

    .line 41
    :goto_5
    return-object v0

    .line 33
    :cond_6
    new-instance v0, Lcom/adjust/sdk/AdjustEventFailure;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventFailure;-><init>()V

    .line 34
    .local v0, "failureResponseData":Lcom/adjust/sdk/AdjustEventFailure;
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->message:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->timestamp:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->adid:Ljava/lang/String;

    .line 37
    iget-boolean v1, p0, Lcom/adjust/sdk/EventResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->willRetry:Z

    .line 38
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->eventToken:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustEventSuccess;
    .registers 3

    .prologue
    .line 14
    iget-boolean v1, p0, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-nez v1, :cond_6

    .line 15
    const/4 v0, 0x0

    .line 25
    :goto_5
    return-object v0

    .line 18
    :cond_6
    new-instance v0, Lcom/adjust/sdk/AdjustEventSuccess;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventSuccess;-><init>()V

    .line 19
    .local v0, "successResponseData":Lcom/adjust/sdk/AdjustEventSuccess;
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->message:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->timestamp:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->adid:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->eventToken:Ljava/lang/String;

    goto :goto_5
.end method
