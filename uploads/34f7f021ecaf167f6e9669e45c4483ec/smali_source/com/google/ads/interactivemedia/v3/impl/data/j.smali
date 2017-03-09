.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/j;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/b/a;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/g;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(DDZ)Lcom/google/ads/interactivemedia/v3/impl/data/j;
    .registers 13

    .prologue
    .line 14
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/g;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/g;-><init>(DDZ)V

    return-object v1
.end method


# virtual methods
.method public abstract end()D
.end method

.method public abstract played()Z
.end method

.method public abstract start()D
.end method
