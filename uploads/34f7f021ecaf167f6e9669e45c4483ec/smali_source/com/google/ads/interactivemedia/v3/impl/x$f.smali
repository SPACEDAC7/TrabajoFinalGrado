.class final enum Lcom/google/ads/interactivemedia/v3/impl/x$f;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/x$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/impl/x$f;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/impl/x$f;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/impl/x$f;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/impl/x$f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->a:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 63
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->b:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 64
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 65
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/impl/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->d:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/x$f;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->a:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->b:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$f;->d:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->e:[Lcom/google/ads/interactivemedia/v3/impl/x$f;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/x$f;
    .registers 2

    .prologue
    .line 60
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/x$f;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->e:[Lcom/google/ads/interactivemedia/v3/impl/x$f;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/x$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/x$f;

    return-object v0
.end method
