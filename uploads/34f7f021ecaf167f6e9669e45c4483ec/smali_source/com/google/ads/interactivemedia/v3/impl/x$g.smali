.class public final enum Lcom/google/ads/interactivemedia/v3/impl/x$g;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/x$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/impl/x$g;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/impl/x$g;

.field private static final synthetic d:[Lcom/google/ads/interactivemedia/v3/impl/x$g;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;

    const-string v1, "TYPE_VIDEO"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ads/interactivemedia/v3/impl/x$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    .line 47
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;

    const-string v1, "TYPE_AUDIO"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/ads/interactivemedia/v3/impl/x$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->b:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/x$g;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$g;->b:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->d:[Lcom/google/ads/interactivemedia/v3/impl/x$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->c:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/x$g;
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/x$g;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->d:[Lcom/google/ads/interactivemedia/v3/impl/x$g;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/x$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/x$g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$g;->c:I

    return v0
.end method
