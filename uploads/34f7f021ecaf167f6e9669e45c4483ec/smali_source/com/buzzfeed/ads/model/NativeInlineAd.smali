.class public Lcom/buzzfeed/ads/model/NativeInlineAd;
.super Lcom/buzzfeed/toolkit/content/BuzzAd;
.source "NativeInlineAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static random:Ljava/util/Random; = null

.field private static final serialVersionUID:J = -0x2f3f9806967beb81L


# instance fields
.field private transient mDfpAd:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/buzzfeed/ads/model/NativeInlineAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/model/NativeInlineAd;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/buzzfeed/ads/model/NativeInlineAd;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/BuzzAd;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/ads/model/NativeInlineAd;->setInlineAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 36
    return-void
.end method

.method private selectRandomIndex(II)I
    .registers 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/buzzfeed/ads/model/NativeInlineAd;->random:Ljava/util/Random;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "Advertiser"

    return-object v0
.end method

.method public getDfpAd()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/ads/model/NativeInlineAd;->mDfpAd:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    return-object v0
.end method

.method public loadAdFromJSON(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/ads/model/NativeInlineAd;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".loadAdFromJSON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "TAG":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inline ad JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v4, "buzzes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 42
    .local v3, "buzzes":Lorg/json/JSONArray;
    if-eqz v3, :cond_4a

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/ads/model/NativeInlineAd;->selectRandomIndex(II)I

    move-result v2

    .line 44
    .local v2, "buzzIdx":I
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    .local v1, "buzzDataObj":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/buzzfeed/ads/model/NativeInlineAd;->parse(Lorg/json/JSONObject;)V

    .line 50
    .end local v1    # "buzzDataObj":Lorg/json/JSONObject;
    .end local v2    # "buzzIdx":I
    :goto_49
    return-void

    .line 48
    :cond_4a
    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/model/NativeInlineAd;->parse(Lorg/json/JSONObject;)V

    goto :goto_49
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 2
    .param p1, "dfpAd"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/buzzfeed/ads/model/NativeInlineAd;->mDfpAd:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .line 26
    return-void
.end method
