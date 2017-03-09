.class public final enum Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;
.super Ljava/lang/Enum;
.source "SpicyShareBarLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

.field public static final enum Bottom:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

.field public static final enum Top:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    const-string v1, "Top"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Top:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    .line 5
    new-instance v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Bottom:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    sget-object v1, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Top:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Bottom:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->$VALUES:[Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->$VALUES:[Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    invoke-virtual {v0}, [Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    return-object v0
.end method
