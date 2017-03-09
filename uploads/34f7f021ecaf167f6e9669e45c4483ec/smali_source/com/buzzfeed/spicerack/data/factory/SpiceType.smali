.class public final enum Lcom/buzzfeed/spicerack/data/factory/SpiceType;
.super Ljava/lang/Enum;
.source "SpiceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/spicerack/data/factory/SpiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum BREAKING_UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum CORRECTION:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum CUSTOM_BOTTOM:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum EMPTY:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum FALLBACK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum HEADER:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum IMAGE_ARTICLE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum IMAGE_GROUP:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum IMAGE_LIST:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum LINK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum LOADING:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum QUOTE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum SHARE_BAR:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum TEXT:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum TWEET:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum VIDEO:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field public static final enum YOUTUBE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

.field private static final sValues:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;


# instance fields
.field private mForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "IMAGE_LIST"

    const-string v2, "image"

    invoke-direct {v0, v1, v4, v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_LIST:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 10
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "IMAGE_ARTICLE"

    const-string v2, "image"

    invoke-direct {v0, v1, v5, v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_ARTICLE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 12
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "YOUTUBE"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v6, v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->YOUTUBE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 13
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v7, v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->VIDEO:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 15
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "TEXT"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v8, v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TEXT:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 16
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "QUOTE"

    const/4 v2, 0x5

    const-string v3, "quote"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->QUOTE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 17
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "IMAGE_GROUP"

    const/4 v2, 0x6

    const-string v3, "image_group"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_GROUP:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 19
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "TWEET"

    const/4 v2, 0x7

    const-string/jumbo v3, "tweet"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TWEET:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 20
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "BREAKING_UPDATE"

    const/16 v2, 0x8

    const-string v3, "breaking_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->BREAKING_UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 21
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "CORRECTION"

    const/16 v2, 0x9

    const-string v3, "correction"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CORRECTION:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 22
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "UPDATE"

    const/16 v2, 0xa

    const-string/jumbo v3, "update"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 23
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "LINK"

    const/16 v2, 0xb

    const-string v3, "link"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LINK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 24
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "EMBED"

    const/16 v2, 0xc

    const-string v3, "embed"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 25
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "HEADER"

    const/16 v2, 0xd

    const-string v3, "header"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->HEADER:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 26
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "LOADING"

    const/16 v2, 0xe

    const-string v3, "loading"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LOADING:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 27
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "FALLBACK"

    const/16 v2, 0xf

    const-string v3, "fallback"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->FALLBACK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 28
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "EMPTY"

    const/16 v2, 0x10

    const-string v3, "empty"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMPTY:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 29
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "SHARE_BAR"

    const/16 v2, 0x11

    const-string v3, "share_bar"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->SHARE_BAR:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 30
    new-instance v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    const-string v1, "CUSTOM_BOTTOM"

    const/16 v2, 0x12

    const-string v3, "custom_bottom"

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CUSTOM_BOTTOM:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 6
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_LIST:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_ARTICLE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->YOUTUBE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->VIDEO:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TEXT:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->QUOTE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_GROUP:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TWEET:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->BREAKING_UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CORRECTION:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LINK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->HEADER:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LOADING:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->FALLBACK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMPTY:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->SHARE_BAR:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CUSTOM_BOTTOM:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->$VALUES:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 34
    invoke-static {}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->values()[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->sValues:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "form"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->mForm:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static fromInt(I)Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 73
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->sValues:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getSpiceType(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    .registers 8
    .param p0, "pageType"    # Ljava/lang/String;
    .param p1, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .prologue
    .line 41
    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->sValues:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_61

    aget-object v0, v2, v1

    .line 43
    .local v0, "spiceType":Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    const-string v4, "image"

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 44
    const-string v1, "list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 45
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_LIST:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 65
    .end local v0    # "spiceType":Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    :cond_1e
    :goto_1e
    return-object v0

    .line 47
    .restart local v0    # "spiceType":Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    :cond_1f
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_ARTICLE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    goto :goto_1e

    .line 49
    :cond_22
    const-string v4, "embed"

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 50
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->isInstagramEmbed()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 51
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    goto :goto_1e

    .line 53
    :cond_37
    const-string/jumbo v4, "video"

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 54
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->isYoutube()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 55
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->YOUTUBE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    goto :goto_1e

    .line 58
    :cond_4d
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->VIDEO:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    goto :goto_1e

    .line 61
    :cond_50
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 41
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 65
    .end local v0    # "spiceType":Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    :cond_61
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/spicerack/data/factory/SpiceType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->$VALUES:[Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v0}, [Lcom/buzzfeed/spicerack/data/factory/SpiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    return-object v0
.end method


# virtual methods
.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->mForm:Ljava/lang/String;

    return-object v0
.end method
