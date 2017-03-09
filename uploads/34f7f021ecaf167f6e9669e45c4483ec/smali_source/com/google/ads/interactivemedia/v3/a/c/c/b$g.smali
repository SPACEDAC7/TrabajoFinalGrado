.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->a:I

    .line 1192
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->b:J

    .line 1193
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->c:I

    .line 1194
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)J
    .registers 3

    .prologue
    .line 1184
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)I
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)I
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->c:I

    return v0
.end method
