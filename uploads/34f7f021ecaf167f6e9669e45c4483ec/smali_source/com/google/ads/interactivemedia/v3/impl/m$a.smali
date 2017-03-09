.class public final enum Lcom/google/ads/interactivemedia/v3/impl/m$a;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/m$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/impl/m$a;

.field public static final enum AUTO:Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "auto"
    .end annotation
.end field

.field public static final enum CLICK:Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "click"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "unknown"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 25
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 27
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/m$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/m$a;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/m$a;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/m$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/m$a;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .registers 2

    .prologue
    .line 22
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/impl/m$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/m$a;

    return-object v0
.end method
