.class public Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
.super Lcom/buzzfeed/toolkit/content/BaseLoader;
.source "WeaverLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field private mBuzzTimeStamp:J

.field private mFeedPath:Ljava/lang/String;

.field private mHasMorePages:Z

.field private mIgnorePackages:Z

.field protected mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

.field protected mWeaverServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .param p3, "weaverServiceHelper"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
    .param p4, "feedPath"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .param p3, "weaverServiceHelper"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
    .param p4, "feedPath"    # Ljava/lang/String;
    .param p5, "ignorePackages"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/BaseLoader;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mHasMorePages:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mApplicationContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 41
    iput-object p3, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mWeaverServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    .line 42
    iput-object p4, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mFeedPath:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mIgnorePackages:Z

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$102(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/content/FlowList;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;J)J
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mBuzzTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$402(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method private getType(Lcom/buzzfeed/toolkit/content/WeaverItem;)Ljava/lang/String;
    .registers 8
    .param p1, "weaverItem"    # Lcom/buzzfeed/toolkit/content/WeaverItem;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->UNKNOWN:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 134
    .local v0, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    const-string/jumbo v1, "video"

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 135
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getVideoSpecificBuffetType(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    .line 162
    :cond_18
    :goto_18
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    :cond_1d
    const-string v1, "breakingbar"

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 137
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_18

    .line 138
    :cond_2c
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 139
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 140
    new-array v1, v5, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BREAKING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v3

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 141
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_18

    .line 142
    :cond_4d
    new-array v1, v4, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 143
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_18

    .line 145
    :cond_5c
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 146
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 147
    new-array v1, v5, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v3

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->isQuizFeed()Z

    move-result v1

    if-nez v1, :cond_83

    .line 148
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_18

    .line 149
    :cond_83
    new-array v1, v5, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v3

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->isQuizFeed()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 150
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto/16 :goto_18

    .line 151
    :cond_9d
    new-array v1, v4, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->isQuizFeed()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 153
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto/16 :goto_18

    .line 154
    :cond_b3
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getTreatments()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 155
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto/16 :goto_18

    .line 156
    :cond_c3
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getTreatments()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 157
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto/16 :goto_18

    .line 158
    :cond_d3
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getTreatments()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BREAKING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 159
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto/16 :goto_18
.end method

.method private isExpired()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-wide v4, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mBuzzTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_18

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mBuzzTimeStamp:J

    sub-long v0, v4, v6

    .line 123
    .local v0, "timeSinceLastRefresh":J
    const-wide/32 v4, 0x493e0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_19

    .line 125
    .end local v0    # "timeSinceLastRefresh":J
    :cond_18
    :goto_18
    return v2

    .line 123
    .restart local v0    # "timeSinceLastRefresh":J
    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private isQuizFeed()Z
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mFeedPath:Ljava/lang/String;

    const-string v1, "quiz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z
    .registers 5
    .param p1, "weaverItem"    # Lcom/buzzfeed/toolkit/content/WeaverItem;
    .param p2, "treatments"    # [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .prologue
    .line 166
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "treatmentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;>;"
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getTreatments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method protected getSafeCallback(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
    .registers 3
    .param p1, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;",
            ")",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;-><init>(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    return-object v0
.end method

.method protected getWeaverPath()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mFeedPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mHasMorePages:Z

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 8
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 72
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to load page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    if-nez p1, :cond_2b

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->isExpired()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    if-le p2, v0, :cond_50

    .line 74
    :cond_2b
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 76
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mWeaverServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->getWeaverPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->getSafeCallback(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->loadFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 80
    :goto_4f
    return-void

    .line 78
    :cond_50
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    goto :goto_4f
.end method

.method protected parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 9
    .param p1, "weaverResponse"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 51
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 52
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->updateHasMorePages(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)V

    .line 53
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v4

    .line 54
    .local v4, "weaverItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 55
    .local v3, "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    invoke-direct {p0, v3}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->getType(Lcom/buzzfeed/toolkit/content/WeaverItem;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "type":Ljava/lang/String;
    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->UNKNOWN:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 61
    iget-boolean v6, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mIgnorePackages:Z

    if-eqz v6, :cond_3c

    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 64
    :cond_3c
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v0, v2, v3}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 65
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_10

    .line 67
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    :cond_45
    return-object v1
.end method

.method protected updateHasMorePages(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->hasMorePages()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mHasMorePages:Z

    .line 177
    return-void

    .line 176
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method
