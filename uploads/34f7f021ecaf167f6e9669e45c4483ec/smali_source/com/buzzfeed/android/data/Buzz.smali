.class public Lcom/buzzfeed/android/data/Buzz;
.super Ljava/lang/Object;
.source "Buzz.java"

# interfaces
.implements Lcom/buzzfeed/android/data/FlowItem$Content;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;,
        Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;,
        Lcom/buzzfeed/android/data/Buzz$Contributor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/buzzfeed/android/data/Buzz;",
        ">;",
        "Lcom/buzzfeed/android/data/FlowItem$Content;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HTTP_REGEXP:Ljava/lang/String; = "^https?://"

.field private static final IMAGE_CONVERSION_FORMAT:Ljava/lang/String; = "webp"

.field private static final IMAGE_CONVERSION_FORMAT_PARAM:Ljava/lang/String; = "output-format"

.field private static final IMAGE_CONVERSION_OUTPUT_QAULITY:Ljava/lang/String; = "88"

.field private static final IMAGE_CONVERSION_OUTPUT_QAULITY_PARAM:Ljava/lang/String; = "output-quality"

.field private static final LAST_UPDATED_DEFAULT:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_BUZZ_URI_ID:Ljava/lang/String; = "viewBuzzUri"

.field private static final httpPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x227a45375c2cde4L


# instance fields
.field private allowContributions:Z

.field private badges:Ljava/lang/String;

.field private blurb:Ljava/lang/String;

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

.field protected buzzId:Ljava/lang/String;

.field private bylinePrefix:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private contributors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/Buzz$Contributor;",
            ">;"
        }
    .end annotation
.end field

.field private flags:Ljava/lang/String;

.field private form:Ljava/lang/String;

.field private formattedTimestamp:Ljava/lang/String;

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

.field private lastUpdated:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private numComments:I

.field private oid:Ljava/lang/String;

.field private ouserid:Ljava/lang/String;

.field private poundHash:Ljava/lang/String;

.field private splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

.field private splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

.field private splashTextSize:Ljava/lang/String;

.field private sponsorDisplayName:Ljava/lang/String;

.field private sponsorUserImageUrl:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;

