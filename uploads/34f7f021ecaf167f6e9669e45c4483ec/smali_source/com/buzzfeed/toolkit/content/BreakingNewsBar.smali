.class public Lcom/buzzfeed/toolkit/content/BreakingNewsBar;
.super Ljava/lang/Object;
.source "BreakingNewsBar.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BreakingNewsContent;


# instance fields
.field private content:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field protected id:Ljava/lang/String;

.field private twitterHandle:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsAlert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->twitterHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 21
    return-void
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 7
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 25
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->id:Ljava/lang/String;

    .line 26
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->content:Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->userId:Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "twitter_handle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->twitterHandle:Ljava/lang/String;

    .line 30
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "createdStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 32
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->createdAt:Ljava/util/Date;

    .line 34
    :cond_3d
    return-void
.end method
