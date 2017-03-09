.class abstract Lcom/google/ads/interactivemedia/v3/impl/ak$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/ak$a;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract TXXX()Ljava/lang/String;
.end method
