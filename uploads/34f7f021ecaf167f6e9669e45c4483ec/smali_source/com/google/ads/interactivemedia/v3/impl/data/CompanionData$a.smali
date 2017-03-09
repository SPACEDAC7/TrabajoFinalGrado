.class public final enum Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

.field public static final enum Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

.field public static final enum IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

.field public static final enum Static:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    const-string v1, "Html"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    const-string v1, "Static"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    const-string v1, "IFrame"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;
    .registers 2

    .prologue
    .line 16
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    return-object v0
.end method
