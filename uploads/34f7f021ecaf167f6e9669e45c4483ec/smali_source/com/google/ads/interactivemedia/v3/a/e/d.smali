.class public final Lcom/google/ads/interactivemedia/v3/a/e/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/e/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e/m;

.field private c:Landroid/content/res/AssetFileDescriptor;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;)V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->a:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    .line 67
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/d$a;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 106
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 107
    const/4 v0, -0x1

    .line 127
    :cond_b
    :goto_b
    return v0

    .line 111
    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_30

    .line 113
    :goto_12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_39

    move-result v0

    .line 118
    if-lez v0, :cond_b

    .line 119
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_26

    .line 120
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    .line 122
    :cond_26
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_b

    .line 123
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a(I)V

    goto :goto_b

    .line 112
    :cond_30
    :try_start_30
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_39

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_12

    .line 114
    :catch_39
    move-exception v0

    .line 115
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/d$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/d$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/d$a;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 72
    :try_start_2
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->e:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->a:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    .line 74
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 76
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3e

    .line 79
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_37} :catch_37

    .line 92
    :catch_37
    move-exception v0

    .line 93
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/d$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/d$a;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 81
    :cond_3e
    :try_start_3e
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_57

    .line 82
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_37

    .line 96
    :cond_48
    :goto_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_54

    .line 98
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a()V

    .line 101
    :cond_54
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    return-wide v0

    .line 84
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    .line 85
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->f:J
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6c} :catch_37

    goto :goto_48
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/d$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->e:Ljava/lang/String;

    .line 140
    :try_start_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_44
    .catchall {:try_start_4 .. :try_end_d} :catchall_4b

    .line 146
    :cond_d
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    .line 148
    :try_start_f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_18

    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2a
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 154
    :cond_18
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    if-eqz v0, :cond_29

    .line 156
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_29

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    .line 163
    :cond_29
    return-void

    .line 151
    :catch_2a
    move-exception v0

    .line 152
    :try_start_2b
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/d$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/d$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 154
    :catchall_31
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    if-eqz v1, :cond_43

    .line 156
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    .line 157
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_43

    .line 158
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_43
    throw v0

    .line 143
    :catch_44
    move-exception v0

    .line 144
    :try_start_45
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/d$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/d$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    .line 146
    :catchall_4b
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->d:Ljava/io/InputStream;

    .line 148
    :try_start_4e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_57

    .line 149
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_69
    .catchall {:try_start_4e .. :try_end_57} :catchall_70

    .line 154
    :cond_57
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    if-eqz v1, :cond_68

    .line 156
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    .line 157
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_68

    .line 158
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_68
    throw v0

    .line 151
    :catch_69
    move-exception v0

    .line 152
    :try_start_6a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/d$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/d$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 154
    :catchall_70
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->c:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    if-eqz v1, :cond_82

    .line 156
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->g:Z

    .line 157
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_82

    .line 158
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/d;->b:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_82
    throw v0
.end method
