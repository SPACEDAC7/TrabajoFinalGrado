.class public abstract Lcom/google/ads/interactivemedia/v3/impl/h$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/h$b;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/n;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/n;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract appVersion()I
.end method

.method public abstract packageName()Ljava/lang/String;
.end method
