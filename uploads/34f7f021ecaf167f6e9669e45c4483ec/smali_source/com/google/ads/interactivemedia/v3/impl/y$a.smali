.class public final enum Lcom/google/ads/interactivemedia/v3/impl/y$a;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/y$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/impl/y$a;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/impl/y$a;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/impl/y$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    .line 21
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    const-string v1, "ABRIDGED"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->b:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    .line 25
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    const-string v1, "LIFECYCLE"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    .line 29
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/impl/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->d:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/y$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->b:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->d:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->e:[Lcom/google/ads/interactivemedia/v3/impl/y$a;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z
    .registers 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/y$a;
    .registers 2

    .prologue
    .line 13
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/y$a;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->e:[Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/y$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/y$a;

    return-object v0
.end method
