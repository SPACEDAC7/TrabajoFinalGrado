.class public Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;
.super Ljava/lang/Object;
.source "SpiceFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsSupportedSubBuzz(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 70
    :cond_10
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 73
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;

    invoke-direct {v0, p0}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->getSpicyViewState(Ljava/util/List;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v0

    goto :goto_12
.end method

.method public static createCustomBottomView(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 43
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CUSTOM_BOTTOM:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static createEmptySpice(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 35
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMPTY:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static createFallbackSpice(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 31
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->FALLBACK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static createHeaderSpice(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 23
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->HEADER:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static createLoadingSpice(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 27
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LOADING:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static createShareBar(Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p0, "content"    # Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    .prologue
    .line 39
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->SHARE_BAR:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    return-object v0
.end method

.method public static getSubBuzzesAsFlowItems(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;
    .registers 6
    .param p0, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "flowItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .line 53
    .local v1, "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    new-instance v3, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-static {p0, v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->getTypeForSubBuzz(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 55
    .end local v1    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :cond_26
    return-object v0
.end method

.method private static getTypeForSubBuzz(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Ljava/lang/String;
    .registers 3
    .param p0, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .param p1, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getFormat()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->getPageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getSpiceType(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnsupportedSubbuzzs(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;

    invoke-direct {v0, p0}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->getUnsupportedSubbuzzs(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
