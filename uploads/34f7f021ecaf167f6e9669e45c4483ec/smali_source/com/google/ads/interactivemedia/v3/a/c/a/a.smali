.class final Lcom/google/ads/interactivemedia/v3/a/c/a/a;
.super Lcom/google/ads/interactivemedia/v3/a/c/a/d;
.source "IMASDK"


# static fields
.field private static final b:[I


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->b:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 80
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 82
    if-nez v1, :cond_44

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->d:Z

    if-nez v3, :cond_44

    .line 83
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    new-array v8, v1, [B

    .line 84
    array-length v1, v8

    invoke-virtual {p1, v8, v6, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 85
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/a/f/c;->a([B)Landroid/util/Pair;

    move-result-object v7

    .line 87
    const-string v1, "audio/mp4a-latm"

    .line 88
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->a()J

    move-result-wide v4

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move v3, v2

    move-object v9, v0

    .line 87
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 91
    iput-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->d:Z

    .line 98
    :cond_43
    :goto_43
    return-void

    .line 92
    :cond_44
    if-ne v1, v10, :cond_43

    .line 94
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v5

    .line 95
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, p1, v5}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 96
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-wide v2, p2

    move v4, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    goto :goto_43
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->c:Z

    if-nez v0, :cond_55

    .line 60
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 61
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 62
    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    .line 63
    if-ltz v0, :cond_18

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_33

    .line 64
    :cond_18
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid sample rate index: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_33
    const/16 v0, 0xa

    if-eq v1, v0, :cond_52

    .line 68
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;

    const/16 v2, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Audio format not supported: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_52
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->c:Z

    .line 75
    :goto_54
    return v3

    .line 73
    :cond_55
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_54
.end method
