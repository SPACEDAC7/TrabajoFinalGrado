.class public Lcom/buzzfeed/analytics/model/UnitImpression;
.super Ljava/lang/Object;
.source "UnitImpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;

.field public final dataSource:Ljava/lang/String;

.field public final packageId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final packageSize:Ljava/lang/String;

.field public final position:Ljava/lang/String;

.field public final postCategory:Ljava/lang/String;

.field public final subPosition:Ljava/lang/String;

.field public final unit:Ljava/lang/String;

.field public final unitClientId:Ljava/lang/String;

.field public final variationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/buzzfeed/analytics/model/UnitImpression;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/model/UnitImpression;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "feed"

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->unit:Ljava/lang/String;

    .line 28
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentId:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$000(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->contentId:Ljava/lang/String;

    .line 29
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->contentType:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$100(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->contentType:Ljava/lang/String;

    .line 30
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->position:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$200(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->position:Ljava/lang/String;

    .line 31
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->unitClientId:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$300(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->unitClientId:Ljava/lang/String;

    .line 32
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->postCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$400(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->postCategory:Ljava/lang/String;

    .line 33
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->variationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$500(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->variationId:Ljava/lang/String;

    .line 34
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$600(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageName:Ljava/lang/String;

    .line 35
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageSize:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$700(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageSize:Ljava/lang/String;

    .line 36
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->subPosition:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$800(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->subPosition:Ljava/lang/String;

    .line 37
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->packageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$900(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->packageId:Ljava/lang/String;

    .line 38
    # getter for: Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->dataSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/model/UnitImpression$Builder;->access$1000(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/model/UnitImpression;->dataSource:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;Lcom/buzzfeed/analytics/model/UnitImpression$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/analytics/model/UnitImpression$Builder;
    .param p2, "x1"    # Lcom/buzzfeed/analytics/model/UnitImpression$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/model/UnitImpression;-><init>(Lcom/buzzfeed/analytics/model/UnitImpression$Builder;)V

    return-void
.end method
