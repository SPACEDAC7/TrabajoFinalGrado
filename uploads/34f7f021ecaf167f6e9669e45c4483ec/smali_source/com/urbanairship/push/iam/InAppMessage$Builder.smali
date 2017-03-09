.class public Lcom/urbanairship/push/iam/InAppMessage$Builder;
.super Ljava/lang/Object;
.source "InAppMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alert:Ljava/lang/String;

.field private buttonActionValues:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private buttonGroupId:Ljava/lang/String;

.field private clickActionValues:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private durationMilliseconds:Ljava/lang/Long;

.field private expiryMS:Ljava/lang/Long;

.field private extras:Lcom/urbanairship/json/JsonMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private position:I

.field private primaryColor:Ljava/lang/Integer;

.field private secondaryColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 527
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 535
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 536
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1300(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 537
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 538
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1500(Lcom/urbanairship/push/iam/InAppMessage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 539
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 540
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->position:I
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1700(Lcom/urbanairship/push/iam/InAppMessage;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 541
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 542
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 543
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2000(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 544
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 545
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 546
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/push/iam/InAppMessage$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    return v0
.end method

.method static synthetic access$900(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/urbanairship/push/iam/InAppMessage;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;Lcom/urbanairship/push/iam/InAppMessage$1;)V

    return-object v0
.end method

.method public setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "alert"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 641
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 642
    return-object p0
.end method

.method public setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 5
    .param p1, "buttonId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 613
    .local p2, "actionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    if-nez p2, :cond_8

    .line 614
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :goto_7
    return-object p0

    .line 616
    :cond_8
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "buttonGroupId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 629
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 630
    return-object p0
.end method

.method public setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "actionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    if-nez p1, :cond_6

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 601
    :goto_5
    return-object p0

    .line 598
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    goto :goto_5
.end method

.method public setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 6
    .param p1, "milliseconds"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 654
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration must be greater than 0 milliseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_14
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 659
    return-object p0
.end method

.method public setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "milliseconds"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 570
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 571
    return-object p0
.end method

.method public setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "extras"    # Lcom/urbanairship/json/JsonMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 583
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 584
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 557
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 558
    return-object p0
.end method

.method public setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be either InAppMessage.POSITION_BOTTOM or InAppMessage.POSITION_TOP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_d
    iput p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 677
    return-object p0
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 688
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 689
    return-object p0
.end method

.method public setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .registers 2
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 700
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 701
    return-object p0
.end method
