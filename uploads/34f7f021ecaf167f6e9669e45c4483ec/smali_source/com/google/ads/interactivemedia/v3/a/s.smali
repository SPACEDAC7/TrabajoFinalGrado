.class public final Lcom/google/ads/interactivemedia/v3/a/s;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/a/d;

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I

.field public e:J

.field private final f:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    .line 72
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/s;->f:I

    .line 73
    return-void
.end method

.method private b(I)Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 142
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 143
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    :goto_9
    return-object v0

    .line 144
    :cond_a
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 145
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_9

    .line 147
    :cond_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_44

    const/4 v0, 0x0

    .line 148
    :goto_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_19
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_b

    .line 89
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/s;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    .line 109
    :cond_a
    :goto_a
    return-void

    .line 93
    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 95
    add-int v2, v1, p1

    .line 96
    if-ge v0, v2, :cond_a

    .line 100
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/s;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    if-lez v1, :cond_31

    .line 103
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 108
    :cond_31
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 122
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    :cond_9
    return-void
.end method
