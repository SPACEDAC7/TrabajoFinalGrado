.class public Lcom/buzzfeed/analytics/model/GAEvent;
.super Ljava/lang/Object;
.source "GAEvent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 31
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/analytics/model/GAEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mCategory:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mAction:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mLabel:Ljava/lang/String;

    .line 27
    iput-wide p4, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mValue:J

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "ga_category"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mCategory:Ljava/lang/String;

    .line 18
    const-string v0, "ga_action"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mAction:Ljava/lang/String;

    .line 19
    const-string v0, "ga_label"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mLabel:Ljava/lang/String;

    .line 20
    const-string v0, "ga_value"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mValue:J

    .line 21
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/buzzfeed/analytics/model/GAEvent;->mValue:J

    return-wide v0
.end method
