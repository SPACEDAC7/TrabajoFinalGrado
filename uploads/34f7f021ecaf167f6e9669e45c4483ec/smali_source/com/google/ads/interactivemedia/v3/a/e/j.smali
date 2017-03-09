.class public final Lcom/google/ads/interactivemedia/v3/a/e/j;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/e/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/e/m;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/e/j;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/m;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/e/m;)V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    .line 60
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/j$a;
        }
    .end annotation

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 88
    const/4 v0, -0x1

    .line 104
    :cond_9
    :goto_9
    return v0

    .line 92
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_2a

    move-result v0

    .line 97
    if-lez v0, :cond_9

    .line 98
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    .line 99
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_9

    .line 100
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a(I)V

    goto :goto_9

    .line 93
    :catch_2a
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/j$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/j$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/j$a;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->c:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    sub-long/2addr v0, v2

    .line 69
    :goto_2f
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    .line 70
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_49

    .line 71
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3f} :catch_3f

    .line 73
    :catch_3f
    move-exception v0

    .line 74
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/j$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/j$a;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 69
    :cond_46
    :try_start_46
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_48} :catch_3f

    goto :goto_2f

    .line 77
    :cond_49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->e:Z

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_55

    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a()V

    .line 82
    :cond_55
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->d:J

    return-wide v0
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/j$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->c:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1e

    .line 118
    :try_start_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1f
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    .line 122
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    .line 123
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->e:Z

    if-eqz v0, :cond_1e

    .line 124
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->e:Z

    .line 125
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_1e

    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    .line 131
    :cond_1e
    return-void

    .line 119
    :catch_1f
    move-exception v0

    .line 120
    :try_start_20
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/j$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/j$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 122
    :catchall_26
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->b:Ljava/io/RandomAccessFile;

    .line 123
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->e:Z

    if-eqz v1, :cond_38

    .line 124
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->e:Z

    .line 125
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_38

    .line 126
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/j;->a:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_38
    throw v0
.end method
