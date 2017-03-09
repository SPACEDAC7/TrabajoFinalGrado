.class public final Lcom/google/ads/interactivemedia/v3/a/e/c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/e/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e/m;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;)V
    .registers 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->a:Landroid/content/res/AssetManager;

    .line 63
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    .line 64
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/c$a;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 108
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 109
    const/4 v0, -0x1

    .line 129
    :cond_b
    :goto_b
    return v0

    .line 113
    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_30

    .line 115
    :goto_12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_39

    move-result v0

    .line 120
    if-lez v0, :cond_b

    .line 121
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_26

    .line 122
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    .line 124
    :cond_26
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_b

    .line 125
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a(I)V

    goto :goto_b

    .line 114
    :cond_30
    :try_start_30
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_39

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_12

    .line 116
    :catch_39
    move-exception v0

    .line 117
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/c$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/c$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/c$a;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    .line 69
    :try_start_3
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->c:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 72
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1f
    :goto_1f
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->c:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->a:Landroid/content/res/AssetManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 79
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_59

    .line 82
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_44

    .line 95
    :catch_44
    move-exception v0

    .line 96
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/c$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/c$a;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 73
    :cond_4b
    :try_start_4b
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 84
    :cond_59
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_71

    .line 85
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_63} :catch_44

    .line 99
    :cond_63
    :goto_63
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->f:Z

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_6e

    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a()V

    .line 103
    :cond_6e
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    return-wide v0

    .line 87
    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    .line 88
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->e:J
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_87} :catch_44

    goto :goto_63
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/c$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->c:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    .line 143
    :try_start_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1f
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    .line 147
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    .line 148
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->f:Z

    if-eqz v0, :cond_1e

    .line 149
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->f:Z

    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_1e

    .line 151
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    .line 156
    :cond_1e
    return-void

    .line 144
    :catch_1f
    move-exception v0

    .line 145
    :try_start_20
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/c$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/c$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 147
    :catchall_26
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->d:Ljava/io/InputStream;

    .line 148
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->f:Z

    if-eqz v1, :cond_38

    .line 149
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->f:Z

    .line 150
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_38

    .line 151
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/c;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_38
    throw v0
.end method
