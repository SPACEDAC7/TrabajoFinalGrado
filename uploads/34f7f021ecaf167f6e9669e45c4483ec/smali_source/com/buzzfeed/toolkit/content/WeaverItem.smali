.class public Lcom/buzzfeed/toolkit/content/WeaverItem;
.super Ljava/lang/Object;
.source "WeaverItem.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BreakingNewsContent;
.implements Lcom/buzzfeed/toolkit/content/PackageContent;
.implements Lcom/buzzfeed/toolkit/content/PostContent;
.implements Lcom/buzzfeed/toolkit/content/ShowListContent;
.implements Lcom/buzzfeed/toolkit/content/VideoContent;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Video;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Link;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Author;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;,
        Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Author;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundImageUrl:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private commentsEnabled:Z

.field private createdAt:Ljava/lang/String;

.field private dataSource:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_embedded"
    .end annotation
.end field

.field private flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private isBookmarked:J

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Link;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private sourceUri:Ljava/lang/String;

.field private sourceUriFormatted:Ljava/lang/String;

.field private stats:Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;

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

.field private thumbnailUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private treatments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private updatedAt:Ljava/lang/String;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/buzzfeed/toolkit/content/WeaverItem;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private formatSourceUri()Ljava/lang/String;
    .registers 5

    .prologue
    .line 409
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 411
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    const-string v2, ".com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ".com/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 412
    .local v0, "startOfSlash":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 414
    .end local v0    # "startOfSlash":I
    :goto_30
    return-object v1

    :cond_31
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    goto :goto_30
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 76
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    .line 77
    const-class v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    new-instance v2, Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;-><init>(Lcom/buzzfeed/toolkit/content/WeaverItem$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 78
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeBooleanAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 79
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeBooleanAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 80
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeLongAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 81
    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeLongAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 82
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeIntegerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 83
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeIntegerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    return-object v1
.end method

.method private parseTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "df1":Ljava/text/DateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 458
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_14} :catch_16

    move-result-object v2

    .line 460
    :goto_15
    return-object v2

    .line 459
    :catch_16
    move-exception v1

    .line 460
    .local v1, "e":Ljava/text/ParseException;
    const/4 v2, 0x0

    goto :goto_15
.end method


# virtual methods
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
    .line 338
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b
.end method

.method public getAuthorDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 389
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->getName()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 370
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->getId()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getAuthorUserPage()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 378
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->getLinks()Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "links":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem$Link;>;"
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 380
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 383
    .end local v0    # "links":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem$Link;>;"
    :goto_2b
    return-object v1

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->backgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 5

    .prologue
    .line 436
    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->createdAt:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 437
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_c
    return-wide v2

    :cond_d
    const-wide/16 v2, 0x0

    goto :goto_c
.end method

.method public getDataSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()Ljava/util/List;
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
    .line 480
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageStack(F)Ljava/util/Stack;
    .registers 7
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
    .line 569
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 570
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_62

    .line 571
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    .line 572
    .local v2, "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    # getter for: Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;

    move-result-object v0

    .line 573
    .local v0, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "small"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 574
    const-string v3, "small"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2f
    const-string v3, "standard"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 577
    const-string v3, "standard"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_40
    const-string v3, "big"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 580
    const-string v3, "big"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_51
    const-string v3, "dblbig"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 583
    const-string v3, "dblbig"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :cond_62
    return-object v1
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    const/4 v0, 0x0

    .line 333
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->updatedAt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_9
.end method

