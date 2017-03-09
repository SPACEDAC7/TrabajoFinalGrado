.class public final enum Lcom/buzzfeed/toolkit/content/BuffetType;
.super Ljava/lang/Enum;
.source "BuffetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/content/BuffetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum BREAKING:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum FEATURED_PROXIMA_NOVA_TITLE:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum FEATURED_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum POST:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum TRENDING_FEED_TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum UNKNOWN:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

.field public static final enum VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

.field private static final sValues:[Lcom/buzzfeed/toolkit/content/BuffetType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->UNKNOWN:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 5
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 6
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "QUIZ"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 7
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "TRENDING_SMALL"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 8
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "TRENDING"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 9
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "VIDEO_DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 10
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "VIDEO_FIXED_HEIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 11
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "BREAKING_BAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 12
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "VIDEO_AD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 13
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "EDITORIAL_AD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 14
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "FEATURED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 15
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "FEATURED_QUIZ"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 16
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "TRENDING_QUIZ"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 17
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "TRENDING_FEED_TRENDING_QUIZ"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_FEED_TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 18
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "SHOW"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 19
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "PACKAGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 20
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "BREAKING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 21
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "BULLETED_LIST"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 22
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "BREAKING_BULLETED_LIST"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 23
    new-instance v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    const-string v1, "FEATURED_PROXIMA_NOVA_TITLE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/BuffetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_PROXIMA_NOVA_TITLE:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 3
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/buzzfeed/toolkit/content/BuffetType;

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->UNKNOWN:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_FEED_TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_PROXIMA_NOVA_TITLE:Lcom/buzzfeed/toolkit/content/BuffetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->$VALUES:[Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 25
    invoke-static {}, Lcom/buzzfeed/toolkit/content/BuffetType;->values()[Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->sValues:[Lcom/buzzfeed/toolkit/content/BuffetType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/BuffetType;
    .registers 2
    .param p0, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    return-object v0
.end method

.method public static fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->sValues:[Lcom/buzzfeed/toolkit/content/BuffetType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/buzzfeed/toolkit/content/BuffetType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/BuffetType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/BuffetType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/content/BuffetType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->$VALUES:[Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/content/BuffetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/content/BuffetType;

    return-object v0
.end method
