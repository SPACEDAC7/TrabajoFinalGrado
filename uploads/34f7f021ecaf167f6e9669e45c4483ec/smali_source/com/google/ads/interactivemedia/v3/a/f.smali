.class public final Lcom/google/ads/interactivemedia/v3/a/f;
.super Ljava/lang/Exception;
.source "IMASDK"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->a:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->a:Z

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 48
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/f;->a:Z

    .line 49
    return-void
.end method
