.class public final Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;
.super Ljava/lang/Object;
.source "WeaverVideoUtils.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO:F = 1.7777778f

.field private static final KEY_ENCODING_HLS:Ljava/lang/String; = "hls"

.field private static final KEY_SHOW_ID_TASTY:Ljava/lang/String; = "tasty"

.field public static final KEY_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final PORTRAIT_ASPECT_RATIO:F = 0.5625f

.field private static final TABLET_CHANGE_ASPECT_RATIO:F = 1.3333334f


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Z
    .registers 2
    .param p0, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;

    .prologue
    .line 192
    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/VideoContent;->getVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/VideoContent;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getAspectRatioFromString(Ljava/lang/String;)F
    .registers 7
    .param p0, "delimitedAspectRatio"    # Ljava/lang/String;

    .prologue
    const v3, 0x3fe38e39

    const/4 v5, 0x0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 111
    :cond_12
    :goto_12
    return v3

    .line 103
    :cond_13
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dimens":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 106
    .local v2, "width":F
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 108
    .local v1, "height":F
    cmpl-float v4, v2, v5

    if-lez v4, :cond_12

    cmpl-float v4, v1, v5

    if-lez v4, :cond_12

    .line 109
    div-float v3, v2, v1

    goto :goto_12
.end method

.method public static getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F
    .registers 2
    .param p0, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    .prologue
    .line 91
    if-nez p0, :cond_6

    .line 92
    const v0, 0x3fe38e39

    .line 95
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getAspectRatio()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromString(Ljava/lang/String;)F

    move-result v0

    goto :goto_5
.end method

.method public static getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    .registers 3
    .param p0, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->ensureVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0}, Lcom/buzzfeed/toolkit/content/VideoContent;->getVideos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    goto :goto_7
.end method

.method private static getHlsEncoding(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
    .registers 6
    .param p0, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getEncodings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_9
    move-object v0, v1

    .line 81
    :goto_a
    return-object v0

    .line 75
    :cond_b
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;

    .line 76
    .local v0, "encoding":Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
    const-string v3, "hls"

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_a

    .end local v0    # "encoding":Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
    :cond_2c
    move-object v0, v1

    .line 81
    goto :goto_a
.end method

.method public static getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;
    .registers 3
    .param p0, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsEncoding(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;

    move-result-object v0

    .line 60
    .local v0, "encoding":Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getVideoSpecificBuffetType(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/BuffetType;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;

    .prologue
    .line 150
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->ensureVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 151
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 157
    :goto_8
    return-object v2

    .line 154
    :cond_9
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v1

    .line 155
    .local v1, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->isPortraitVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {p0, v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->isTabletAndTallVideo(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_19
    const/4 v0, 0x1

    .line 157
    .local v0, "isFixedHeightVideo":Z
    :goto_1a
    if-eqz v0, :cond_21

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_8

    .line 155
    .end local v0    # "isFixedHeightVideo":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a

    .line 157
    .restart local v0    # "isFixedHeightVideo":Z
    :cond_21
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_8
.end method

.method public static hasHlsVideoContent(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z
    .registers 2
    .param p0, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static hasTastySpecificShowContent(Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Z
    .registers 3
    .param p0, "show"    # Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 184
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 185
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tasty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 4
    .param p0, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 167
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 174
    :cond_d
    :goto_d
    return v1

    .line 171
    :cond_e
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "typeKey":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 174
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2a
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public static isPortraitVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z
    .registers 3
    .param p0, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F

    move-result v0

    const/high16 v1, 0x3f100000

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTabletAndTallVideo(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F

    move-result v0

    const v1, 0x3faaaaab

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
