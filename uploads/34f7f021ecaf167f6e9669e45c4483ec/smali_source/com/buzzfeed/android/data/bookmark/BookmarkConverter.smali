.class public Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;
.super Ljava/lang/Object;
.source "BookmarkConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToJson(Lcom/buzzfeed/toolkit/content/Buzz;)Ljava/lang/String;
    .registers 11
    .param p0, "buzz"    # Lcom/buzzfeed/toolkit/content/Buzz;

    .prologue
    .line 75
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v5, "json":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v6, "usersArr":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getContributors()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Contributor;

    .line 79
    .local v0, "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;->getGson()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "contributorJson":Lorg/json/JSONObject;
    const-string/jumbo v8, "user_image"

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Contributor;->getAvatar()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_12

    .line 107
    .end local v0    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    .end local v1    # "contributorJson":Lorg/json/JSONObject;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "usersArr":Lorg/json/JSONArray;
    :catch_39
    move-exception v2

    .line 108
    .local v2, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to serialize json for buzz object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_57
    return-object v7

    .line 83
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "usersArr":Lorg/json/JSONArray;
    :cond_58
    :try_start_58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v3, "headerJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v7, "blurb"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getBlurb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v7, "name"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v7, "name"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v7, "header"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v7, "id"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v7, "impressions"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getViral()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v7, "thumbnail"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v7, "blurb"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v7, "flags"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getFlags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v7, "last_updated_unix"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->hasLastUpdated()Z

    move-result v8

    if-eqz v8, :cond_115

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getLastUpdated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    :goto_c1
    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v7, "uri"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v4, "imagesJson":Lorg/json/JSONObject;
    const-string v7, "small"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlSmall()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v7, "standard"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlStandard()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v7, "big"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlBig()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v7, "wide"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlWide()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v7, "dblbig"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblBig()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v7, "dblwide"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getImageUrlDblWide()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v7, "images"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_112
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_112} :catch_39

    move-result-object v7

    goto/16 :goto_57

    .line 95
    .end local v4    # "imagesJson":Lorg/json/JSONObject;
    :cond_115
    const-wide/16 v8, 0x0

    goto :goto_c1
.end method

.method public static fromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;F)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 10
    .param p0, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p1, "screenDensityDpi"    # F

    .prologue
    .line 24
    new-instance v2, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 25
    .local v2, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 26
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->isAllowContributions()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setAllowContributions(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "contributors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/toolkit/content/Contributor;>;"
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorContents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/AuthorContent;

    .line 29
    .local v0, "authorContent":Lcom/buzzfeed/toolkit/content/AuthorContent;
    new-instance v3, Lcom/buzzfeed/toolkit/content/Contributor;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/content/Contributor;-><init>()V

    .line 30
    .local v3, "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/buzzfeed/toolkit/content/Contributor;->setDisplayName(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 32
    .local v1, "avatarStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v3, v1}, Lcom/buzzfeed/toolkit/content/Contributor;->setUserImages(Ljava/util/Stack;)V

    .line 34
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/buzzfeed/toolkit/content/Contributor;->setBylineDesc(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 37
    .end local v0    # "authorContent":Lcom/buzzfeed/toolkit/content/AuthorContent;
    .end local v1    # "avatarStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v3    # "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    :cond_52
    invoke-virtual {v2, v4}, Lcom/buzzfeed/toolkit/content/Buzz;->setContributors(Ljava/util/ArrayList;)V

    .line 38
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setDescription(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 39
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 42
    invoke-interface {p0, p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v6

    if-eqz v6, :cond_b3

    invoke-interface {p0, p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b3

    .line 43
    invoke-interface {p0, p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v5

    .line 44
    .local v5, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_86

    .line 45
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setImageUrlDblBig(Ljava/lang/String;)V

    .line 47
    :cond_86
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_95

    .line 48
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setImageUrlBig(Ljava/lang/String;)V

    .line 50
    :cond_95
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a4

    .line 51
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setImageUrlStandard(Ljava/lang/String;)V

    .line 53
    :cond_a4
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b3

    .line 54
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setImageUrlSmall(Ljava/lang/String;)V

    .line 58
    .end local v5    # "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :cond_b3
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 59
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 60
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setTimestamp(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 61
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 62
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e6

    .line 63
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 65
    :cond_e6
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->isBookmarked()Z

    move-result v6

    if-eqz v6, :cond_107

    const-wide/16 v6, 0x1

    :goto_ee
    invoke-virtual {v2, v6, v7}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 66
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->getEditUpdated()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setEditUpdated(Ljava/util/Date;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 67
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/PostContent;->isAd()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setIsAd(Z)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 69
    invoke-static {v2}, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;->convertToJson(Lcom/buzzfeed/toolkit/content/Buzz;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/toolkit/content/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 70
    return-object v2

    .line 65
    :cond_107
    const-wide/16 v6, 0x0

    goto :goto_ee
.end method

.method private static getGson()Lcom/google/gson/Gson;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 115
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    .line 116
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    return-object v1
.end method