.field private trackUri:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private utmTerm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/buzzfeed/android/data/Buzz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/Buzz;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "^https?://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    .line 86
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    .line 87
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    .line 88
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    .line 91
    iput-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    .line 94
    iput v0, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private formatTimestamp()V
    .registers 5

    .prologue
    .line 657
    const v0, 0x7f090117

    iget-wide v2, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/buzzfeed/android/data/Buzz;->getFormattedTimestamp(IJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    .line 658
    return-void
.end method

.method private getFormattedTimestamp(IJ)Ljava/lang/String;
    .registers 12
    .param p1, "formattedResource"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 661
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM. d, yyyy"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 662
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm aaa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 663
    .local v4, "sdf2":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 664
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 665
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "date1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "date2":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/android/data/Buzz;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 648
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 649
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "output-format"

    const-string/jumbo v2, "webp"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 650
    const-string v1, "output-quality"

    const-string v2, "88"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 651
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 653
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local p1    # "image":Ljava/lang/String;
    :cond_25
    return-object p1
.end method

.method public static getPoundFromUrl(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p0, "link"    # Landroid/net/Uri;

    .prologue
    .line 1317
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1318
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 1324
    :cond_e
    :goto_e
    return-object v0

    .line 1319
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1320
    const-string/jumbo v1, "utm_term"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "utm":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1324
    .end local v0    # "utm":Ljava/lang/String;
    :cond_26
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1358
    const-string/jumbo v0, "top left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1359
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 1365
    :goto_b
    return-object v0

    .line 1360
    :cond_c
    const-string/jumbo v0, "top right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1361
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    goto :goto_b

    .line 1362
    :cond_18
    const-string v0, "bottom left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1363
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    goto :goto_b

    .line 1365
    :cond_23
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    goto :goto_b
.end method

.method private parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1370
    const-string v0, "light-text-on-dark-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1371
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 1380
    :goto_a
    return-object v0

    .line 1372
    :cond_b
    const-string v0, "light-text-on-no-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1373
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1374
    :cond_16
    const-string v0, "dark-text-on-light-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1375
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1376
    :cond_21
    const-string v0, "dark-text-on-no-image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1377
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    goto :goto_a

    .line 1380
    :cond_2c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    goto :goto_a
.end method

.method private spliceBrackets(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/Buzz;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".spliceBrackets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1312
    :cond_1e
    :goto_1e
    return-object v3

    .line 1305
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v1, "ans":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1307
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1308
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f .. :try_end_34} :catch_36

    move-result-object v3

    goto :goto_1e

    .line 1309
    .end local v1    # "ans":Ljava/lang/StringBuffer;
    :catch_36
    move-exception v2

    .line 1310
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v4, "failed to splice string. too short."

    invoke-static {v0, v4, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method


# virtual methods
.method public clone(Landroid/content/Context;)Lcom/buzzfeed/android/data/Buzz;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    new-instance v0, Lcom/buzzfeed/android/data/Buzz;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, "buzz":Lcom/buzzfeed/android/data/Buzz;
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    .line 718
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    .line 719
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    .line 720
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    .line 721
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    .line 722
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    .line 723
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    .line 724
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    .line 725
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    .line 727
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    .line 728
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    .line 730
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 732
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 733
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    .line 736
    iget-wide v2, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    iput-wide v2, v0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    .line 737
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    .line 740
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    .line 744
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    .line 746
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    .line 748
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    .line 749
    iget-wide v2, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/android/data/Buzz;->setTimestamp(J)Lcom/buzzfeed/android/data/Buzz;

    .line 750
    iget v1, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    iput v1, v0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    .line 751
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    .line 752
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    .line 757
    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    iput-boolean v1, v0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    .line 758
    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    iput-boolean v1, v0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    .line 759
    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    iput-boolean v1, v0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    .line 760
    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    iput-boolean v1, v0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    .line 761
    iget v1, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    iput v1, v0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    .line 762
    return-object v0
.end method

.method public compareTo(Lcom/buzzfeed/android/data/Buzz;)I
    .registers 4
    .param p1, "buzz"    # Lcom/buzzfeed/android/data/Buzz;

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Buzz;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 24
    check-cast p1, Lcom/buzzfeed/android/data/Buzz;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/Buzz;->compareTo(Lcom/buzzfeed/android/data/Buzz;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 767
    if-ne p0, p1, :cond_5

    .line 839
    :cond_4
    :goto_4
    return v1

    .line 768
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 770
    check-cast v0, Lcom/buzzfeed/android/data/Buzz;

    .line 772
    .local v0, "buzz":Lcom/buzzfeed/android/data/Buzz;
    iget-boolean v3, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    iget-boolean v4, v0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 773
    :cond_1e
    iget-wide v4, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    iget-wide v6, v0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_4

    .line 774
    :cond_28
    iget v3, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    iget v4, v0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    if-eq v3, v4, :cond_30

    move v1, v2

    goto :goto_4

    .line 775
    :cond_30
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    :cond_3e
    move v1, v2

    .line 776
    goto :goto_4

    .line 775
    :cond_40
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    if-nez v3, :cond_3e

    .line 777
    :cond_44
    iget-boolean v3, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    iget-boolean v4, v0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    if-eq v3, v4, :cond_4c

    move v1, v2

    goto :goto_4

    .line 778
    :cond_4c
    iget-boolean v3, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    iget-boolean v4, v0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    if-eq v3, v4, :cond_54

    move v1, v2

    goto :goto_4

    .line 779
    :cond_54
    iget-boolean v3, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    iget-boolean v4, v0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    if-eq v3, v4, :cond_5c

    move v1, v2

    goto :goto_4

    .line 780
    :cond_5c
    iget-wide v4, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    iget-wide v6, v0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_66

    move v1, v2

    goto :goto_4

    .line 781
    :cond_66
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    :cond_74
    move v1, v2

    goto :goto_4

    :cond_76
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    if-nez v3, :cond_74

    .line 782
    :cond_7a
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    :cond_88
    move v1, v2

    goto/16 :goto_4

    :cond_8b
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    if-nez v3, :cond_88

    .line 783
    :cond_8f
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    :cond_9d
    move v1, v2

    goto/16 :goto_4

    :cond_a0
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    if-nez v3, :cond_9d

    .line 784
    :cond_a4
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    :cond_b2
    move v1, v2

    goto/16 :goto_4

    :cond_b5
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    if-nez v3, :cond_b2

    .line 785
    :cond_b9
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    if-eqz v3, :cond_ca

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    :cond_c7
    move v1, v2

    .line 786
    goto/16 :goto_4

    .line 785
    :cond_ca
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    if-nez v3, :cond_c7

    .line 787
    :cond_ce
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    if-eqz v3, :cond_df

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e3

    :cond_dc
    move v1, v2

    .line 788
    goto/16 :goto_4

    .line 787
    :cond_df
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    if-nez v3, :cond_dc

    .line 789
    :cond_e3
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    :cond_f1
    move v1, v2

    .line 790
    goto/16 :goto_4

    .line 789
    :cond_f4
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    if-nez v3, :cond_f1

    .line 791
    :cond_f8
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10d

    :cond_106
    move v1, v2

    goto/16 :goto_4

    :cond_109
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    if-nez v3, :cond_106

    .line 792
    :cond_10d
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    if-eqz v3, :cond_11e

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_122

    :cond_11b
    move v1, v2

    goto/16 :goto_4

    :cond_11e
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    if-nez v3, :cond_11b

    .line 793
    :cond_122
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    if-eqz v3, :cond_133

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_137

    :cond_130
    move v1, v2

    .line 794
    goto/16 :goto_4

    .line 793
    :cond_133
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    if-nez v3, :cond_130

    .line 795
    :cond_137
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    if-eqz v3, :cond_148

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14c

    :cond_145
    move v1, v2

    .line 796
    goto/16 :goto_4

    .line 795
    :cond_148
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    if-nez v3, :cond_145

    .line 797
    :cond_14c
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    if-eqz v3, :cond_15d

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    :cond_15a
    move v1, v2

    .line 798
    goto/16 :goto_4

    .line 797
    :cond_15d
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    if-nez v3, :cond_15a

    .line 799
    :cond_161
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_172

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_176

    :cond_16f
    move v1, v2

    .line 800
    goto/16 :goto_4

    .line 799
    :cond_172
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-nez v3, :cond_16f

    .line 801
    :cond_176
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_187

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18b

    :cond_184
    move v1, v2

    .line 802
    goto/16 :goto_4

    .line 801
    :cond_187
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-nez v3, :cond_184

    .line 803
    :cond_18b
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    if-eqz v3, :cond_19c

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a0

    :cond_199
    move v1, v2

    goto/16 :goto_4

    :cond_19c
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    if-nez v3, :cond_199

    .line 804
    :cond_1a0
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    if-eqz v3, :cond_1b1

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b5

    :cond_1ae
    move v1, v2

    .line 805
    goto/16 :goto_4

    .line 804
    :cond_1b1
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    if-nez v3, :cond_1ae

    .line 806
    :cond_1b5
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-eqz v3, :cond_1c6

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ca

    :cond_1c3
    move v1, v2

    .line 807
    goto/16 :goto_4

    .line 806
    :cond_1c6
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-nez v3, :cond_1c3

    .line 808
    :cond_1ca
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-eqz v3, :cond_1db

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1df

    :cond_1d8
    move v1, v2

    .line 809
    goto/16 :goto_4

    .line 808
    :cond_1db
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-nez v3, :cond_1d8

    .line 810
    :cond_1df
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-eqz v3, :cond_1f0

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f4

    :cond_1ed
    move v1, v2

    .line 811
    goto/16 :goto_4

    .line 810
    :cond_1f0
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-nez v3, :cond_1ed

    .line 812
    :cond_1f4
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-eqz v3, :cond_205

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_209

    :cond_202
    move v1, v2

    .line 813
    goto/16 :goto_4

    .line 812
    :cond_205
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-nez v3, :cond_202

    .line 814
    :cond_209
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    if-eqz v3, :cond_21a

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21e

    :cond_217
    move v1, v2

    .line 815
    goto/16 :goto_4

    .line 814
    :cond_21a
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    if-nez v3, :cond_217

    .line 816
    :cond_21e
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    if-eqz v3, :cond_22f

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_233

    :cond_22c
    move v1, v2

    goto/16 :goto_4

    :cond_22f
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    if-nez v3, :cond_22c

    .line 817
    :cond_233
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    if-eqz v3, :cond_244

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_248

    :cond_241
    move v1, v2

    .line 818
    goto/16 :goto_4

    .line 817
    :cond_244
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    if-nez v3, :cond_241

    .line 819
    :cond_248
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    if-eqz v3, :cond_259

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25d

    :cond_256
    move v1, v2

    goto/16 :goto_4

    :cond_259
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    if-nez v3, :cond_256

    .line 820
    :cond_25d
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    if-eqz v3, :cond_26e

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_272

    :cond_26b
    move v1, v2

    goto/16 :goto_4

    :cond_26e
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    if-nez v3, :cond_26b

    .line 821
    :cond_272
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    if-eqz v3, :cond_283

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_287

    :cond_280
    move v1, v2

    goto/16 :goto_4

    :cond_283
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    if-nez v3, :cond_280

    .line 822
    :cond_287
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    if-eqz v3, :cond_298

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29c

    :cond_295
    move v1, v2

    goto/16 :goto_4

    :cond_298
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    if-nez v3, :cond_295

    .line 823
    :cond_29c
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    if-eqz v3, :cond_2ad

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b1

    :cond_2aa
    move v1, v2

    .line 824
    goto/16 :goto_4

    .line 823
    :cond_2ad
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    if-nez v3, :cond_2aa

    .line 825
    :cond_2b1
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    if-eqz v3, :cond_2c2

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c6

    :cond_2bf
    move v1, v2

    .line 826
    goto/16 :goto_4

    .line 825
    :cond_2c2
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    if-nez v3, :cond_2bf

    .line 827
    :cond_2c6
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    if-eqz v3, :cond_2d7

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2db

    :cond_2d4
    move v1, v2

    .line 828
    goto/16 :goto_4

    .line 827
    :cond_2d7
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    if-nez v3, :cond_2d4

    .line 829
    :cond_2db
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    if-eqz v3, :cond_2ec

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f0

    :cond_2e9
    move v1, v2

    .line 830
    goto/16 :goto_4

    .line 829
    :cond_2ec
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    if-nez v3, :cond_2e9

    .line 831
    :cond_2f0
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v3, :cond_301

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_305

    :cond_2fe
    move v1, v2

    .line 832
    goto/16 :goto_4

    .line 831
    :cond_301
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    if-nez v3, :cond_2fe

    .line 833
    :cond_305
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    if-eqz v3, :cond_316

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31a

    :cond_313
    move v1, v2

    goto/16 :goto_4

    :cond_316
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    if-nez v3, :cond_313

    .line 834
    :cond_31a
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    if-eqz v3, :cond_32b

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32f

    :cond_328
    move v1, v2

    .line 835
    goto/16 :goto_4

    .line 834
    :cond_32b
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    if-nez v3, :cond_328

    .line 836
    :cond_32f
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-eqz v3, :cond_340

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_344

    :cond_33d
    move v1, v2

    goto/16 :goto_4

    :cond_340
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-nez v3, :cond_33d

    .line 837
    :cond_344
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    if-eqz v3, :cond_355

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_359

    :cond_352
    move v1, v2

    goto/16 :goto_4

    :cond_355
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    if-nez v3, :cond_352

    .line 838
    :cond_359
    iget v3, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    iget v4, v0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto/16 :goto_4
.end method

.method public generateJson()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 1258
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1260
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string v2, "id"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1261
    :cond_10
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    if-eqz v2, :cond_1b

    const-string v2, "name"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1262
    :cond_1b
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    if-eqz v2, :cond_26

    const-string v2, "blurb"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1263
    :cond_26
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v2, :cond_32

    const-string/jumbo v2, "thumbnail"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    :cond_32
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "uri"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    :cond_3e
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    if-eqz v2, :cond_49

    const-string v2, "link"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1266
    :cond_49
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    if-eqz v2, :cond_54

    const-string v2, "lastUpdated"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    :cond_54
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    if-eqz v2, :cond_5f

    const-string v2, "category"

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5f} :catch_60

    .line 1272
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_5f
    :goto_5f
    return-object v1

    .line 1268
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_60
    move-exception v0

    .line 1269
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/buzzfeed/android/data/Buzz;->TAG:Ljava/lang/String;

    const-string v3, "Error trying to generate JSON from Buzz"

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    const/4 v1, 0x0

    goto :goto_5f
.end method

.method public getBadges()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarked()J
    .registers 3

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    return-wide v0
.end method

.method public getBulletedDekHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->bulletedDekHtml:Ljava/lang/String;

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
    .line 330
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->bulletedDeks:Ljava/util/List;

    return-object v0
.end method

.method public getBuzzId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    return-object v0
.end method

.method public getBylinePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContributors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/Buzz$Contributor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getGATrackUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BuzzUtils;->removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBlurb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlDblBig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlDblWide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlSmall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlStandard()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlWide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressions()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumComments()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOuserid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    return-object v0
.end method

.method public getParentUri()Ljava/lang/String;
    .registers 4

    .prologue
    .line 285
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 286
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "firstSlash":I
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 289
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
    .line 293
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 294
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, "secondSlash":I
    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 297
    .end local v0    # "secondSlash":I
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getPosition()Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    return-object v0
.end method

.method public getPoundHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    return-object v0
.end method

.method public getSplashColorSchemer()Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    return-object v0
.end method

.method public getSponsorDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorUserImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 1331
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1332
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1333
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1336
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_1f
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1339
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_2c
    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 643
    iget-wide v0, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

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
    .line 1348
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1349
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1350
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_12
    return-object v0
.end method

.method public getTruncatedBlurb()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x50

    .line 218
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_25

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    goto :goto_24
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtmTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    return-object v0
.end method

.method public hasBulletedDek()Z
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->bulletedDekHtml:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasBuzzId()Z
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    const-string/jumbo v1, "viewBuzzUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hasLastUpdated()Z
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hasLightBackground()Z
    .registers 3

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

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
    .line 1385
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

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
    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    if-eqz v2, :cond_251

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 845
    .local v0, "result":I
    :goto_e
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    if-eqz v2, :cond_254

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int v0, v4, v2

    .line 846
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    if-eqz v2, :cond_257

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_28
    add-int v0, v4, v2

    .line 847
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    if-eqz v2, :cond_25a

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_36
    add-int v0, v4, v2

    .line 848
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    if-eqz v2, :cond_25d

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_44
    add-int v0, v4, v2

    .line 849
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    if-eqz v2, :cond_260

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_52
    add-int v0, v4, v2

    .line 850
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    if-eqz v2, :cond_263

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_60
    add-int v0, v4, v2

    .line 851
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    if-eqz v2, :cond_266

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6e
    add-int v0, v4, v2

    .line 852
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    if-eqz v2, :cond_269

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7c
    add-int v0, v4, v2

    .line 853
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    if-eqz v2, :cond_26c

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8a
    add-int v0, v4, v2

    .line 854
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    if-eqz v2, :cond_26f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_98
    add-int v0, v4, v2

    .line 855
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    if-eqz v2, :cond_272

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a6
    add-int v0, v4, v2

    .line 856
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    if-eqz v2, :cond_275

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b4
    add-int v0, v4, v2

    .line 857
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    if-eqz v2, :cond_278

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c2
    add-int v0, v4, v2

    .line 858
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    if-eqz v2, :cond_27b

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->hashCode()I

    move-result v2

    :goto_d0
    add-int v0, v4, v2

    .line 859
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    if-eqz v2, :cond_27e

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->hashCode()I

    move-result v2

    :goto_de
    add-int v0, v4, v2

    .line 860
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_281

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_ec
    add-int v0, v4, v2

    .line 861
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    if-eqz v2, :cond_284

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_fa
    add-int v0, v4, v2

    .line 862
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    if-eqz v2, :cond_287

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_108
    add-int v0, v4, v2

    .line 863
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    iget-wide v6, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 864
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    if-eqz v2, :cond_28a

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_121
    add-int v0, v4, v2

    .line 865
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    if-eqz v2, :cond_28d

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12f
    add-int v0, v4, v2

    .line 866
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    if-eqz v2, :cond_290

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_13d
    add-int v0, v4, v2

    .line 867
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    add-int v0, v2, v4

    .line 868
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    if-eqz v2, :cond_293

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_151
    add-int v0, v4, v2

    .line 869
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_296

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15f
    add-int v0, v4, v2

    .line 870
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_299

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16d
    add-int v0, v4, v2

    .line 871
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    if-eqz v2, :cond_29c

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17b
    add-int v0, v4, v2

    .line 872
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    if-eqz v2, :cond_29f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_189
    add-int v0, v4, v2

    .line 873
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    if-eqz v2, :cond_2a2

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_197
    add-int v0, v4, v2

    .line 874
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    if-eqz v2, :cond_2a5

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a5
    add-int v0, v4, v2

    .line 875
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    if-eqz v2, :cond_2a8

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b3
    add-int v0, v4, v2

    .line 876
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    if-eqz v2, :cond_2ab

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1c1
    add-int v0, v4, v2

    .line 877
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    if-eqz v2, :cond_2ae

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1cf
    add-int v0, v4, v2

    .line 878
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    if-eqz v2, :cond_2b1

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1dd
    add-int v0, v4, v2

    .line 879
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    if-eqz v2, :cond_2b4

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1eb
    add-int v0, v4, v2

    .line 880
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    if-eqz v2, :cond_2b7

    move v2, v3

    :goto_1f4
    add-int v0, v4, v2

    .line 881
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    if-eqz v2, :cond_2ba

    move v2, v3

    :goto_1fd
    add-int v0, v4, v2

    .line 882
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    if-eqz v2, :cond_2bd

    move v2, v3

    :goto_206
    add-int v0, v4, v2

    .line 883
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    if-eqz v4, :cond_2c0

    :goto_20e
    add-int v0, v2, v3

    .line 884
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    iget-wide v6, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 885
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    if-eqz v2, :cond_2c3

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_227
    add-int v0, v3, v2

    .line 886
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    if-eqz v2, :cond_2c6

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_235
    add-int v0, v3, v2

    .line 887
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    if-eqz v3, :cond_243

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_243
    add-int v0, v2, v1

    .line 888
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    iget v3, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 889
    return v0

    .end local v0    # "result":I
    :cond_251
    move v0, v1

    .line 844
    goto/16 :goto_e

    .restart local v0    # "result":I
    :cond_254
    move v2, v1

    .line 845
    goto/16 :goto_1a

    :cond_257
    move v2, v1

    .line 846
    goto/16 :goto_28

    :cond_25a
    move v2, v1

    .line 847
    goto/16 :goto_36

    :cond_25d
    move v2, v1

    .line 848
    goto/16 :goto_44

    :cond_260
    move v2, v1

    .line 849
    goto/16 :goto_52

    :cond_263
    move v2, v1

    .line 850
    goto/16 :goto_60

    :cond_266
    move v2, v1

    .line 851
    goto/16 :goto_6e

    :cond_269
    move v2, v1

    .line 852
    goto/16 :goto_7c

    :cond_26c
    move v2, v1

    .line 853
    goto/16 :goto_8a

    :cond_26f
    move v2, v1

    .line 854
    goto/16 :goto_98

    :cond_272
    move v2, v1

    .line 855
    goto/16 :goto_a6

    :cond_275
    move v2, v1

    .line 856
    goto/16 :goto_b4

    :cond_278
    move v2, v1

    .line 857
    goto/16 :goto_c2

    :cond_27b
    move v2, v1

    .line 858
    goto/16 :goto_d0

    :cond_27e
    move v2, v1

    .line 859
    goto/16 :goto_de

    :cond_281
    move v2, v1

    .line 860
    goto/16 :goto_ec

    :cond_284
    move v2, v1

    .line 861
    goto/16 :goto_fa

    :cond_287
    move v2, v1

    .line 862
    goto/16 :goto_108

    :cond_28a
    move v2, v1

    .line 864
    goto/16 :goto_121

    :cond_28d
    move v2, v1

    .line 865
    goto/16 :goto_12f

    :cond_290
    move v2, v1

    .line 866
    goto/16 :goto_13d

    :cond_293
    move v2, v1

    .line 868
    goto/16 :goto_151

    :cond_296
    move v2, v1

    .line 869
    goto/16 :goto_15f

    :cond_299
    move v2, v1

    .line 870
    goto/16 :goto_16d

    :cond_29c
    move v2, v1

    .line 871
    goto/16 :goto_17b

    :cond_29f
    move v2, v1

    .line 872
    goto/16 :goto_189

    :cond_2a2
    move v2, v1

    .line 873
    goto/16 :goto_197

    :cond_2a5
    move v2, v1

    .line 874
    goto/16 :goto_1a5

    :cond_2a8
    move v2, v1

    .line 875
    goto/16 :goto_1b3

    :cond_2ab
    move v2, v1

    .line 876
    goto/16 :goto_1c1

    :cond_2ae
    move v2, v1

    .line 877
    goto/16 :goto_1cf

    :cond_2b1
    move v2, v1

    .line 878
    goto/16 :goto_1dd

    :cond_2b4
    move v2, v1

    .line 879
    goto/16 :goto_1eb

    :cond_2b7
    move v2, v1

    .line 880
    goto/16 :goto_1f4

    :cond_2ba
    move v2, v1

    .line 881
    goto/16 :goto_1fd

    :cond_2bd
    move v2, v1

    .line 882
    goto/16 :goto_206

    :cond_2c0
    move v3, v1

    .line 883
    goto/16 :goto_20e

    :cond_2c3
    move v2, v1

    .line 885
    goto/16 :goto_227

    :cond_2c6
    move v2, v1

    .line 886
    goto/16 :goto_235
.end method

.method public isAd()Z
    .registers 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    return v0
.end method

.method public isAllowContributions()Z
    .registers 2

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    return v0
.end method

.method public isBookmarked()Z
    .registers 5

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

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

.method public isInlineAd()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    return v0
.end method

.method public isInternal()Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 706
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 707
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getBlurb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getBlurb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 708
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 709
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlWide()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 710
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getImageUrlDblWide()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 711
    :cond_5a
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 712
    :cond_70
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->isInternal()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Buzz;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    :cond_86
    const/4 v0, 0x1

    :goto_87
    return v0

    :cond_88
    const/4 v0, 0x0

    goto :goto_87
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
    .line 1254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 1255
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 34
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1089
    const-string v28, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2ec

    const-string v28, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2ec

    .line 1090
    const-string v28, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1096
    :cond_29
    :goto_29
    const-string v28, "badges"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1097
    .local v20, "rawBadges":Lorg/json/JSONArray;
    if-eqz v20, :cond_48

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->spliceBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setBadges(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1098
    :cond_48
    const-string v28, "flags"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1099
    .local v21, "rawFlags":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->spliceBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setFlags(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1100
    const-string v28, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getName()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_82

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_94

    .line 1102
    :cond_82
    const-string/jumbo v28, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1104
    :cond_94
    const-string v28, "blurb"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setBlurb(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1105
    const-string/jumbo v28, "thumbnail"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1106
    const-string v28, "campaign_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_317

    .line 1107
    const-string v28, "campaign_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1111
    :goto_d4
    const-string v28, "published_unix"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_fd

    .line 1113
    :try_start_e0
    const-string v28, "published_unix"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/Buzz;->setTimestamp(J)Lcom/buzzfeed/android/data/Buzz;
    :try_end_fd
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_fd} :catch_32b

    .line 1119
    :cond_fd
    :goto_fd
    const-string v28, "form"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setForm(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1120
    const-string v28, "link"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_139

    .line 1121
    const-string v28, "link"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setLink(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getUri()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_139

    .line 1123
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    .line 1126
    :cond_139
    const-string v28, "last_updated"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_343

    const-string v28, "0"

    :goto_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1127
    const-string v28, "promotions"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1fd

    .line 1128
    const-string v28, "promotions"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1129
    .local v19, "promotionsObj":Lorg/json/JSONObject;
    const-string v28, "extra_fields"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1fd

    .line 1130
    const-string v28, "extra_fields"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 1131
    .local v12, "extraFieldsObj":Lorg/json/JSONObject;
    const-string v28, "position"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setSplashPosition(Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;)Lcom/buzzfeed/android/data/Buzz;

    .line 1132
    const-string v28, "size"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1133
    .local v22, "size":Ljava/lang/String;
    const/16 v13, 0x1c

    .line 1135
    .local v13, "fontSize":I
    :try_start_19f
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a2} :catch_34f

    move-result v13

    .line 1139
    :goto_1a3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1140
    const-string v28, "color"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setSplashColorScheme(Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;)Lcom/buzzfeed/android/data/Buzz;

    .line 1141
    const-string/jumbo v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1142
    .local v25, "title":Ljava/lang/String;
    if-eqz v25, :cond_36e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_36e

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1147
    :goto_1dd
    const-string v28, "label"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1fd

    .line 1148
    const-string v28, "label"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string/jumbo v29, "value"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1152
    .end local v12    # "extraFieldsObj":Lorg/json/JSONObject;
    .end local v13    # "fontSize":I
    .end local v19    # "promotionsObj":Lorg/json/JSONObject;
    .end local v22    # "size":Ljava/lang/String;
    .end local v25    # "title":Ljava/lang/String;
    :cond_1fd
    const-string v28, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e9

    .line 1153
    const-string v28, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1154
    .local v14, "headerObj":Lorg/json/JSONObject;
    const-string v28, "blurb"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setHeaderBlurb(Ljava/lang/String;)V

    .line 1155
    const-string v28, "name"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setHeaderName(Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v28, "users"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_382

    .line 1157
    const-string/jumbo v28, "users"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 1158
    .local v27, "usersArr":Lorg/json/JSONArray;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v22

    .line 1159
    .local v22, "size":I
    if-lez v22, :cond_256

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    .line 1160
    :cond_256
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_257
    move/from16 v0, v22

    if-ge v15, v0, :cond_382

    .line 1161
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 1162
    .local v26, "userObj":Lorg/json/JSONObject;
    if-eqz v26, :cond_2e8

    .line 1163
    new-instance v9, Lcom/buzzfeed/android/data/Buzz$Contributor;

    invoke-direct {v9}, Lcom/buzzfeed/android/data/Buzz$Contributor;-><init>()V

    .line 1164
    .local v9, "contributor":Lcom/buzzfeed/android/data/Buzz$Contributor;
    const-string/jumbo v28, "user_page"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/buzzfeed/android/data/Buzz$Contributor;->setUserPage(Ljava/lang/String;)V

    .line 1165
    const-string v28, "byline_desc"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/buzzfeed/android/data/Buzz$Contributor;->setBylineDesc(Ljava/lang/String;)V

    .line 1166
    const-string v28, "display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/buzzfeed/android/data/Buzz$Contributor;->setDisplayName(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v28, "user_image"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "avatarUrl":Ljava/lang/String;
    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    .line 1170
    .local v16, "imageUrls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v28, "_large.jpg"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2d8

    .line 1173
    const-string v28, ".jpg"

    const-string v29, "_large.jpg"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->getImageConversionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_2d8
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/buzzfeed/android/data/Buzz$Contributor;->setUserImages(Ljava/util/Stack;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v4    # "avatarUrl":Ljava/lang/String;
    .end local v9    # "contributor":Lcom/buzzfeed/android/data/Buzz$Contributor;
    .end local v16    # "imageUrls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :cond_2e8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_257

    .line 1092
    .end local v14    # "headerObj":Lorg/json/JSONObject;
    .end local v15    # "i":I
    .end local v20    # "rawBadges":Lorg/json/JSONArray;
    .end local v21    # "rawFlags":Ljava/lang/String;
    .end local v22    # "size":I
    .end local v26    # "userObj":Lorg/json/JSONObject;
    .end local v27    # "usersArr":Lorg/json/JSONArray;
    :cond_2ec
    const-string v28, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    const-string v28, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_29

    .line 1093
    const-string v28, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    goto/16 :goto_29

    .line 1109
    .restart local v20    # "rawBadges":Lorg/json/JSONArray;
    .restart local v21    # "rawFlags":Ljava/lang/String;
    :cond_317
    const-string/jumbo v28, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    goto/16 :goto_d4

    .line 1114
    :catch_32b
    move-exception v11

    .line 1115
    .local v11, "e":Ljava/lang/NumberFormatException;
    sget-object v28, Lcom/buzzfeed/android/data/Buzz;->TAG:Ljava/lang/String;

    const-string v29, "failed to convert timestamp to long"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    goto/16 :goto_fd

    .line 1126
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_343
    const-string v28, "last_updated"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_14b

    .line 1136
    .restart local v12    # "extraFieldsObj":Lorg/json/JSONObject;
    .restart local v13    # "fontSize":I
    .restart local v19    # "promotionsObj":Lorg/json/JSONObject;
    .local v22, "size":Ljava/lang/String;
    :catch_34f
    move-exception v11

    .line 1137
    .local v11, "e":Ljava/lang/Exception;
    sget-object v28, Lcom/buzzfeed/android/data/Buzz;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error parsing font size: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a3

    .line 1145
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v25    # "title":Ljava/lang/String;
    :cond_36e
    const-string/jumbo v28, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    goto/16 :goto_1dd

    .line 1181
    .end local v12    # "extraFieldsObj":Lorg/json/JSONObject;
    .end local v13    # "fontSize":I
    .end local v19    # "promotionsObj":Lorg/json/JSONObject;
    .end local v22    # "size":Ljava/lang/String;
    .end local v25    # "title":Ljava/lang/String;
    .restart local v14    # "headerObj":Lorg/json/JSONObject;
    :cond_382
    const-string v28, "special_blurb"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e9

    .line 1182
    const-string v28, "special_blurb"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 1183
    .local v23, "specialBlurbObj":Lorg/json/JSONObject;
    const-string/jumbo v28, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e9

    const-string/jumbo v28, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "bulleted_list"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e9

    .line 1184
    const-string/jumbo v28, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e9

    .line 1185
    const-string/jumbo v28, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "bullets"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/android/data/Buzz;->bulletedDekHtml:Ljava/lang/String;

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/Buzz;->bulletedDekHtml:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/buzzfeed/android/util/BulletedDekParser;->getBulletedDek(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setBulletedDeks(Ljava/util/List;)V

    .line 1191
    .end local v14    # "headerObj":Lorg/json/JSONObject;
    .end local v23    # "specialBlurbObj":Lorg/json/JSONObject;
    :cond_3e9
    const-string v28, "images"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5a1

    .line 1192
    const-string v28, "images"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1193
    .local v17, "imagesObj":Lorg/json/JSONObject;
    const-string v28, "small"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlSmall(Ljava/lang/String;)V

    .line 1194
    const-string v28, "standard"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlStandard(Ljava/lang/String;)V

    .line 1195
    const-string v28, "big"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlBig(Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v28, "wide"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlWide(Ljava/lang/String;)V

    .line 1197
    const-string v28, "dblbig"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlDblBig(Ljava/lang/String;)V

    .line 1198
    const-string v28, "dblwide"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlDblWide(Ljava/lang/String;)V

    .line 1211
    .end local v17    # "imagesObj":Lorg/json/JSONObject;
    :cond_466
    :goto_466
    const-string v28, "allow_contributions"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_48d

    .line 1212
    const/16 v28, 0x1

    const-string v29, "allow_contributions"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_618

    const/16 v28, 0x1

    :goto_486
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setAllowContributions(Z)Lcom/buzzfeed/android/data/Buzz;

    .line 1214
    :cond_48d
    const-string v28, "category"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4aa

    const-string v28, "category"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1215
    :cond_4aa
    const-string v28, "category_name"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1216
    .local v8, "categoryName":Ljava/lang/String;
    if-eqz v8, :cond_4c9

    const-string v28, "VerticalFeature"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4c9

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/buzzfeed/android/data/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1218
    :cond_4c9
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_4f0

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v28

    const-string v29, "Breaking"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_4e7

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v28

    const-string v29, "Politics"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4f0

    .line 1219
    :cond_4e7
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setAllowContributions(Z)Lcom/buzzfeed/android/data/Buzz;

    .line 1221
    :cond_4f0
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_50b

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getCategory()Ljava/lang/String;

    move-result-object v28

    const-string v29, "Advertiser"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_50b

    .line 1222
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setIsAd(Z)Lcom/buzzfeed/android/data/Buzz;

    .line 1227
    :cond_50b
    const-string v28, "date_added"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    mul-long v6, v28, v30

    .line 1228
    .local v6, "bookmarked":J
    const-wide/16 v28, 0x0

    cmp-long v28, v6, v28

    if-lez v28, :cond_524

    .line 1229
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/buzzfeed/android/data/Buzz;->setBookmarked(J)Lcom/buzzfeed/android/data/Buzz;

    .line 1231
    :cond_524
    const-string v28, "date_added"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1233
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 1235
    const-string v28, "impressions"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_559

    .line 1236
    const-string v28, "impressions"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImpressions(I)V

    .line 1239
    :cond_559
    const-string/jumbo v28, "utm_term"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_577

    .line 1240
    const-string/jumbo v28, "utm_term"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    .line 1243
    :cond_577
    const-string v28, "byline_prefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, "bylinePrefixName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_58c

    .line 1245
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/buzzfeed/android/data/Buzz;->setBylinePrefix(Ljava/lang/String;)V

    .line 1248
    :cond_58c
    invoke-virtual/range {p0 .. p1}, Lcom/buzzfeed/android/data/Buzz;->parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V

    .line 1249
    const-string v28, "comments_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setNumComments(I)Lcom/buzzfeed/android/data/Buzz;

    .line 1251
    return-void

    .line 1202
    .end local v5    # "bylinePrefixName":Ljava/lang/String;
    .end local v6    # "bookmarked":J
    .end local v8    # "categoryName":Ljava/lang/String;
    :cond_5a1
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/Buzz;->getThumbnail()Ljava/lang/String;

    move-result-object v24

    .line 1203
    .local v24, "thumbnailURL":Ljava/lang/String;
    if-eqz v24, :cond_466

    .line 1204
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlStandard(Ljava/lang/String;)V

    .line 1205
    const-string v28, "."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1206
    .local v10, "dot":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1207
    .local v18, "imgFormat":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_big"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlBig(Ljava/lang/String;)V

    .line 1208
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_dblbig"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Buzz;->setImageUrlDblBig(Ljava/lang/String;)V

    goto/16 :goto_466

    .line 1212
    .end local v10    # "dot":I
    .end local v18    # "imgFormat":Ljava/lang/String;
    .end local v24    # "thumbnailURL":Ljava/lang/String;
    :cond_618
    const/16 v28, 0x0

    goto/16 :goto_486
.end method

.method protected parseSponsorNameAndImageUrl(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 1281
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, "sponsorDisplayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1283
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->setSponsorDisplayName(Ljava/lang/String;)V

    .line 1291
    :cond_f
    :goto_f
    const-string/jumbo v2, "user_image"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "sponsorUserImageUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1293
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/data/Buzz;->setSponsorUserImageUrl(Ljava/lang/String;)V

    .line 1295
    :cond_1f
    return-void

    .line 1285
    .end local v1    # "sponsorUserImageUrl":Ljava/lang/String;
    :cond_20
    const-string/jumbo v2, "username"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1287
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/Buzz;->setSponsorDisplayName(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setAllowContributions(Z)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "allowContributions"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    .line 631
    return-object p0
.end method

.method public setBadges(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "badges"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public setBlurb(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "blurb"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public setBookmarked(J)Lcom/buzzfeed/android/data/Buzz;
    .registers 4
    .param p1, "bookmarked"    # J

    .prologue
    .line 464
    iput-wide p1, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    .line 465
    return-object p0
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
    .line 326
    .local p1, "html":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->bulletedDeks:Ljava/util/List;

    .line 327
    return-void
.end method

.method public setBylinePrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "bylinePrefix"    # Ljava/lang/String;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    .line 640
    return-void
.end method

.method public setCategory(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public setContributors(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/Buzz$Contributor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "contributors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/android/data/Buzz$Contributor;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    .line 347
    return-void
.end method

.method public setFlags(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "flags"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setForm(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public setHeaderBlurb(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerBlurb"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public setImageUrlBig(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlBig"    # Ljava/lang/String;

    .prologue
    .line 523
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 524
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    .line 529
    :goto_b
    return-void

    .line 526
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    goto :goto_b

    .line 527
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImageUrlDblBig(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlDblBig"    # Ljava/lang/String;

    .prologue
    .line 549
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 550
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    .line 556
    :goto_b
    return-void

    .line 552
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 553
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    goto :goto_b

    .line 554
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImageUrlDblWide(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlDblWide"    # Ljava/lang/String;

    .prologue
    .line 482
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 483
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    .line 489
    :goto_b
    return-void

    .line 485
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 486
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    goto :goto_b

    .line 487
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImageUrlSmall(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 496
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 497
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    .line 502
    :goto_b
    return-void

    .line 499
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    goto :goto_b

    .line 500
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImageUrlStandard(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlStandard"    # Ljava/lang/String;

    .prologue
    .line 509
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 510
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    .line 516
    :goto_b
    return-void

    .line 512
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 513
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    goto :goto_b

    .line 514
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImageUrlWide(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrlWide"    # Ljava/lang/String;

    .prologue
    .line 536
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 537
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    .line 542
    :goto_b
    return-void

    .line 539
    :cond_c
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    goto :goto_b

    .line 540
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    goto :goto_b
.end method

.method public setImpressions(I)V
    .registers 2
    .param p1, "impressions"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    .line 600
    return-void
.end method

.method protected setInlineAd(Z)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "isLoadedAd"    # Z

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    .line 591
    return-object p0
.end method

.method protected setIsAd(Z)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "isAd"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    .line 582
    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public setNumComments(I)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "numComments"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    .line 196
    return-object p0
.end method

.method public setOid(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public setOuserid(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "ouserid"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public setPoundHash(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setSplashColorScheme(Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "color"    # Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 429
    return-object p0
.end method

.method public setSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/Buzz;->parseSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 424
    return-object p0
.end method

.method public setSplashPosition(Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "position"    # Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 415
    return-object p0
.end method

.method public setSplashPosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 3
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/Buzz;->parseHeadlinePosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 410
    return-object p0
.end method

.method public setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public setSplashTextSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public setSponsorDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sponsorDisplayName"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setSponsorUserImageUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "sponsorUserImageUrl"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    .line 615
    :goto_9
    return-void

    .line 610
    :cond_a
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 611
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    goto :goto_9

    .line 613
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    goto :goto_9
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 4
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_6

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    .line 236
    :goto_5
    return-object p0

    .line 233
    :cond_6
    sget-object v0, Lcom/buzzfeed/android/data/Buzz;->httpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    goto :goto_5

    .line 234
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://img.buzzfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    goto :goto_5
.end method

.method public setTimestamp(J)Lcom/buzzfeed/android/data/Buzz;
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 679
    iput-wide p1, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    .line 680
    invoke-direct {p0}, Lcom/buzzfeed/android/data/Buzz;->formatTimestamp()V

    .line 681
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    .line 447
    return-object p0
.end method

.method public setTrackUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "trackUri"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    .line 359
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setUtmTerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "utmTerm"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buzz{link=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blurb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->blurb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ouserid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->ouserid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", form=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->form:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->trackUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buzzId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->buzzId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashColorScheme:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashCornerPosition:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->splashTextSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bookmarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/android/data/Buzz;->bookmarked:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerBlurb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->headerBlurb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->contributors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/Buzz;->impressions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bylinePrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->bylinePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sponsorDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sponsorImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->sponsorUserImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlSmall=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlStandard=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlStandard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlBig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlWide=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlWide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlDblBig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrlDblWide=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->imageUrlDblWide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", badges=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->badges:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInlineAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isInlineAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdvertiser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowContributions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Buzz;->allowContributions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/android/data/Buzz;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formattedTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->formattedTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poundHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->poundHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utmTerm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz;->utmTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numComments=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/Buzz;->numComments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