.method public getLinks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->links:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsAlert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->mPackageItems:Ljava/util/List;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->createdAt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 8

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getSourceUri()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 300
    .end local v2    # "uri":Ljava/lang/String;
    :goto_6
    return-object v2

    .line 284
    .restart local v2    # "uri":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    .line 285
    .local v0, "facebookLink":Ljava/lang/String;
    const/4 v3, 0x0

    .line 286
    .local v3, "youtubeLink":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;

    .line 287
    .local v1, "link":Lcom/buzzfeed/toolkit/content/WeaverItem$Link;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getLinkText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 288
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 289
    :cond_2e
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getLinkText()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "youtube"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 290
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 293
    .end local v1    # "link":Lcom/buzzfeed/toolkit/content/WeaverItem$Link;
    :cond_40
    if-eqz v0, :cond_44

    move-object v2, v0

    .line 294
    goto :goto_6

    .line 296
    :cond_44
    if-eqz v3, :cond_48

    move-object v2, v3

    .line 297
    goto :goto_6

    .line 300
    :cond_48
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->hasShows()Z

    move-result v0

    if-nez v0, :cond_e

    .line 522
    :cond_c
    const/4 v0, 0x0

    .line 525
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->getShows()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    goto :goto_d
.end method

.method public getSourceUri()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->stats:Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->name:Ljava/lang/String;

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
    .line 472
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailStack()Ljava/util/Stack;
    .registers 6
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
    .line 535
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 536
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    .line 537
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    .line 538
    .local v2, "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    # getter for: Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;

    move-result-object v0

    .line 539
    .local v0, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "small"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 540
    const-string v3, "small"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2f
    const-string v3, "standard"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 543
    const-string v3, "standard"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_40
    const-string v3, "big"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 546
    const-string v3, "big"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :cond_51
    return-object v1
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatments()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->treatments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->updatedAt:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->updatedAt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_5
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUriFormatted:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUriFormatted:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 397
    :cond_c
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->formatSourceUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUriFormatted:Ljava/lang/String;

    .line 399
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUriFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->links:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 443
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->links:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getVideos()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->videos:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getStats()Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 420
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getStats()Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;->getImpressions()J

    move-result-wide v0

    .line 422
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getWideStack()Ljava/util/Stack;
    .registers 6
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
    .line 591
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 592
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    .line 593
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    .line 594
    .local v2, "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    # getter for: Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;

    move-result-object v0

    .line 595
    .local v0, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "wide"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 596
    const-string/jumbo v3, "wide"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_31
    const-string v3, "dblwide"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 599
    const-string v3, "dblwide"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :cond_42
    return-object v1
.end method

.method public hasEditUpdated()Z
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->updatedAt:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAd()Z
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowContributions()Z
    .registers 2

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->commentsEnabled:Z

    return v0
.end method

.method public isBookmarked()Z
    .registers 5

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->isBookmarked:J

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
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public isCommentsEnabled()Z
    .registers 2

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public isReactionsEnabled()Z
    .registers 2

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public isTrendingVideo()Z
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->treatments:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->treatments:Ljava/util/ArrayList;

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isValid()Z
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->id:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->type:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->createdAt:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/EZUtil;->isNull([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    move v0, v1

    .line 243
    .local v0, "hasRequiredFields":Z
    :goto_1e
    const-string/jumbo v3, "video"

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 244
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->videos:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/EZUtil;->isNull([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    if-eqz v0, :cond_3a

    .line 250
    :goto_37
    return v1

    .end local v0    # "hasRequiredFields":Z
    :cond_38
    move v0, v2

    .line 242
    goto :goto_1e

    .restart local v0    # "hasRequiredFields":Z
    :cond_3a
    move v1, v2

    .line 244
    goto :goto_37

    .line 247
    :cond_3c
    const-string v3, "package"

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    if-eqz v0, :cond_5d

    .line 248
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->thumbnails:Ljava/util/List;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->authors:Ljava/util/List;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->sourceUri:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/EZUtil;->isNull([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    move v0, v1

    :cond_5d
    :goto_5d
    move v1, v0

    .line 250
    goto :goto_37

    :cond_5f
    move v0, v2

    .line 248
    goto :goto_5d
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 261
    return-void
.end method

.method public setBookmarked(J)V
    .registers 4
    .param p1, "bookmarked"    # J

    .prologue
    .line 490
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/content/WeaverItem;->isBookmarked:J

    .line 491
    return-void
.end method
