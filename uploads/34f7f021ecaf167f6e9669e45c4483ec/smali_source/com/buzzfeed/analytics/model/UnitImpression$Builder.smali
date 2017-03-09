.class public Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
.super Ljava/lang/Object;
.source "UnitImpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/model/UnitImpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentId:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private dataSource:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private postCategory:Ljava/lang/String;

.field private subPosition:Ljava/lang/String;

.field private unitClientId:Ljava/lang/String;

.field private variationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->unitClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->postCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->variationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->subPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/buzzfeed/analytics/model/UnitImpression;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Lcom/buzzfeed/analytics/model/UnitImpression;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/model/UnitImpression;-><init>(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;Lcom/buzzfeed/analytics/model/UnitImpression$1;)V

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentId:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentType:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setDataSource(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->dataSource:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setPackageId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageId:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageName:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setPackageSize(Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 3
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 95
    if-eqz p1, :cond_8

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageSize:Ljava/lang/String;

    .line 99
    :cond_8
    return-object p0
.end method

.method public setPosition(I)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->position:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setPostCategory(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->postCategory:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setSubPosition(Ljava/lang/Integer;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 3
    .param p1, "position"    # Ljava/lang/Integer;

    .prologue
    .line 103
    if-eqz p1, :cond_8

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->subPosition:Ljava/lang/String;

    .line 107
    :cond_8
    return-object p0
.end method

.method public setUnitClientId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->unitClientId:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setVariationId(Ljava/lang/String;)Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->variationId:Ljava/lang/String;

    .line 86
    return-object p0
.end method
