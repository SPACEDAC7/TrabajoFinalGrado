.class public Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
.super Ljava/lang/Object;
.source "BuffetNativeAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;,
        Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;
    }
.end annotation


# static fields
.field private static final AD_BUZZ_URL_KEY:Ljava/lang/String; = "ad_buzz_url"

.field private static final DFP_STORY:Ljava/lang/String; = "/story"

.field private static final DFP_TEMPLATE_ID:Ljava/lang/String; = "10178413"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

.field public adPositions:[I

.field protected final mAdServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

.field private final mAdTag:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCorrelator:Lcom/google/android/gms/ads/Correlator;

.field private final mLanguagePath:Ljava/lang/String;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adTag"    # Ljava/lang/String;
    .param p3, "edition"    # Ljava/lang/String;
    .param p4, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 64
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAdService()Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mAdServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mAdTag:Ljava/lang/String;

    .line 67
    invoke-static {p3}, Lcom/buzzfeed/ads/utils/AdUtils;->getLanguagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mLanguagePath:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mVersionCode:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/google/android/gms/ads/Correlator;

    invoke-direct {v0}, Lcom/google/android/gms/ads/Correlator;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mCorrelator:Lcom/google/android/gms/ads/Correlator;

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mAdServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->gzip()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Lorg/json/JSONObject;)Lcom/buzzfeed/ads/model/NativeInlineAd;
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    .param p1, "x1"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->buildNativeInlineAd(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Lorg/json/JSONObject;)Lcom/buzzfeed/ads/model/NativeInlineAd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdBackfillList(Landroid/content/Context;)V

    return-void
.end method

.method private buildNativeInlineAd(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Lorg/json/JSONObject;)Lcom/buzzfeed/ads/model/NativeInlineAd;
    .registers 4
    .param p1, "nativeAd"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .param p2, "buzzData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/buzzfeed/ads/model/NativeInlineAd;

    invoke-direct {v0}, Lcom/buzzfeed/ads/model/NativeInlineAd;-><init>()V

    .line 209
    .local v0, "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/model/NativeInlineAd;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    .line 210
    invoke-virtual {v0, p2}, Lcom/buzzfeed/ads/model/NativeInlineAd;->loadAdFromJSON(Lorg/json/JSONObject;)V

    .line 211
    return-object v0
.end method

.method private getBaseBuzzAd()Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 4

    .prologue
    .line 314
    new-instance v0, Lcom/buzzfeed/ads/model/NativeInlineAd;

    invoke-direct {v0}, Lcom/buzzfeed/ads/model/NativeInlineAd;-><init>()V

    .line 315
    .local v0, "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v1
.end method

.method private loadAdBackfillList(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    :try_start_0
    const-string v8, "ad_backfill.json"

    invoke-static {p1, v8}, Lcom/buzzfeed/toolkit/util/EZUtil;->readStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 322
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "ad_backfill"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 323
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_73

    .line 324
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 325
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 326
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0, v7}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 327
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v8, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 328
    .local v2, "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 329
    iget-object v8, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v8, v2}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 323
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 331
    :cond_3d
    sget-object v8, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flow was not valid! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_55} :catch_74

    goto :goto_3a

    .line 334
    .end local v0    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v3    # "i":I
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_56
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    :goto_57
    sget-object v8, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing ad backfill JSON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_73
    return-void

    .line 334
    :catch_74
    move-exception v1

    goto :goto_57
.end method

