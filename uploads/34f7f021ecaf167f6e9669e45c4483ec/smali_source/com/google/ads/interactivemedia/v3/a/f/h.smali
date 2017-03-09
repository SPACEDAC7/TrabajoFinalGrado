.class public final Lcom/google/ads/interactivemedia/v3/a/f/h;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:I

.field private b:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/h;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    return v0
.end method

.method public a(I)J
    .registers 6

    .prologue
    .line 62
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    if-lt p1, v0, :cond_2d

    .line 63
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 47
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    .line 50
    :cond_13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/h;->a:I

    aput-wide p1, v0, v1

    .line 51
    return-void
.end method
