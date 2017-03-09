.class public Lcom/google/ads/interactivemedia/v3/a/n$b;
.super Ljava/io/IOException;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 50
    const-string v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/a/n$1;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/n$b;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
