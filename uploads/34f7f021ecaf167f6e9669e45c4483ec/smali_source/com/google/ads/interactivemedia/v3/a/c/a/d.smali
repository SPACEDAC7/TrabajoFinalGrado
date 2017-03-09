.class abstract Lcom/google/ads/interactivemedia/v3/a/c/a/d;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private b:J


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->b:J

    .line 49
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->b:J

    .line 58
    return-void
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    .line 89
    :cond_9
    return-void
.end method
