.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/b/a;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/e;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .registers 5

    .prologue
    .line 22
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/e;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public abstract height()I
.end method

.method public abstract left()I
.end method

.method public abstract top()I
.end method

.method public abstract width()I
.end method
