.class public Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;
.super Ljava/lang/Object;
.source "BuffetUnitImpressionsFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/BuffetType;I)Lcom/buzzfeed/analytics/model/UnitImpression;
    .registers 10
    .param p0, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p1, "buffetType"    # Lcom/buzzfeed/toolkit/content/BuffetType;
    .param p2, "adapterPos"    # I

    .prologue
    const/4 v3, 0x0

    .line 13
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v0

    return-object v0
.end method

.method public static createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression;
    .registers 16
    .param p0, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p1, "buffetType"    # Lcom/buzzfeed/toolkit/content/BuffetType;
    .param p2, "adapterPos"    # I
    .param p3, "packageId"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "packageSize"    # Ljava/lang/Integer;
    .param p6, "subPosition"    # Ljava/lang/Integer;

    .prologue
    .line 18
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 27
    :goto_3
    return-object v0

    .line 20
    :cond_4
    const/4 v3, 0x0

    .line 21
    .local v3, "category":Ljava/lang/String;
    const/4 v8, 0x0

    .line 22
    .local v8, "dataSource":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_22

    .line 23
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getDataSource()Ljava/lang/String;

    move-result-object v8

    .line 27
    :cond_22
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->createUnitImpression(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v0

    goto :goto_3
.end method

.method public static createUnitImpression(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/BuffetType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression;
    .registers 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "buffetType"    # Lcom/buzzfeed/toolkit/content/BuffetType;
    .param p2, "adapterPos"    # I
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "packageSize"    # Ljava/lang/Integer;
    .param p7, "subPosition"    # Ljava/lang/Integer;
    .param p8, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    if-eq p1, v1, :cond_10

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    if-eq p1, v1, :cond_10

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    if-eq p1, v1, :cond_10

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    if-ne p1, v1, :cond_12

    .line 35
    :cond_10
    const/4 v1, 0x0

    .line 48
    :goto_11
    return-object v1

    .line 37
    :cond_12
    new-instance v1, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    invoke-direct {v1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;-><init>()V

    .line 38
    invoke-virtual {v1, p0}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setContentId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p2}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPosition(I)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 40
    invoke-static {p1}, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory;->getContentTypeForBuffetType(Lcom/buzzfeed/toolkit/content/BuffetType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setContentType(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p4}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPackageId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p5}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPackageName(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p6}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPackageSize(Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p7}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setSubPosition(Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p3}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPostCategory(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p8}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setDataSource(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    invoke-virtual {v0}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->build()Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v1

    goto :goto_11
.end method

.method private static getContentTypeForBuffetType(Lcom/buzzfeed/toolkit/content/BuffetType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Lcom/buzzfeed/toolkit/content/BuffetType;

    .prologue
    .line 52
    sget-object v0, Lcom/buzzfeed/buffet/data/BuffetUnitImpressionsFactory$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 66
    const-string v0, "buzz"

    :goto_d
    return-object v0

    .line 54
    :pswitch_e
    const-string v0, "breaking_news"

    goto :goto_d

    .line 58
    :pswitch_11
    const-string/jumbo v0, "video"

    goto :goto_d

    .line 52
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
