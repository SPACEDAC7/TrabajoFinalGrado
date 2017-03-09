.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/b/a;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/a$b;,
        Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract appState()Ljava/lang/String;
.end method

.method public abstract eventId()Ljava/lang/String;
.end method

.method public abstract nativeTime()J
.end method

.method public abstract nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
.end method

.method public abstract nativeViewHidden()Z
.end method

.method public abstract nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
.end method

.method public abstract nativeVolume()D
.end method

.method public abstract queryId()Ljava/lang/String;
.end method

.method public abstract vastEvent()Ljava/lang/String;
.end method
