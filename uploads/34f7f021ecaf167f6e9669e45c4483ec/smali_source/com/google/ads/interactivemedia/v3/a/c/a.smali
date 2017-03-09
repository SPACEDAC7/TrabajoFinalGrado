.class public final Lcom/google/ads/interactivemedia/v3/a/c/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/l;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .registers 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    array-length v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->a:I

    .line 58
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->b:[I

    .line 59
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->c:[J

    .line 60
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->d:[J

    .line 61
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->e:[J

    .line 62
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->e:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([JJZZ)I

    move-result v0

    return v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public b(J)J
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a;->c:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(J)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method