.method private startLoadBackfillTask(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    .prologue
    .line 285
    new-instance v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;

    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 290
    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    return-void
.end method


# virtual methods
.method protected getAdIndex(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 301
    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 305
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 300
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public initializeAdPositions(Lcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 11
    .param p1, "flowItems"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    const/4 v8, 0x0

    .line 236
    invoke-static {p1}, Lcom/buzzfeed/ads/utils/AdUtils;->hasBreakingBar(Lcom/buzzfeed/toolkit/content/FlowList;)Z

    move-result v1

    .line 237
    .local v1, "hasBreaking":Z
    invoke-static {p1}, Lcom/buzzfeed/ads/utils/AdUtils;->hasFeatured(Lcom/buzzfeed/toolkit/content/FlowList;)Z

    move-result v2

    .line 238
    .local v2, "hasFeatured":Z
    invoke-static {p1}, Lcom/buzzfeed/ads/utils/AdUtils;->hasVideoAd(Lcom/buzzfeed/toolkit/content/FlowList;)Z

    move-result v3

    .line 241
    .local v3, "hasVideoAd":Z
    const/4 v5, 0x0

    .line 242
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 243
    .local v4, "index":I
    sget v0, Lcom/buzzfeed/ads/R$array;->ad_positions:I

    .line 244
    .local v0, "arrayResId":I
    iget-object v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    .line 246
    if-eqz v1, :cond_21

    add-int/lit8 v5, v5, 0x1

    .line 247
    :cond_21
    if-eqz v2, :cond_25

    add-int/lit8 v5, v5, 0x1

    .line 249
    :cond_25
    if-eqz v3, :cond_34

    .line 252
    iget-object v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    iget-object v7, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    aget v7, v7, v8

    add-int/2addr v7, v5

    aput v7, v6, v8

    .line 254
    add-int/lit8 v5, v5, 0x1

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 260
    :cond_34
    :goto_34
    iget-object v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    array-length v6, v6

    if-ge v4, v6, :cond_45

    .line 261
    iget-object v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    iget-object v7, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    aget v7, v7, v4

    add-int/2addr v7, v5

    aput v7, v6, v4

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 263
    :cond_45
    return-void
.end method

.method public insertBlankAds(ILcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 9
    .param p1, "numExistingItems"    # I
    .param p2, "newItems"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    if-nez v2, :cond_7

    .line 222
    invoke-virtual {p0, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->initializeAdPositions(Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 225
    :cond_7
    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adPositions:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_23

    aget v0, v3, v2

    .line 228
    .local v0, "adPosition":I
    sub-int v1, v0, p1

    .line 229
    .local v1, "adjustedAdPosition":I
    if-le v0, p1, :cond_20

    invoke-virtual {p2}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v5

    if-gt v1, v5, :cond_20

    .line 230
    invoke-direct {p0}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->getBaseBuzzAd()Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 225
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 233
    .end local v0    # "adPosition":I
    .end local v1    # "adjustedAdPosition":I
    :cond_23
    return-void
.end method

.method public loadAd(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".loadAd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "TAG":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    .local v4, "startTime":J
    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->getAdIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "currentStory":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/buzzfeed/ads/utils/AdConfig;->getTestAdType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/ads/utils/AdUtils;->buildIuBody(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mLanguagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mAdTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/story"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "adId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Call Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v9, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0, v7}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .local v9, "builder":Lcom/google/android/gms/ads/AdLoader$Builder;
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mCorrelator:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withCorrelator(Lcom/google/android/gms/ads/Correlator;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    const-string v1, "10178413"

    new-instance v2, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    invoke-direct {v2, p0, v6, p2, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Ljava/lang/String;Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;I)V

    new-instance v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$2;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;)V

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 152
    new-instance v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;J)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v8

    .line 176
    .local v8, "adLoader":Lcom/google/android/gms/ads/AdLoader;
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string v1, "app"

    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mVersionCode:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 176
    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 179
    return-void
.end method

.method protected loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    .prologue
    .line 273
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->startLoadBackfillTask(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    .line 282
    :cond_b
    :goto_b
    return-void

    .line 276
    :cond_c
    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->getAdIndex(I)I

    move-result v1

    .line 277
    .local v1, "adIndex":I
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v2

    if-le v2, v1, :cond_b

    .line 278
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/toolkit/content/FlowList;->get(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    .line 279
    .local v0, "adFlowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    if-eqz v0, :cond_b

    invoke-interface {p2, p1, v0}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;->onAdLoaded(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    goto :goto_b
.end method

.method public registerClick(Lcom/buzzfeed/toolkit/content/BuzzAd;)V
    .registers 5
    .param p1, "buzzAd"    # Lcom/buzzfeed/toolkit/content/BuzzAd;

    .prologue
    .line 194
    move-object v0, p1

    check-cast v0, Lcom/buzzfeed/ads/model/NativeInlineAd;

    .line 195
    .local v0, "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    invoke-virtual {v0}, Lcom/buzzfeed/ads/model/NativeInlineAd;->getDfpAd()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object v1

    .line 196
    .local v1, "dfpAd":Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    if-eqz v1, :cond_e

    const-string v2, "ad_buzz_url"

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->performClick(Ljava/lang/String;)V

    .line 197
    :cond_e
    return-void
.end method

.method public resetCorrelator()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mCorrelator:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mCorrelator:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->reset()V

    .line 187
    :cond_9
    return-void
.end method
