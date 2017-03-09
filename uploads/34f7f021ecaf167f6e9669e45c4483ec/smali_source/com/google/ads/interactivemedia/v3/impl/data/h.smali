.class final Lcom/google/ads/interactivemedia/v3/impl/data/h;
.super Lcom/google/ads/interactivemedia/v3/impl/data/k;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/h$a;
    }
.end annotation


# instance fields
.field private final adTagParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final adTagUrl:Ljava/lang/String;

.field private final adsResponse:Ljava/lang/String;

.field private final apiKey:Ljava/lang/String;

.field private final assetKey:Ljava/lang/String;

.field private final attemptPreroll:Ljava/lang/Boolean;

.field private final companionSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final contentSourceId:Ljava/lang/String;

.field private final env:Ljava/lang/String;

.field private final extraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isTv:Ljava/lang/Boolean;

.field private final marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

.field private final msParameter:Ljava/lang/String;

.field private final network:Ljava/lang/String;

.field private final settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private final videoId:Ljava/lang/String;

.field private final videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/m$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/m$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;",
            "Lcom/google/ads/interactivemedia/v3/impl/h$b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/k;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    .line 57
    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    .line 58
    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    .line 59
    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    .line 60
    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 61
    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    .line 62
    iput-object p13, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    .line 63
    iput-object p14, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 64
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    .line 65
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    .line 66
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/m$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/h$1;)V
    .registers 19

    .prologue
    .line 12
    invoke-direct/range {p0 .. p17}, Lcom/google/ads/interactivemedia/v3/impl/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/m$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adTagParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    return-object v0
.end method

.method public adTagUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public adsResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    return-object v0
.end method

.method public apiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public assetKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    return-object v0
.end method

.method public attemptPreroll()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    return-object v0
.end method

.method public companionSlots()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    return-object v0
.end method

.method public contentSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public env()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-ne p1, p0, :cond_5

    .line 219
    :cond_4
    :goto_4
    return v0

    .line 199
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/k;

    if-eqz v2, :cond_1a6

    .line 200
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/k;

    .line 201
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    if-nez v2, :cond_b8

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adsResponse()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_15
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    if-nez v2, :cond_c6

    .line 202
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_1f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    if-nez v2, :cond_d4

    .line 203
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->assetKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_29
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    if-nez v2, :cond_e2

    .line 204
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->contentSourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_33
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    if-nez v2, :cond_f0

    .line 205
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_3d
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    if-nez v2, :cond_fe

    .line 206
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->apiKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_47
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    if-nez v2, :cond_10c

    .line 207
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_51
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    if-nez v2, :cond_11a

    .line 208
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagParameters()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_5b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    if-nez v2, :cond_128

    .line 209
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->env()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_65
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    if-nez v2, :cond_136

    .line 210
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->network()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_6f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    if-nez v2, :cond_144

    .line 211
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/m$a;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_79
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    if-nez v2, :cond_152

    .line 212
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->companionSlots()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_83
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    if-nez v2, :cond_160

    .line 213
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->extraParameters()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_8d
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v2, :cond_16e

    .line 214
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_97
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    if-nez v2, :cond_17c

    .line 215
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_a1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    if-nez v2, :cond_18a

    .line 216
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->isTv()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b5

    :goto_ab
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    if-nez v2, :cond_198

    .line 217
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->msParameter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_b5
    move v0, v1

    goto/16 :goto_4

    .line 201
    :cond_b8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adsResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_15

    .line 202
    :cond_c6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_1f

    .line 203
    :cond_d4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->assetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_29

    .line 204
    :cond_e2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->contentSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_33

    .line 205
    :cond_f0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_3d

    .line 206
    :cond_fe
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->apiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_47

    .line 207
    :cond_10c
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_51

    .line 208
    :cond_11a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_5b

    .line 209
    :cond_128
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->env()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_65

    .line 210
    :cond_136
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->network()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_6f

    .line 211
    :cond_144
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/m$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/m$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_79

    .line 212
    :cond_152
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->companionSlots()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_83

    .line 213
    :cond_160
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->extraParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_8d

    .line 214
    :cond_16e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_97

    .line 215
    :cond_17c
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_a1

    .line 216
    :cond_18a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->isTv()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_ab

    .line 217
    :cond_198
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->msParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto/16 :goto_4

    :cond_1a6
    move v0, v1

    .line 219
    goto/16 :goto_4
.end method

