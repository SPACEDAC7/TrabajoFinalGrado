.class public final enum Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
.super Ljava/lang/Enum;
.source "ShowPageItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

.field public static final enum SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

.field public static final enum SHOW_VIDEO:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

.field public static final enum SHOW_VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    const-string v1, "SHOW_SUBSCRIBE"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    .line 22
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    const-string v1, "SHOW_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    .line 23
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    const-string v1, "SHOW_VIDEO_FIXED_HEIGHT"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    sget-object v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->$VALUES:[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 36
    invoke-static {}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->values()[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getItemTypeFromVideoContent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    const-string v2, "Context must not be null."

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v2, "VideoContent must not be null."

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v1

    .line 69
    .local v1, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->isPortraitVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {p0, v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->isTabletAndTallVideo(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1a
    const/4 v0, 0x1

    .line 71
    .local v0, "isFixedHeightVideo":Z
    :goto_1b
    if-eqz v0, :cond_22

    sget-object v2, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    :goto_1f
    return-object v2

    .line 69
    .end local v0    # "isFixedHeightVideo":Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b

    .line 71
    .restart local v0    # "isFixedHeightVideo":Z
    :cond_22
    sget-object v2, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_VIDEO:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    goto :goto_1f
.end method

.method public static hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 8
    .param p0, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 53
    :cond_d
    :goto_d
    return v1

    .line 47
    :cond_e
    invoke-static {}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->values()[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_14
    if-ge v2, v4, :cond_d

    aget-object v0, v3, v2

    .line 48
    .local v0, "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    sget-object v5, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->SHOW_SUBSCRIBE:Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    if-eq v0, v5, :cond_2c

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 49
    const/4 v1, 0x1

    goto :goto_d

    .line 47
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-static {p0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->$VALUES:[Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    invoke-virtual {v0}, [Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    return-object v0
.end method
