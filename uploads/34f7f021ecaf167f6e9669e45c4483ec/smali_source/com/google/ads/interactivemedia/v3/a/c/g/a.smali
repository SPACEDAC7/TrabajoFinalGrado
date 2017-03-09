.class final Lcom/google/ads/interactivemedia/v3/a/c/g/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/g/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

.field private d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    .line 44
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    invoke-interface {p1, v1, v0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    :goto_8
    if-ge v0, p2, :cond_18

    .line 178
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 180
    :cond_18
    return-wide v2
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;I)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)J

    move-result-wide v0

    .line 196
    const/4 v2, 0x4

    if-ne p2, v2, :cond_e

    .line 197
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 201
    :goto_d
    return-wide v0

    .line 199
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_d
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 149
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 151
    :goto_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    invoke-interface {p1, v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 152
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a(I)I

    move-result v0

    .line 153
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    if-gt v0, v5, :cond_2b

    .line 154
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a:[B

    invoke-static {v1, v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 155
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 156
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 157
    int-to-long v0, v1

    return-wide v0

    .line 160
    :cond_2b
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    goto :goto_5
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/f;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p2, :cond_5

    .line 216
    const-string v0, ""

    .line 220
    :goto_4
    return-object v0

    .line 218
    :cond_5
    new-array v1, p2, [B

    .line 219
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 220
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    .line 59
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a()V

    .line 61
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g/c;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    .line 54
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    if-eqz v0, :cond_3a

    move v0, v6

    :goto_9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 67
    :goto_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 68
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3c

    .line 69
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;->b(Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->c(I)V

    .line 125
    :goto_39
    return v6

    :cond_3a
    move v0, v7

    .line 65
    goto :goto_9

    .line 73
    :cond_3c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    if-nez v0, :cond_5e

    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v6, v7, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;ZZI)J

    move-result-wide v0

    .line 75
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_51

    .line 76
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v0

    .line 78
    :cond_51
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_59

    move v6, v7

    .line 79
    goto :goto_39

    .line 82
    :cond_59
    long-to-int v0, v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    .line 83
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    .line 86
    :cond_5e
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    if-ne v0, v6, :cond_6f

    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v7, v6, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    .line 91
    :cond_6f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(I)I

    move-result v0

    .line 92
    packed-switch v0, :pswitch_data_178

    .line 131
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid element type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_95
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    .line 95
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    add-long/2addr v0, v2

    .line 96
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b:Ljava/util/Stack;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/g/a$a;-><init>(IJLcom/google/ads/interactivemedia/v3/a/c/g/a$1;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(IJJ)V

    .line 98
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto :goto_39

    .line 101
    :pswitch_b5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_d8

    .line 102
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    const/16 v1, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_d8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(IJ)V

    .line 105
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto/16 :goto_39

    .line 108
    :pswitch_ea
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_115

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_115

    .line 110
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    const/16 v1, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid float size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;I)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(ID)V

    .line 113
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto/16 :goto_39

    .line 116
    :pswitch_127
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_14d

    .line 117
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    const/16 v1, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "String element size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_14d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->c(Lcom/google/ads/interactivemedia/v3/a/c/f;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(ILjava/lang/String;)V

    .line 120
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto/16 :goto_39

    .line 123
    :pswitch_15f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->f:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/c;->a(IILcom/google/ads/interactivemedia/v3/a/c/f;)V

    .line 124
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto/16 :goto_39

    .line 127
    :pswitch_16d
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 128
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;->e:I

    goto/16 :goto_c

    .line 92
    nop

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_95
        :pswitch_b5
        :pswitch_127
        :pswitch_15f
        :pswitch_ea
    .end packed-switch
.end method
