.class public final enum Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;
.super Ljava/lang/Enum;
.source "FlowItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum AD:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum BIG_STORY:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum BREAKING_BAR:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum BUZZ:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum NEWS_BANNER:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

.field public static final enum SPLASH:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;


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
    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->SPLASH:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "BIG_STORY"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BIG_STORY:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "BREAKING_BAR"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BREAKING_BAR:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "NEWS_BANNER"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->NEWS_BANNER:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "BUZZ"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BUZZ:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    new-instance v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    const-string v1, "AD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->AD:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    sget-object v1, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->SPLASH:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BIG_STORY:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BREAKING_BAR:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->NEWS_BANNER:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->BUZZ:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->AD:Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->$VALUES:[Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->$VALUES:[Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    invoke-virtual {v0}, [Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/buffet/ui/adapter/constant/FlowItemType;

    return-object v0
.end method
