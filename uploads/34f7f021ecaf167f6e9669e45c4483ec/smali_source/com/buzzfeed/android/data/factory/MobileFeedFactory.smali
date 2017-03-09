.class public Lcom/buzzfeed/android/data/factory/MobileFeedFactory;
.super Ljava/lang/Object;
.source "MobileFeedFactory.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/ContentFactory;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;->mType:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public createBreakingBarContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    new-instance v0, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;-><init>()V

    .line 79
    .local v0, "content":Lcom/buzzfeed/toolkit/content/BreakingNewsBar;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/content/BreakingNewsBar;->parse(Lorg/json/JSONObject;)V

    .line 80
    return-object v0
.end method

.method public createBuzzAdContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuzzAd;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/BuzzAd;-><init>()V

    .line 67
    .local v0, "buzzAd":Lcom/buzzfeed/toolkit/content/BuzzAd;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/content/BuzzAd;->parse(Lorg/json/JSONObject;)V

    .line 68
    return-object v0
.end method

.method public createBuzzContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 55
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 56
    return-object v0
.end method

.method public parseContent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    :cond_8
    const/4 v0, 0x0

    .line 38
    :goto_9
    return-object v0

    .line 33
    :cond_a
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 34
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;->createBuzzAdContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    goto :goto_9

    .line 35
    :cond_1b
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 36
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;->createBreakingBarContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    goto :goto_9

    .line 38
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;->createBuzzContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    goto :goto_9
.end method

.method public parseType(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;->mType:Ljava/lang/String;

    return-object v0
.end method
