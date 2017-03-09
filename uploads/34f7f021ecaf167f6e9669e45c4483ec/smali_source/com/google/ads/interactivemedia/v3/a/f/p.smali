.class public final Lcom/google/ads/interactivemedia/v3/a/f/p;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a()V
    .registers 2

    .prologue
    .line 45
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 46
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->b()V

    .line 48
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 35
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->b(Ljava/lang/String;)V

    .line 37
    :cond_9
    return-void
.end method

.method private static b()V
    .registers 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 58
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    return-void
.end method
