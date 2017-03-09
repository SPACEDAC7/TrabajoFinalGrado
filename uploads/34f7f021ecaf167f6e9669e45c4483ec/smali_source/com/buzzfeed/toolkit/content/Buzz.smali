.class public Lcom/buzzfeed/toolkit/content/Buzz;
.super Ljava/lang/Object;
.source "Buzz.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/AdContent;
.implements Lcom/buzzfeed/toolkit/content/PostContent;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/content/Buzz$BulletedDekParser;,
        Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;,
        Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;,
        Lcom/buzzfeed/toolkit/content/Buzz$PageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J


# instance fields
.field private allowContributions:Z

.field private badges:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private bookmarked:J

.field private bulletedDekHtml:Ljava/lang/String;

.field private bulletedDeks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bylinePrefix:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private contributors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/Contributor;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private editUpdated:Ljava/util/Date;

.field private flags:Ljava/lang/String;

.field private form:Ljava/lang/String;

.field private headerBlurb:Ljava/lang/String;

.field private headerName:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field private imageUrlBig:Ljava/lang/String;

.field private imageUrlDblBig:Ljava/lang/String;

.field private imageUrlDblWide:Ljava/lang/String;

.field private imageUrlSmall:Ljava/lang/String;

.field private imageUrlStandard:Ljava/lang/String;

.field private imageUrlWide:Ljava/lang/String;

.field private impressions:I

.field private isAd:Z

.field private isInlineAd:Z

.field private isInternal:Z

.field private json:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private lastUpdated:Ljava/util/Date;

.field private link:Ljava/lang/String;

.field protected mIsBackfill:Z

.field private metaVertical:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private numComments:I

.field private oid:Ljava/lang/String;

.field private ouserid:Ljava/lang/String;

.field private pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

.field private pageWidth:Ljava/lang/String;

.field private poundHash:Ljava/lang/String;

.field private splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

.field private splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

.field private splashTextSize:Ljava/lang/String;

.field private sponsorDisplayName:Ljava/lang/String;

.field private sponsorUserImageUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private subbuzzs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private title:Ljava/lang/String;

.field private trackUri:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private utmTerm:Ljava/lang/String;

.field private viral:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/Buzz;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    .line 85
    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    .line 86
    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    .line 87
    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    .line 103
    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->mIsBackfill:Z

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    .line 116
    return-void
.end method

.method public static createBuzzFromId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1346
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 1347
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0, p0}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1348
    return-object v0
.end method

