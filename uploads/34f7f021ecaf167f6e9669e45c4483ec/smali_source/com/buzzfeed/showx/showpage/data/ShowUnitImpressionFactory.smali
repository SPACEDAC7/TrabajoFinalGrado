.class public Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;
.super Ljava/lang/Object;
.source "ShowUnitImpressionFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createUnitImpression(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;I)Lcom/buzzfeed/analytics/model/UnitImpression;
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "itemType"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    .param p3, "adapterPos"    # I

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "contentId":Ljava/lang/String;
    sget-object v1, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory$1;->$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType:[I

    invoke-virtual {p2}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/showx/showpage/data/ShowUnitImpressionFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".createUnitImpression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Unit Impression for ShowPageItemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    :goto_3b
    return-object v1

    .line 19
    :pswitch_3c
    new-instance v1, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    invoke-direct {v1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;-><init>()V

    .line 20
    invoke-virtual {v1, v0}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setContentId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    const-string/jumbo v2, "video"

    .line 21
    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setContentType(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p3}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->setPosition(I)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->build()Lcom/buzzfeed/analytics/model/UnitImpression;

    move-result-object v1

    goto :goto_3b

    .line 16
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method