.method public extraParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const v3, 0xf4243

    const/4 v1, 0x0

    .line 224
    .line 226
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    if-nez v0, :cond_89

    move v0, v1

    :goto_9
    xor-int/2addr v0, v3

    .line 227
    mul-int v2, v0, v3

    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    if-nez v0, :cond_91

    move v0, v1

    :goto_11
    xor-int/2addr v0, v2

    .line 229
    mul-int v2, v0, v3

    .line 230
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    if-nez v0, :cond_99

    move v0, v1

    :goto_19
    xor-int/2addr v0, v2

    .line 231
    mul-int v2, v0, v3

    .line 232
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    if-nez v0, :cond_a1

    move v0, v1

    :goto_21
    xor-int/2addr v0, v2

    .line 233
    mul-int v2, v0, v3

    .line 234
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    if-nez v0, :cond_a9

    move v0, v1

    :goto_29
    xor-int/2addr v0, v2

    .line 235
    mul-int v2, v0, v3

    .line 236
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    if-nez v0, :cond_b1

    move v0, v1

    :goto_31
    xor-int/2addr v0, v2

    .line 237
    mul-int v2, v0, v3

    .line 238
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    if-nez v0, :cond_b9

    move v0, v1

    :goto_39
    xor-int/2addr v0, v2

    .line 239
    mul-int v2, v0, v3

    .line 240
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    if-nez v0, :cond_c1

    move v0, v1

    :goto_41
    xor-int/2addr v0, v2

    .line 241
    mul-int v2, v0, v3

    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    if-nez v0, :cond_c9

    move v0, v1

    :goto_49
    xor-int/2addr v0, v2

    .line 243
    mul-int v2, v0, v3

    .line 244
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    if-nez v0, :cond_d1

    move v0, v1

    :goto_51
    xor-int/2addr v0, v2

    .line 245
    mul-int v2, v0, v3

    .line 246
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    if-nez v0, :cond_d9

    move v0, v1

    :goto_59
    xor-int/2addr v0, v2

    .line 247
    mul-int v2, v0, v3

    .line 248
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    if-nez v0, :cond_e1

    move v0, v1

    :goto_61
    xor-int/2addr v0, v2

    .line 249
    mul-int v2, v0, v3

    .line 250
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    if-nez v0, :cond_e9

    move v0, v1

    :goto_69
    xor-int/2addr v0, v2

    .line 251
    mul-int v2, v0, v3

    .line 252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v0, :cond_f1

    move v0, v1

    :goto_71
    xor-int/2addr v0, v2

    .line 253
    mul-int v2, v0, v3

    .line 254
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    if-nez v0, :cond_f9

    move v0, v1

    :goto_79
    xor-int/2addr v0, v2

    .line 255
    mul-int v2, v0, v3

    .line 256
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    if-nez v0, :cond_101

    move v0, v1

    :goto_81
    xor-int/2addr v0, v2

    .line 257
    mul-int/2addr v0, v3

    .line 258
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    if-nez v2, :cond_109

    :goto_87
    xor-int/2addr v0, v1

    .line 259
    return v0

    .line 226
    :cond_89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    .line 228
    :cond_91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    .line 230
    :cond_99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_19

    .line 232
    :cond_a1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_21

    .line 234
    :cond_a9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_29

    .line 236
    :cond_b1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_31

    .line 238
    :cond_b9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_39

    .line 240
    :cond_c1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_41

    .line 242
    :cond_c9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_49

    .line 244
    :cond_d1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_51

    .line 246
    :cond_d9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/m$a;->hashCode()I

    move-result v0

    goto/16 :goto_59

    .line 248
    :cond_e1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_61

    .line 250
    :cond_e9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_69

    .line 252
    :cond_f1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_71

    .line 254
    :cond_f9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_79

    .line 256
    :cond_101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_81

    .line 258
    :cond_109
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_87
.end method

.method public isTv()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    return-object v0
.end method

.method public marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/h$b;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    return-object v0
.end method

.method public msParameter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    return-object v0
.end method

.method public network()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    return-object v0
.end method

.method public settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 22

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adsResponse:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->assetKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->contentSourceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->apiKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->attemptPreroll:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->adTagParameters:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->env:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->network:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->companionSlots:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParameters:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->isTv:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->msParameter:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xf3

    move/from16 v19, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "GsonAdsRequest{adsResponse="

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", adTagUrl="

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", assetKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentSourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apiKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attemptPreroll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adTagParameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", env="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", videoPlayActivation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", companionSlots="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extraParameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", marketAppInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msParameter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public videoId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    return-object v0
.end method
