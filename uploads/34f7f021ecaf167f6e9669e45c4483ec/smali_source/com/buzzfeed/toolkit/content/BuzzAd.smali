.class public Lcom/buzzfeed/toolkit/content/BuzzAd;
.super Lcom/buzzfeed/toolkit/content/Buzz;
.source "BuzzAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J


# instance fields
.field private adUrl:Ljava/lang/String;

.field private isInternal:Z

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/toolkit/content/BuzzAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuzzAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->uuid:Ljava/util/UUID;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/BuzzAd;->setIsAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 27
    return-void
.end method


# virtual methods
.method public getAdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->adUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInternal()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->isInternal:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 39
    const-string v6, "buzz"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 40
    const-string v6, "buzz"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    .local v1, "buzzObject":Lorg/json/JSONObject;
    invoke-super {p0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/buzzfeed/toolkit/content/BuzzAd;->setJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 43
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/buzzfeed/toolkit/content/BuzzAd;->setLastUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 44
    const-string/jumbo v6, "user_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "userType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3d

    const-string v6, "f_partner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string v6, "f_ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 46
    iput-boolean v9, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->mIsBackfill:Z

    .line 61
    .end local v1    # "buzzObject":Lorg/json/JSONObject;
    .end local v5    # "userType":Ljava/lang/String;
    :cond_3d
    :goto_3d
    const-string v6, "ad_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "adUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b4

    .line 63
    sget-object v6, Lcom/buzzfeed/toolkit/content/BuzzAd;->TAG:Ljava/lang/String;

    const-string v7, "InlineAd is external"

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->adUrl:Ljava/lang/String;

    .line 65
    iput-boolean v8, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->isInternal:Z

    .line 71
    :goto_54
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/content/BuzzAd;->parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V

    .line 74
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/BuzzAd;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6b

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/BuzzAd;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 75
    :cond_6b
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/BuzzAd;->getContributors()Ljava/util/ArrayList;

    move-result-object v4

    .line 76
    .local v4, "contributors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/toolkit/content/Contributor;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_99

    .line 77
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/toolkit/content/Contributor;

    .line 78
    .local v3, "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Contributor;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/buzzfeed/toolkit/content/BuzzAd;->setSponsorDisplayName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Contributor;->getUserImages()Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_99

    .line 80
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Contributor;->getUserImages()Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/buzzfeed/toolkit/content/BuzzAd;->setSponsorUserImageUrl(Ljava/lang/String;)V

    .line 84
    .end local v3    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .end local v4    # "contributors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/toolkit/content/Contributor;>;"
    :cond_99
    return-void

    .line 56
    .end local v0    # "adUrl":Ljava/lang/String;
    :cond_9a
    const-string v6, "category_name"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "category":Ljava/lang/String;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b0

    const-string v6, "Advertiser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    iput-boolean v9, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->mIsBackfill:Z

    .line 59
    :cond_b0
    invoke-super {p0, p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    goto :goto_3d

    .line 67
    .end local v2    # "category":Ljava/lang/String;
    .restart local v0    # "adUrl":Ljava/lang/String;
    :cond_b4
    sget-object v6, Lcom/buzzfeed/toolkit/content/BuzzAd;->TAG:Ljava/lang/String;

    const-string v7, "InlineAd is internal"

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-boolean v9, p0, Lcom/buzzfeed/toolkit/content/BuzzAd;->isInternal:Z

    goto :goto_54
.end method