.method private hasContributor(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1333
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/Contributor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 1336
    :goto_1c
    return v1

    .line 1332
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1336
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1427
    const-string/jumbo v0, "top left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1428
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    .line 1434
    :goto_b
    return-object v0

    .line 1429
    :cond_c
    const-string/jumbo v0, "top right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1430
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    goto :goto_b

    .line 1431
    :cond_18
    const-string v0, "bottom left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1432
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    goto :goto_b

    .line 1434
    :cond_23
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    goto :goto_b
.end method

.method private parsePageType(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$PageType;
    .registers 3
    .param p1, "pageType"    # Ljava/lang/String;

    .prologue
    .line 1453
    const-string v0, "list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1454
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->list:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    .line 1466
    :goto_a
    return-object v0

    .line 1455
    :cond_b
    const-string v0, "list_countdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1456
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->listCountDown:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a

    .line 1457
    :cond_16
    const-string v0, "list_countup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1458
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->listCountUp:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a

    .line 1459
    :cond_21
    const-string v0, "article"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1460
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->article:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a

    .line 1461
    :cond_2c
    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1462
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->longPost:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a

    .line 1463
    :cond_37
    const-string v0, "breaking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1464
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->breaking:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a

    .line 1466
    :cond_42
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->longPost:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    goto :goto_a
.end method

.method private parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1439
    const-string v0, "light-text-on-dark-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1440
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    .line 1449
    :goto_a
    return-object v0

    .line 1441
    :cond_b
    const-string v0, "light-text-on-no-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1442
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->LightTextNoTransparency:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1443
    :cond_16
    const-string v0, "dark-text-on-light-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1444
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1445
    :cond_21
    const-string v0, "dark-text-on-no-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1446
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1449
    :cond_2c
    sget-object v0, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    goto :goto_a
.end method

.method private parseUri(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 1318
    const-string v0, "campaign_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1319
    const-string v0, "campaign_uri"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1329
    :goto_11
    return-void

    .line 1322
    :cond_12
    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1323
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "username"

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    goto :goto_11

    .line 1326
    :cond_42
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    goto :goto_11
.end method

.method private spliceBrackets(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/toolkit/content/Buzz;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".spliceBrackets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1314
    :cond_1e
    :goto_1e
    return-object v2

    .line 1307
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v1, "ans":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1309
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f .. :try_end_34} :catch_36

    move-result-object v2

    goto :goto_1e

    .line 1311
    .end local v1    # "ans":Ljava/lang/StringBuffer;
    :catch_36
    move-exception v3

    goto :goto_1e
.end method


# virtual methods
.method public clone()Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 5

    .prologue
    .line 705
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 706
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    .line 707
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    .line 708
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    .line 709
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    .line 710
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    .line 712
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    .line 713
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    .line 714
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    .line 715
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    .line 716
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    .line 717
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    .line 718
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    .line 719
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    .line 720
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    .line 721
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    .line 722
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    .line 723
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    .line 724
    iget-wide v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    iput-wide v2, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    .line 725
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    .line 727
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    .line 728
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 730
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    .line 732
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    .line 737
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setTimestamp(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 738
    iget v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    iput v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    .line 739
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    .line 740
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    .line 743
    iget-wide v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->viral:J

    iput-wide v2, v0, Lcom/buzzfeed/toolkit/content/Buzz;->viral:J

    .line 745
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    .line 746
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    iput-boolean v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    .line 747
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    iput-boolean v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    .line 748
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    iput-boolean v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    .line 749
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    iput-boolean v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    .line 750
    iget v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    iput v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    .line 752
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    .line 755
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    .line 757
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    .line 758
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    .line 759
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    .line 760
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->clone()Lcom/buzzfeed/toolkit/content/Buzz;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 766
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 865
    :cond_5
    :goto_5
    return v2

    .line 767
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 769
    check-cast v0, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 771
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    iget-wide v4, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    iget-wide v6, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 772
    iget v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    iget v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    if-ne v3, v4, :cond_5

    .line 773
    iget-boolean v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    iget-boolean v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    if-ne v3, v4, :cond_5

    .line 774
    iget-boolean v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    iget-boolean v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    if-ne v3, v4, :cond_5

    .line 775
    iget-boolean v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    iget-boolean v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    if-ne v3, v4, :cond_5

    .line 776
    iget-boolean v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    iget-boolean v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    if-ne v3, v4, :cond_5

    .line 777
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    if-eqz v3, :cond_28f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 778
    :cond_49
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v3, :cond_295

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    :cond_57
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    if-eqz v3, :cond_29b

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 782
    :cond_65
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    if-eqz v3, :cond_2a1

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 783
    :cond_73
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    if-eqz v3, :cond_2a7

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 784
    :cond_81
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    if-eqz v3, :cond_2ad

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 785
    :cond_8f
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2b3

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 786
    :cond_9d
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    if-eqz v3, :cond_2b9

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 788
    :cond_ab
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    if-eqz v3, :cond_2bf

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 789
    :cond_b9
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    if-eqz v3, :cond_2c5

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 790
    :cond_c7
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    if-eqz v3, :cond_2cb

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 792
    :cond_d5
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-ne v3, v4, :cond_5

    .line 793
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    if-ne v3, v4, :cond_5

    .line 794
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    if-eqz v3, :cond_2d1

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 797
    :cond_ef
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    if-eqz v3, :cond_2d7

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 799
    :cond_fd
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    if-eqz v3, :cond_2dd

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 800
    :cond_10b
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    if-eqz v3, :cond_2e3

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 803
    :cond_119
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    if-eqz v3, :cond_2e9

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 806
    :cond_127
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    if-eqz v3, :cond_2ef

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 809
    :cond_135
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    if-eqz v3, :cond_2f5

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 812
    :cond_143
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    if-eqz v3, :cond_2fb

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 815
    :cond_151
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    if-eqz v3, :cond_301

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 818
    :cond_15f
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_307

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 821
    :cond_16d
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_30d

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 824
    :cond_17b
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    if-eqz v3, :cond_313

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 825
    :cond_189
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-eqz v3, :cond_319

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 828
    :cond_197
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-eqz v3, :cond_31f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 831
    :cond_1a5
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    if-eqz v3, :cond_325

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 834
    :cond_1b3
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    if-eqz v3, :cond_32b

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 837
    :cond_1c1
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-eqz v3, :cond_331

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 840
    :cond_1cf
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-eqz v3, :cond_337

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 843
    :cond_1dd
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    if-eqz v3, :cond_33d

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 844
    :cond_1eb
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    if-eqz v3, :cond_343

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 845
    :cond_1f9
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    if-eqz v3, :cond_349

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 846
    :cond_207
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    if-eqz v3, :cond_34f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    :cond_215
    iget v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    iget v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    if-ne v3, v4, :cond_5

    .line 850
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    if-eqz v3, :cond_355

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 853
    :cond_229
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    if-eqz v3, :cond_35b

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 854
    :cond_237
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    if-eqz v3, :cond_361

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 856
    :cond_245
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    if-eqz v3, :cond_367

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 859
    :cond_253
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    if-eqz v3, :cond_36d

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 860
    :cond_261
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    if-eqz v3, :cond_373

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 863
    :cond_26f
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    if-eqz v3, :cond_379

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 865
    :cond_27d
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    if-eqz v3, :cond_37f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28c

    :cond_28b
    move v1, v2

    :cond_28c
    :goto_28c
    move v2, v1

    goto/16 :goto_5

    .line 777
    :cond_28f
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    if-eqz v3, :cond_49

    goto/16 :goto_5

    .line 778
    :cond_295
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v3, :cond_57

    goto/16 :goto_5

    .line 781
    :cond_29b
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    if-eqz v3, :cond_65

    goto/16 :goto_5

    .line 782
    :cond_2a1
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    if-eqz v3, :cond_73

    goto/16 :goto_5

    .line 783
    :cond_2a7
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    if-eqz v3, :cond_81

    goto/16 :goto_5

    .line 784
    :cond_2ad
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    if-eqz v3, :cond_8f

    goto/16 :goto_5

    .line 785
    :cond_2b3
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    if-eqz v3, :cond_9d

    goto/16 :goto_5

    .line 786
    :cond_2b9
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    if-eqz v3, :cond_ab

    goto/16 :goto_5

    .line 788
    :cond_2bf
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    if-eqz v3, :cond_b9

    goto/16 :goto_5

    .line 789
    :cond_2c5
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    if-eqz v3, :cond_c7

    goto/16 :goto_5

    .line 790
    :cond_2cb
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    if-eqz v3, :cond_d5

    goto/16 :goto_5

    .line 794
    :cond_2d1
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    if-eqz v3, :cond_ef

    goto/16 :goto_5

    .line 797
    :cond_2d7
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    if-eqz v3, :cond_fd

    goto/16 :goto_5

    .line 799
    :cond_2dd
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    if-eqz v3, :cond_10b

    goto/16 :goto_5

    .line 800
    :cond_2e3
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    if-eqz v3, :cond_119

    goto/16 :goto_5

    .line 803
    :cond_2e9
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    if-eqz v3, :cond_127

    goto/16 :goto_5

    .line 806
    :cond_2ef
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    if-eqz v3, :cond_135

    goto/16 :goto_5

    .line 809
    :cond_2f5
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    if-eqz v3, :cond_143

    goto/16 :goto_5

    .line 812
    :cond_2fb
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    if-eqz v3, :cond_151

    goto/16 :goto_5

    .line 815
    :cond_301
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    if-eqz v3, :cond_15f

    goto/16 :goto_5

    .line 818
    :cond_307
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_16d

    goto/16 :goto_5

    .line 821
    :cond_30d
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_17b

    goto/16 :goto_5

    .line 824
    :cond_313
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    if-eqz v3, :cond_189

    goto/16 :goto_5

    .line 825
    :cond_319
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-eqz v3, :cond_197

    goto/16 :goto_5

    .line 828
    :cond_31f
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-eqz v3, :cond_1a5

    goto/16 :goto_5

    .line 831
    :cond_325
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    if-eqz v3, :cond_1b3

    goto/16 :goto_5

    .line 834
    :cond_32b
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    if-eqz v3, :cond_1c1

    goto/16 :goto_5

    .line 837
    :cond_331
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-eqz v3, :cond_1cf

    goto/16 :goto_5

    .line 840
    :cond_337
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-eqz v3, :cond_1dd

    goto/16 :goto_5

    .line 843
    :cond_33d
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    if-eqz v3, :cond_1eb

    goto/16 :goto_5

    .line 844
    :cond_343
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    if-eqz v3, :cond_1f9

    goto/16 :goto_5

    .line 845
    :cond_349
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    if-eqz v3, :cond_207

    goto/16 :goto_5

    .line 846
    :cond_34f
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    if-eqz v3, :cond_215

    goto/16 :goto_5

    .line 850
    :cond_355
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    if-eqz v3, :cond_229

    goto/16 :goto_5

    .line 853
    :cond_35b
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    if-eqz v3, :cond_237

    goto/16 :goto_5

    .line 854
    :cond_361
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    if-eqz v3, :cond_245

    goto/16 :goto_5

    .line 856
    :cond_367
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    if-eqz v3, :cond_253

    goto/16 :goto_5

    .line 859
    :cond_36d
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    if-eqz v3, :cond_261

    goto/16 :goto_5

    .line 860
    :cond_373
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    if-eqz v3, :cond_26f

    goto/16 :goto_5

    .line 863
    :cond_379
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    if-eqz v3, :cond_27d

    goto/16 :goto_5

    .line 865
    :cond_37f
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    if-nez v3, :cond_28b

    goto/16 :goto_28c
.end method

.method public getAuthorContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/AuthorContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAuthorDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 344
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Contributor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 328
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Contributor;->getId()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getAuthorUserPage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 336
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Contributor;->getUserPage()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getBadges()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarked()J
    .registers 3

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    return-wide v0
.end method

.method public getBulletedDekHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getBulletedDeks()Ljava/util/List;
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
    .line 248
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    return-object v0
.end method

.method public getBylinePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContributors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/Contributor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderBlurb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageStack(F)Ljava/util/Stack;
    .registers 4
    .param p1, "screenDensityDpi"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v0

    .line 1392
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const/high16 v1, 0x43a00000

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_17

    .line 1393
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_17
    return-object v0
.end method

.method public getImageUrlBig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlDblBig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlDblWide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlSmall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlStandard()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlWide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressions()I
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumComments()I
    .registers 2

    .prologue
    .line 683
    iget v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOuserid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Lcom/buzzfeed/toolkit/content/Buzz$PageType;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    return-object v0
.end method

.method public getPageWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getParentUri()Ljava/lang/String;
    .registers 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 199
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "firstSlash":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .end local v0    # "firstSlash":I
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getParentUriUser()Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 207
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "secondSlash":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 210
    .end local v0    # "secondSlash":I
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getPosition()Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    return-object v0
.end method

.method public getPoundHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    if-nez v0, :cond_c

    .line 394
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 396
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    goto :goto_b
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashColorSchemer()Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    return-object v0
.end method

.method public getSponsorDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorUserImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubbuzzs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
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
    .line 645
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailStack()Ljava/util/Stack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1357
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1358
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1361
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_1f
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1364
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_2c
    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTrendingStack()Ljava/util/Stack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1417
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1418
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1419
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_12
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtmTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getViral()J
    .registers 3

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->viral:J

    return-wide v0
.end method

.method public getWideStack()Ljava/util/Stack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1404
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlWide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1405
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlWide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblWide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v1

    const/high16 v2, 0x43a00000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_29

    .line 1408
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblWide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_29
    return-object v0
.end method

.method public hasBulletedDek()Z
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasEditUpdated()Z
    .registers 5

    .prologue
    .line 580
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasLastUpdated()Z
    .registers 5

    .prologue
    .line 576
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasLightBackground()Z
    .registers 3

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasSplashSemiTransparentBackground()Z
    .registers 3

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 871
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    if-eqz v2, :cond_29a

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 872
    .local v0, "result":I
    :goto_c
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v2, :cond_29d

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int v0, v4, v2

    .line 873
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    if-eqz v2, :cond_2a0

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_26
    add-int v0, v4, v2

    .line 874
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    if-eqz v2, :cond_2a3

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_34
    add-int v0, v4, v2

    .line 875
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    if-eqz v2, :cond_2a6

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_42
    add-int v0, v4, v2

    .line 876
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    if-eqz v2, :cond_2a9

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_50
    add-int v0, v4, v2

    .line 877
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2ac

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5e
    add-int v0, v4, v2

    .line 878
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    if-eqz v2, :cond_2af

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6c
    add-int v0, v4, v2

    .line 879
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    if-eqz v2, :cond_2b2

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7a
    add-int v0, v4, v2

    .line 880
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    if-eqz v2, :cond_2b5

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_88
    add-int v0, v4, v2

    .line 881
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    if-eqz v2, :cond_2b8

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_96
    add-int v0, v4, v2

    .line 882
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    if-eqz v2, :cond_2bb

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;->hashCode()I

    move-result v2

    :goto_a4
    add-int v0, v4, v2

    .line 883
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    if-eqz v2, :cond_2be

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;->hashCode()I

    move-result v2

    :goto_b2
    add-int v0, v4, v2

    .line 884
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    if-eqz v2, :cond_2c1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c0
    add-int v0, v4, v2

    .line 885
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_2c4

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_ce
    add-int v0, v4, v2

    .line 886
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    if-eqz v2, :cond_2c7

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_dc
    add-int v0, v4, v2

    .line 887
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    iget-wide v6, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 888
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    if-eqz v2, :cond_2ca

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f7
    add-int v0, v4, v2

    .line 889
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    if-eqz v2, :cond_2cd

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_105
    add-int v0, v4, v2

    .line 890
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    if-eqz v2, :cond_2d0

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_113
    add-int v0, v4, v2

    .line 891
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    if-eqz v2, :cond_2d3

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_121
    add-int v0, v4, v2

    .line 892
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d6

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_12f
    add-int v0, v4, v2

    .line 893
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    add-int v0, v2, v4

    .line 894
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    if-eqz v2, :cond_2d9

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_143
    add-int v0, v4, v2

    .line 895
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_2dc

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_151
    add-int v0, v4, v2

    .line 896
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_2df

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15f
    add-int v0, v4, v2

    .line 897
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16d
    add-int v0, v4, v2

    .line 898
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-eqz v2, :cond_2e5

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17b
    add-int v0, v4, v2

    .line 899
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-eqz v2, :cond_2e8

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_189
    add-int v0, v4, v2

    .line 900
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    if-eqz v2, :cond_2eb

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_197
    add-int v0, v4, v2

    .line 901
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    if-eqz v2, :cond_2ee

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a5
    add-int v0, v4, v2

    .line 902
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-eqz v2, :cond_2f1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b3
    add-int v0, v4, v2

    .line 903
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-eqz v2, :cond_2f4

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1c1
    add-int v0, v4, v2

    .line 904
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    if-eqz v2, :cond_2f7

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1cf
    add-int v0, v4, v2

    .line 905
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    if-eqz v2, :cond_2fa

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1dd
    add-int v0, v4, v2

    .line 906
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    if-eqz v2, :cond_2fd

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1eb
    add-int v0, v4, v2

    .line 907
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    if-eqz v2, :cond_300

    move v2, v3

    :goto_1f4
    add-int v0, v4, v2

    .line 908
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    if-eqz v2, :cond_303

    move v2, v3

    :goto_1fd
    add-int v0, v4, v2

    .line 909
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    if-eqz v2, :cond_306

    move v2, v3

    :goto_206
    add-int v0, v4, v2

    .line 910
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    if-eqz v4, :cond_309

    :goto_20e
    add-int v0, v2, v3

    .line 911
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    if-eqz v2, :cond_30c

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_21c
    add-int v0, v3, v2

    .line 912
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    if-eqz v2, :cond_30f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_22a
    add-int v0, v3, v2

    .line 913
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    if-eqz v2, :cond_312

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_238
    add-int v0, v3, v2

    .line 914
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    if-eqz v2, :cond_315

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_246
    add-int v0, v3, v2

    .line 915
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    if-eqz v2, :cond_318

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_254
    add-int v0, v3, v2

    .line 916
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    if-eqz v2, :cond_31b

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_262
    add-int v0, v3, v2

    .line 917
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    if-eqz v2, :cond_31e

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_270
    add-int v0, v3, v2

    .line 918
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    if-eqz v2, :cond_321

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/Buzz$PageType;->hashCode()I

    move-result v2

    :goto_27e
    add-int v0, v3, v2

    .line 919
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    if-eqz v3, :cond_28c

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_28c
    add-int v0, v2, v1

    .line 920
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    iget v3, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 921
    return v0

    .end local v0    # "result":I
    :cond_29a
    move v0, v1

    .line 871
    goto/16 :goto_c

    .restart local v0    # "result":I
    :cond_29d
    move v2, v1

    .line 872
    goto/16 :goto_18

    :cond_2a0
    move v2, v1

    .line 873
    goto/16 :goto_26

    :cond_2a3
    move v2, v1

    .line 874
    goto/16 :goto_34

    :cond_2a6
    move v2, v1

    .line 875
    goto/16 :goto_42

    :cond_2a9
    move v2, v1

    .line 876
    goto/16 :goto_50

    :cond_2ac
    move v2, v1

    .line 877
    goto/16 :goto_5e

    :cond_2af
    move v2, v1

    .line 878
    goto/16 :goto_6c

    :cond_2b2
    move v2, v1

    .line 879
    goto/16 :goto_7a

    :cond_2b5
    move v2, v1

    .line 880
    goto/16 :goto_88

    :cond_2b8
    move v2, v1

    .line 881
    goto/16 :goto_96

    :cond_2bb
    move v2, v1

    .line 882
    goto/16 :goto_a4

    :cond_2be
    move v2, v1

    .line 883
    goto/16 :goto_b2

    :cond_2c1
    move v2, v1

    .line 884
    goto/16 :goto_c0

    :cond_2c4
    move v2, v1

    .line 885
    goto/16 :goto_ce

    :cond_2c7
    move v2, v1

    .line 886
    goto/16 :goto_dc

    :cond_2ca
    move v2, v1

    .line 888
    goto/16 :goto_f7

    :cond_2cd
    move v2, v1

    .line 889
    goto/16 :goto_105

    :cond_2d0
    move v2, v1

    .line 890
    goto/16 :goto_113

    :cond_2d3
    move v2, v1

    .line 891
    goto/16 :goto_121

    :cond_2d6
    move v2, v1

    .line 892
    goto/16 :goto_12f

    :cond_2d9
    move v2, v1

    .line 894
    goto/16 :goto_143

    :cond_2dc
    move v2, v1

    .line 895
    goto/16 :goto_151

    :cond_2df
    move v2, v1

    .line 896
    goto/16 :goto_15f

    :cond_2e2
    move v2, v1

    .line 897
    goto/16 :goto_16d

    :cond_2e5
    move v2, v1

    .line 898
    goto/16 :goto_17b

    :cond_2e8
    move v2, v1

    .line 899
    goto/16 :goto_189

    :cond_2eb
    move v2, v1

    .line 900
    goto/16 :goto_197

    :cond_2ee
    move v2, v1

    .line 901
    goto/16 :goto_1a5

    :cond_2f1
    move v2, v1

    .line 902
    goto/16 :goto_1b3

    :cond_2f4
    move v2, v1

    .line 903
    goto/16 :goto_1c1

    :cond_2f7
    move v2, v1

    .line 904
    goto/16 :goto_1cf

    :cond_2fa
    move v2, v1

    .line 905
    goto/16 :goto_1dd

    :cond_2fd
    move v2, v1

    .line 906
    goto/16 :goto_1eb

    :cond_300
    move v2, v1

    .line 907
    goto/16 :goto_1f4

    :cond_303
    move v2, v1

    .line 908
    goto/16 :goto_1fd

    :cond_306
    move v2, v1

    .line 909
    goto/16 :goto_206

    :cond_309
    move v3, v1

    .line 910
    goto/16 :goto_20e

    :cond_30c
    move v2, v1

    .line 911
    goto/16 :goto_21c

    :cond_30f
    move v2, v1

    .line 912
    goto/16 :goto_22a

    :cond_312
    move v2, v1

    .line 913
    goto/16 :goto_238

    :cond_315
    move v2, v1

    .line 914
    goto/16 :goto_246

    :cond_318
    move v2, v1

    .line 915
    goto/16 :goto_254

    :cond_31b
    move v2, v1

    .line 916
    goto/16 :goto_262

    :cond_31e
    move v2, v1

    .line 917
    goto/16 :goto_270

    :cond_321
    move v2, v1

    .line 918
    goto/16 :goto_27e
.end method

.method public isAd()Z
    .registers 2

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    return v0
.end method

.method public isAllowContributions()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    return v0
.end method

.method public isBackfillAd()Z
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->mIsBackfill:Z

    return v0
.end method

.method public isBookmarked()Z
    .registers 5

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isBreaking()Z
    .registers 3

    .prologue
    .line 607
    const-string v0, "breaking"

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCommentsEnabled()Z
    .registers 2

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public isInlineAd()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    return v0
.end method

.method public isInternal()Z
    .registers 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    return v0
.end method

.method public isReactionsEnabled()Z
    .registers 2

    .prologue
    .line 1376
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 694
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 695
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 696
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 697
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlWide()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 698
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblWide()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 699
    :cond_4e
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 700
    :cond_64
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_7a
    const/4 v0, 0x1

    :goto_7b
    return v0

    :cond_7c
    const/4 v0, 0x0

    goto :goto_7b
.end method

.method public parse(Ljava/lang/String;)V
    .registers 3
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 989
    return-void
.end method

.method public parse(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 4
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "contentFactory"    # Lcom/buzzfeed/toolkit/content/ContentFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 984
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 985
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 992
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 993
    return-void
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 45
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "contentFactory"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 1002
    const-string v37, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_306

    const-string v37, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_306

    .line 1003
    const-string v37, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1011
    :cond_29
    :goto_29
    const-string v37, "badges"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1012
    .local v24, "rawBadges":Lorg/json/JSONArray;
    if-eqz v24, :cond_48

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->spliceBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setBadges(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1013
    :cond_48
    const-string v37, "flags"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1014
    .local v25, "rawFlags":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->spliceBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setFlags(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1015
    const-string v37, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_82

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_94

    .line 1017
    :cond_82
    const-string/jumbo v37, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1020
    :cond_94
    const-string/jumbo v37, "thumbnail"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    .line 1021
    invoke-direct/range {p0 .. p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseUri(Lorg/json/JSONObject;)V

    .line 1022
    const-string v37, "allow_contributions"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_cf

    .line 1023
    const/16 v37, 0x1

    const-string v38, "allow_contributions"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_35c

    const/16 v37, 0x1

    :goto_c8
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setAllowContributions(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1026
    :cond_cf
    new-instance v37, Ljava/util/Date;

    const-wide/16 v38, 0x0

    invoke-direct/range {v37 .. v39}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    .line 1027
    const-string v37, "published_unix"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_f9

    .line 1029
    :try_start_e8
    const-string v37, "published_unix"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setTimestamp(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_e8 .. :try_end_f9} :catch_86f

    .line 1035
    :cond_f9
    :goto_f9
    const-string v37, "published"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->getTime()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-nez v37, :cond_126

    .line 1037
    :try_start_115
    const-string v37, "published"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setTimestamp(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;
    :try_end_126
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_126} :catch_86c

    .line 1042
    :cond_126
    :goto_126
    const-string/jumbo v37, "viral"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_145

    .line 1043
    const-string/jumbo v37, "viral"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/Buzz;->setViral(J)V

    .line 1046
    :cond_145
    const-string v37, "form"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setForm(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1047
    const-string v37, "link"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_181

    .line 1048
    const-string v37, "link"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setLink(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getUri()Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_181

    .line 1050
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    .line 1053
    :cond_181
    const-string v37, "last_updated"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setLastUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1054
    const-string v37, "edit_updated"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setEditUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1055
    const-string v37, "promotions"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_24e

    .line 1056
    const-string v37, "promotions"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 1057
    .local v23, "promotionsObj":Lorg/json/JSONObject;
    const-string v37, "extra_fields"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_24e

    .line 1058
    const-string v37, "extra_fields"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1059
    .local v13, "extraFieldsObj":Lorg/json/JSONObject;
    const-string v37, "position"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSplashPosition(Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1060
    const-string v37, "size"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1061
    .local v26, "size":Ljava/lang/String;
    const/16 v15, 0x1c

    .line 1063
    .local v15, "fontSize":I
    :try_start_1f0
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f3} :catch_868

    move-result v15

    .line 1066
    :goto_1f4
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1067
    const-string v37, "color"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSplashColorScheme(Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1068
    const-string/jumbo v37, "title"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1069
    .local v31, "title":Ljava/lang/String;
    if-eqz v31, :cond_360

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_360

    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1074
    :goto_22e
    const-string v37, "label"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_24e

    .line 1075
    const-string v37, "label"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string/jumbo v38, "value"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1080
    .end local v13    # "extraFieldsObj":Lorg/json/JSONObject;
    .end local v15    # "fontSize":I
    .end local v23    # "promotionsObj":Lorg/json/JSONObject;
    .end local v26    # "size":Ljava/lang/String;
    .end local v31    # "title":Ljava/lang/String;
    :cond_24e
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    .line 1081
    const-string v37, "bylines"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_374

    .line 1082
    const-string v37, "bylines"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1083
    .local v9, "bylines":Lorg/json/JSONArray;
    if-eqz v9, :cond_374

    .line 1084
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_273
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_374

    .line 1085
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1086
    .local v4, "author":Lorg/json/JSONObject;
    new-instance v11, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-direct {v11}, Lcom/buzzfeed/toolkit/content/Contributor;-><init>()V

    .line 1087
    .local v11, "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    const-string v37, "id"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setId(Ljava/lang/String;)V

    .line 1088
    const-string v37, "display_name"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setDisplayName(Ljava/lang/String;)V

    .line 1089
    const-string v37, "facebook_page_url"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setFacebook(Ljava/lang/String;)V

    .line 1090
    new-instance v20, Ljava/util/Stack;

    invoke-direct/range {v20 .. v20}, Ljava/util/Stack;-><init>()V

    .line 1091
    .local v20, "images":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const-string v37, "avatar"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1092
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setUserImages(Ljava/util/Stack;)V

    .line 1094
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "username"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setUserPage(Ljava/lang/String;)V

    .line 1095
    const-string/jumbo v37, "title"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setBylineDesc(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_273

    .line 1004
    .end local v4    # "author":Lorg/json/JSONObject;
    .end local v9    # "bylines":Lorg/json/JSONArray;
    .end local v11    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .end local v18    # "i":I
    .end local v20    # "images":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v24    # "rawBadges":Lorg/json/JSONArray;
    .end local v25    # "rawFlags":Ljava/lang/String;
    :cond_306
    const-string v37, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_331

    const-string v37, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_331

    .line 1005
    const-string v37, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    goto/16 :goto_29

    .line 1006
    :cond_331
    const-string v37, "buzz_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_29

    const-string v37, "buzz_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_29

    .line 1007
    const-string v37, "buzz_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    goto/16 :goto_29

    .line 1023
    .restart local v24    # "rawBadges":Lorg/json/JSONArray;
    .restart local v25    # "rawFlags":Ljava/lang/String;
    :cond_35c
    const/16 v37, 0x0

    goto/16 :goto_c8

    .line 1072
    .restart local v13    # "extraFieldsObj":Lorg/json/JSONObject;
    .restart local v15    # "fontSize":I
    .restart local v23    # "promotionsObj":Lorg/json/JSONObject;
    .restart local v26    # "size":Ljava/lang/String;
    .restart local v31    # "title":Ljava/lang/String;
    :cond_360
    const-string/jumbo v37, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    goto/16 :goto_22e

    .line 1102
    .end local v13    # "extraFieldsObj":Lorg/json/JSONObject;
    .end local v15    # "fontSize":I
    .end local v23    # "promotionsObj":Lorg/json/JSONObject;
    .end local v26    # "size":Ljava/lang/String;
    .end local v31    # "title":Ljava/lang/String;
    :cond_374
    const-string v37, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_547

    .line 1103
    const-string v37, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1104
    .local v17, "headerObj":Lorg/json/JSONObject;
    const-string v37, "blurb"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setHeaderBlurb(Ljava/lang/String;)V

    .line 1105
    const-string v37, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setHeaderName(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getHeaderName()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_3bc

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getHeaderName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_3f0

    .line 1107
    :cond_3bc
    const-string/jumbo v37, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setHeaderName(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_3de

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_3f0

    .line 1109
    :cond_3de
    const-string/jumbo v37, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1112
    :cond_3f0
    const-string/jumbo v37, "users"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_4d2

    .line 1113
    const-string/jumbo v37, "users"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 1114
    .local v35, "usersArr":Lorg/json/JSONArray;
    if-eqz v35, :cond_4d2

    .line 1115
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v26

    .line 1116
    .local v26, "size":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_410
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_4d2

    .line 1117
    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    .line 1118
    .local v34, "userObj":Lorg/json/JSONObject;
    if-eqz v34, :cond_43a

    .line 1119
    new-instance v11, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-direct {v11}, Lcom/buzzfeed/toolkit/content/Contributor;-><init>()V

    .line 1121
    .restart local v11    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    const-string/jumbo v37, "user_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1122
    .local v33, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->hasContributor(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_43d

    .line 1116
    .end local v11    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .end local v33    # "userId":Ljava/lang/String;
    :cond_43a
    :goto_43a
    add-int/lit8 v18, v18, 0x1

    goto :goto_410

    .line 1126
    .restart local v11    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .restart local v33    # "userId":Ljava/lang/String;
    :cond_43d
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setId(Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v37, "user_page"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setUserPage(Ljava/lang/String;)V

    .line 1128
    const-string v37, "byline_desc"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setBylineDesc(Ljava/lang/String;)V

    .line 1129
    const-string v37, "display_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setDisplayName(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v11}, Lcom/buzzfeed/toolkit/content/Contributor;->getDisplayName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_48e

    .line 1133
    invoke-virtual {v11}, Lcom/buzzfeed/toolkit/content/Contributor;->getDisplayName()Ljava/lang/String;

    move-result-object v37

    const-string v38, "BuzzFeed Promotions"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_48e

    .line 1134
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->mIsBackfill:Z

    .line 1137
    :cond_48e
    const-string/jumbo v37, "user_image"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1138
    .local v5, "avatarUrl":Ljava/lang/String;
    new-instance v19, Ljava/util/Stack;

    invoke-direct/range {v19 .. v19}, Ljava/util/Stack;-><init>()V

    .line 1139
    .local v19, "imageUrls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1141
    const-string v37, "_large.jpg"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_4c0

    .line 1142
    const-string v37, ".jpg"

    const-string v38, "_large.jpg"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1144
    :cond_4c0
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/buzzfeed/toolkit/content/Contributor;->setUserImages(Ljava/util/Stack;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43a

    .line 1151
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .end local v11    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .end local v18    # "i":I
    .end local v19    # "imageUrls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v26    # "size":I
    .end local v33    # "userId":Ljava/lang/String;
    .end local v34    # "userObj":Lorg/json/JSONObject;
    .end local v35    # "usersArr":Lorg/json/JSONArray;
    :cond_4d2
    const-string v37, "special_blurb"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_547

    .line 1152
    const-string v37, "special_blurb"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 1153
    .local v27, "specialBlurbObj":Lorg/json/JSONObject;
    if-eqz v27, :cond_547

    const-string/jumbo v37, "type"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_547

    .line 1154
    const-string/jumbo v37, "type"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1155
    .local v32, "type":Ljava/lang/String;
    if-eqz v32, :cond_547

    const-string v37, "bulleted_list"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_547

    const-string/jumbo v37, "value"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_547

    .line 1156
    const-string/jumbo v37, "value"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    .line 1157
    .local v36, "valueObj":Lorg/json/JSONObject;
    if-eqz v36, :cond_536

    .line 1158
    const-string v37, "bullets"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    .line 1160
    :cond_536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/buzzfeed/toolkit/content/Buzz$BulletedDekParser;->getBulletedDek(Ljava/lang/String;)Ljava/util/List;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setBulletedDeks(Ljava/util/List;)V

    .line 1166
    .end local v17    # "headerObj":Lorg/json/JSONObject;
    .end local v27    # "specialBlurbObj":Lorg/json/JSONObject;
    .end local v32    # "type":Ljava/lang/String;
    .end local v36    # "valueObj":Lorg/json/JSONObject;
    :cond_547
    const-string v37, "images"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_79f

    .line 1167
    const-string v37, "images"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 1168
    .local v21, "imagesObj":Lorg/json/JSONObject;
    const-string v37, "small"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    .line 1169
    const-string v37, "standard"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 1170
    const-string v37, "big"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 1171
    const-string/jumbo v37, "wide"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    .line 1172
    const-string v37, "dblbig"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    .line 1173
    const-string v37, "dblwide"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    .line 1186
    .end local v21    # "imagesObj":Lorg/json/JSONObject;
    :cond_5be
    :goto_5be
    const-string v37, "category"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_5db

    const-string v37, "category"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1187
    :cond_5db
    const-string v37, "category_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1188
    .local v10, "categoryName":Ljava/lang/String;
    if-eqz v10, :cond_5f6

    const-string v37, "VerticalFeature"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_5f6

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/buzzfeed/toolkit/content/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1190
    :cond_5f6
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_611

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Breaking"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_611

    .line 1191
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setAllowContributions(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1193
    :cond_611
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_62c

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Advertiser"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_62c

    .line 1194
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setIsAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1199
    :cond_62c
    const-string v37, "date_added"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v38

    const-wide/16 v40, 0x3e8

    mul-long v6, v38, v40

    .line 1200
    .local v6, "bookmarked":J
    const-wide/16 v38, 0x0

    cmp-long v37, v6, v38

    if-lez v37, :cond_645

    .line 1201
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 1203
    :cond_645
    const-string v37, "date_added"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1205
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1207
    const-string v37, "impressions"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_676

    .line 1208
    const-string v37, "impressions"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setImpressions(I)V

    .line 1211
    :cond_676
    const-string/jumbo v37, "utm_term"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_694

    .line 1212
    const-string/jumbo v37, "utm_term"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    .line 1215
    :cond_694
    const-string v37, "comments_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setNumComments(I)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 1217
    const-string v37, "byline_prefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1218
    .local v8, "bylinePrefixName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_6ba

    .line 1219
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/buzzfeed/toolkit/content/Buzz;->setBylinePrefix(Ljava/lang/String;)V

    .line 1222
    :cond_6ba
    invoke-virtual/range {p0 .. p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V

    .line 1225
    const-string v37, "metavertical"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    .line 1226
    const-string/jumbo v37, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    .line 1227
    const-string v37, "language"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    .line 1230
    const-string v37, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_71a

    .line 1232
    const-string v37, "blurb"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    .line 1235
    :cond_71a
    const-string v37, "format"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_75a

    .line 1236
    const-string v37, "format"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 1237
    .local v16, "format":Lorg/json/JSONObject;
    if-eqz v16, :cond_75a

    .line 1238
    const-string v37, "page_width"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    .line 1239
    const-string v37, "page_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->parsePageType(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    .line 1243
    .end local v16    # "format":Lorg/json/JSONObject;
    :cond_75a
    const-string/jumbo v37, "tags"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_813

    .line 1244
    const-string/jumbo v37, "tags"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    .line 1245
    .local v29, "tagsArray":Lorg/json/JSONArray;
    if-eqz v29, :cond_813

    .line 1246
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    .line 1247
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_781
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_813

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v18, v18, 0x1

    goto :goto_781

    .line 1177
    .end local v6    # "bookmarked":J
    .end local v8    # "bylinePrefixName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v29    # "tagsArray":Lorg/json/JSONArray;
    :cond_79f
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getThumbnail()Ljava/lang/String;

    move-result-object v30

    .line 1178
    .local v30, "thumbnailURL":Ljava/lang/String;
    if-eqz v30, :cond_5be

    .line 1179
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 1180
    const-string v37, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1181
    .local v12, "dot":I
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 1182
    .local v22, "imgFormat":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_big"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 1183
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_dblbig"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    goto/16 :goto_5be

    .line 1254
    .end local v12    # "dot":I
    .end local v22    # "imgFormat":Ljava/lang/String;
    .end local v30    # "thumbnailURL":Ljava/lang/String;
    .restart local v6    # "bookmarked":J
    .restart local v8    # "bylinePrefixName":Ljava/lang/String;
    .restart local v10    # "categoryName":Ljava/lang/String;
    :cond_813
    const-string/jumbo v37, "sub_buzzes"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_86b

    if-eqz p2, :cond_86b

    .line 1255
    const-string/jumbo v37, "sub_buzzes"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 1256
    .local v28, "sub":Lorg/json/JSONArray;
    if-eqz v28, :cond_86b

    .line 1257
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    .line 1258
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_83c
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_86b

    .line 1259
    new-instance v14, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v14}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 1260
    .local v14, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    add-int/lit8 v18, v18, 0x1

    goto :goto_83c

    .line 1064
    .end local v6    # "bookmarked":J
    .end local v8    # "bylinePrefixName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v14    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v18    # "i":I
    .end local v28    # "sub":Lorg/json/JSONArray;
    .restart local v13    # "extraFieldsObj":Lorg/json/JSONObject;
    .restart local v15    # "fontSize":I
    .restart local v23    # "promotionsObj":Lorg/json/JSONObject;
    .local v26, "size":Ljava/lang/String;
    :catch_868
    move-exception v37

    goto/16 :goto_1f4

    .line 1265
    .end local v13    # "extraFieldsObj":Lorg/json/JSONObject;
    .end local v15    # "fontSize":I
    .end local v23    # "promotionsObj":Lorg/json/JSONObject;
    .end local v26    # "size":Ljava/lang/String;
    .restart local v6    # "bookmarked":J
    .restart local v8    # "bylinePrefixName":Ljava/lang/String;
    .restart local v10    # "categoryName":Ljava/lang/String;
    :cond_86b
    return-void

    .line 1038
    .end local v6    # "bookmarked":J
    .end local v8    # "bylinePrefixName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    :catch_86c
    move-exception v37

    goto/16 :goto_126

    .line 1030
    :catch_86f
    move-exception v37

    goto/16 :goto_f9
.end method

.method protected parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 1278
    const-string v3, "display_name"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "sponsorDisplayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1280
    invoke-virtual {p0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSponsorDisplayName(Ljava/lang/String;)V

    .line 1288
    :cond_f
    :goto_f
    const-string/jumbo v3, "user_image"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "sponsorUserImageUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1290
    iput-object v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    .line 1293
    :cond_1e
    const-string v3, "byline_prefix"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "bylinePrefix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1295
    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    .line 1297
    :cond_2c
    return-void

    .line 1282
    .end local v0    # "bylinePrefix":Ljava/lang/String;
    .end local v2    # "sponsorUserImageUrl":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v3, "username"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1284
    invoke-virtual {p0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setSponsorDisplayName(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setAllowContributions(Z)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "allowContributions"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    .line 555
    return-object p0
.end method

.method public setBadges(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "badges"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setBookmarked(J)V
    .registers 4
    .param p1, "bookmarked"    # J

    .prologue
    .line 424
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    .line 425
    return-void
.end method

.method public setBulletedDeks(Ljava/util/List;)V
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
    .line 244
    .local p1, "html":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    .line 245
    return-void
.end method

.method public setBylinePrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "bylinePrefix"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public setCategory(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public setContributors(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/Contributor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "contributors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/toolkit/content/Contributor;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    .line 265
    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    .line 633
    return-object p0
.end method

.method public setEditUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "editUpdated"    # Ljava/util/Date;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    .line 308
    return-object p0
.end method

.method public setFlags(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "flags"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method public setForm(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setHeaderBlurb(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerBlurb"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public setImageUrlBig(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlBig"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setImageUrlDblBig(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlDblBig"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setImageUrlDblWide(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlDblWide"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setImageUrlSmall(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setImageUrlStandard(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlStandard"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setImageUrlWide(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageUrlWide"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setImpressions(I)V
    .registers 2
    .param p1, "impressions"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    .line 527
    return-void
.end method

.method protected setInlineAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "isLoadedAd"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    .line 518
    return-object p0
.end method

.method public setIsAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "isAd"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    .line 509
    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public setLastUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "lastUpdated"    # Ljava/util/Date;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    .line 298
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setNumComments(I)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "numComments"    # I

    .prologue
    .line 687
    iput p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    .line 688
    return-object p0
.end method

.method public setOid(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setOuserid(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "ouserid"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setPageType(Lcom/buzzfeed/toolkit/content/Buzz$PageType;)V
    .registers 2
    .param p1, "pageType"    # Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    .line 666
    return-void
.end method

.method public setPageWidth(Ljava/lang/String;)V
    .registers 2
    .param p1, "pageWidth"    # Ljava/lang/String;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    .line 658
    return-void
.end method

.method public setPoundHash(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public setSplashColorScheme(Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "color"    # Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    .line 379
    return-object p0
.end method

.method public setSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    .line 374
    return-object p0
.end method

.method public setSplashPosition(Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "position"    # Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    .line 365
    return-object p0
.end method

.method public setSplashPosition(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 3
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/content/Buzz;->parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    .line 360
    return-object p0
.end method

.method public setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public setSplashTextSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public setSponsorDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sponsorDisplayName"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setSponsorUserImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "sponsorUserImageUrl"    # Ljava/lang/String;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public setSubbuzzs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "subbuzzs":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    .line 674
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public setTags(Ljava/util/List;)V
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
    .line 649
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    .line 650
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    .line 585
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setTrackUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "trackUri"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setUtmTerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "utmTerm"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setViral(J)V
    .registers 4
    .param p1, "viral"    # J

    .prologue
    .line 641
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->viral:J

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buzz{link=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ouserid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", form=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->lastUpdated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->editUpdated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splashColorScheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashColorScheme:Lcom/buzzfeed/toolkit/content/Buzz$SplashColorScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splashCornerPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashCornerPosition:Lcom/buzzfeed/toolkit/content/Buzz$SplashHeadlinePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splashTextSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bookmarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bookmarked:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerBlurb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bulletedDekHtml=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDekHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bulletedDeks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bulletedDeks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->impressions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bylinePrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sponsorUserImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sponsorDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utmTerm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlSmall=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlStandard=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlBig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlWide=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlDblBig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlDblWide=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", badges=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInlineAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInlineAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdvertiser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowContributions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->allowContributions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poundHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numComments=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->numComments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metaVertical=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->metaVertical:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageWidth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->pageType:Lcom/buzzfeed/toolkit/content/Buzz$PageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subbuzzs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Buzz;->subbuzzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
