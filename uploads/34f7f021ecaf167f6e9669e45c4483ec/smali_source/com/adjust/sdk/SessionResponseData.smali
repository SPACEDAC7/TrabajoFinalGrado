.class public Lcom/adjust/sdk/SessionResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "SessionResponseData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;
    .registers 3

    .prologue
    .line 22
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-eqz v1, :cond_6

    .line 23
    const/4 v0, 0x0

    .line 33
    :goto_5
    return-object v0

    .line 26
    :cond_6
    new-instance v0, Lcom/adjust/sdk/AdjustSessionFailure;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionFailure;-><init>()V

    .line 27
    .local v0, "failureResponseData":Lcom/adjust/sdk/AdjustSessionFailure;
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 30
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 31
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_5
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustSessionSuccess;
    .registers 3

    .prologue
    .line 8
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-nez v1, :cond_6

    .line 9
    const/4 v0, 0x0

    .line 18
    :goto_5
    return-object v0

    .line 12
    :cond_6
    new-instance v0, Lcom/adjust/sdk/AdjustSessionSuccess;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionSuccess;-><init>()V

    .line 13
    .local v0, "successResponseData":Lcom/adjust/sdk/AdjustSessionSuccess;
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_5
.end method
