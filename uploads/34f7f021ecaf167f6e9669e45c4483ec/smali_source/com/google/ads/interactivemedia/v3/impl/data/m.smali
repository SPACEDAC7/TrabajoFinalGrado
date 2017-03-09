.class public Lcom/google/ads/interactivemedia/v3/impl/data/m;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/UiElement;


# static fields
.field public static final GSON_TYPE_ADAPTER:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/m$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/m$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->GSON_TYPE_ADAPTER:Lcom/google/ads/interactivemedia/v3/b/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 53
    if-ne p0, p1, :cond_5

    .line 54
    const/4 v0, 0x1

    .line 63
    :cond_4
    :goto_4
    return v0

    .line 56
    :cond_5
    if-eqz p1, :cond_4

    .line 59
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/m;

    if-eqz v1, :cond_4

    .line 62
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/m;

    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/c/a/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/m;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UiElementImpl[name="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
