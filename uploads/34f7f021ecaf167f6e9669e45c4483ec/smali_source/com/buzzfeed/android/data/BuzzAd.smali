.class public Lcom/buzzfeed/android/data/BuzzAd;
.super Lcom/buzzfeed/android/data/Buzz;
.source "BuzzAd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/BuzzAd$SponsorType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x3e81d6c74a597145L


# instance fields
.field private adUrl:Ljava/lang/String;

.field private clickTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impressionTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isInternal:Z

.field private referer:Ljava/lang/String;

.field private sponsorType:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/data/BuzzAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/BuzzAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Ad:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    iput-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->sponsorType:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzAd;->setIsAd(Z)Lcom/buzzfeed/android/data/Buzz;

    .line 28
    return-void
.end method


# virtual methods
.method public getAdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->adUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->clickTracks:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionTrackUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->impressionTracks:Ljava/util/List;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->referer:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorType()Lcom/buzzfeed/android/data/BuzzAd$SponsorType;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->sponsorType:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    return-object v0
.end method

.method public isInternal()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/BuzzAd;->isInternal:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v3, "buzz"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 83
    const-string v3, "buzz"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    .local v1, "buzzObject":Lorg/json/JSONObject;
    invoke-super {p0, v1}, Lcom/buzzfeed/android/data/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzAd;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 86
    const-string/jumbo v3, "user_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "userType":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    .line 88
    const-string v3, "f_edit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 89
    sget-object v3, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Staff:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzAd;->setSponsorType(Lcom/buzzfeed/android/data/BuzzAd$SponsorType;)V

    .line 97
    .end local v1    # "buzzObject":Lorg/json/JSONObject;
    .end local v2    # "userType":Ljava/lang/String;
    :cond_2f
    :goto_2f
    const-string v3, "ad_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "adUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_67

    .line 99
    sget-object v3, Lcom/buzzfeed/android/data/BuzzAd;->TAG:Ljava/lang/String;

    const-string v4, "InlineAd is external"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzAd;->setAdUrl(Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzAd;->setInternal(Z)V

    .line 107
    :goto_49
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/BuzzAd;->parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V

    .line 108
    return-void

    .line 90
    .end local v0    # "adUrl":Ljava/lang/String;
    .restart local v1    # "buzzObject":Lorg/json/JSONObject;
    .restart local v2    # "userType":Ljava/lang/String;
    :cond_4d
    const-string v3, "f_partner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 91
    sget-object v3, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Partner:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzAd;->setSponsorType(Lcom/buzzfeed/android/data/BuzzAd$SponsorType;)V

    goto :goto_2f

    .line 94
    .end local v1    # "buzzObject":Lorg/json/JSONObject;
    .end local v2    # "userType":Ljava/lang/String;
    :cond_5b
    const-string v3, "campaignid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 95
    invoke-super {p0, p1}, Lcom/buzzfeed/android/data/Buzz;->parse(Lorg/json/JSONObject;)V

    goto :goto_2f

    .line 103
    .restart local v0    # "adUrl":Ljava/lang/String;
    :cond_67
    sget-object v3, Lcom/buzzfeed/android/data/BuzzAd;->TAG:Ljava/lang/String;

    const-string v4, "InlineAd is internal"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzAd;->setInternal(Z)V

    goto :goto_49
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "adUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->adUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setClickTrackUrls(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "clickTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->clickTracks:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setImpressionTrackUrls(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "impressionTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->impressionTracks:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setInternal(Z)V
    .registers 2
    .param p1, "isInternal"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->isInternal:Z

    .line 46
    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .registers 2
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->referer:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSponsorType(Lcom/buzzfeed/android/data/BuzzAd$SponsorType;)V
    .registers 2
    .param p1, "sponsorType"    # Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzAd;->sponsorType:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    .line 78
    return-void
.end method
