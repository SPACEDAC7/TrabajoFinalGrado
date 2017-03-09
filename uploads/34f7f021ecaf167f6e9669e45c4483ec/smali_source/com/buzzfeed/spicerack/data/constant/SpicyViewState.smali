.class public final enum Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
.super Ljava/lang/Enum;
.source "SpicyViewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

.field public static final enum Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

.field public static final enum Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

.field public static final enum PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    const-string v1, "Fallback"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    new-instance v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    const-string v1, "PartiallyNative"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    new-instance v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    const-string v1, "Native"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->$VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->$VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    invoke-virtual {v0}, [Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    return-object v0
.end method
