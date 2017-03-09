.class public final enum Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;
.super Ljava/lang/Enum;
.source "SpicerackConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

.field public static final enum PROD:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

.field public static final enum STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->PROD:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    new-instance v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    const-string v1, "STAGE"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->PROD:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->$VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->$VALUES:[Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-virtual {v0}, [Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    return-object v0
.end method
