.class public final Lcom/google/android/exoplayer/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 138
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 140
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_44
    .catchall {:try_start_4 .. :try_end_d} :catchall_4b

    .line 146
    :cond_d
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    :try_start_f
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_18

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2a
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 154
    :cond_18
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_29

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_29

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 163
    :cond_29
    return-void

    .line 151
    :catch_2a
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_2b
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_31
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_43

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_43

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_43
    throw v1

    .line 143
    :catch_44
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_45
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    :try_start_4e
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_57

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_69
    .catchall {:try_start_4e .. :try_end_57} :catchall_70

    .line 154
    :cond_57
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_68

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_68

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_68
    throw v1

    .line 151
    :catch_69
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6a
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_70
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_82

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_82

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_82
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 10
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 72
    :try_start_2
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 76
    .local v2, "skipped":J
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3e

    .line 79
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_37} :catch_37

    .line 92
    .end local v2    # "skipped":J
    :catch_37
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "skipped":J
    :cond_3e
    :try_start_3e
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_57

    .line 82
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_37

    .line 96
    :cond_48
    :goto_48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_54

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 101
    :cond_54
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v4

    .line 84
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 85
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_48

    .line 89
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6c} :catch_37

    goto :goto_48
.end method

.method public read([BII)I
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 106
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_c

    .line 107
    const/4 v0, -0x1

    .line 127
    :cond_b
    :goto_b
    return v0

    .line 109
    :cond_c
    const/4 v0, 0x0

    .line 111
    .local v0, "bytesRead":I
    :try_start_d
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_32

    move v1, p3

    .line 113
    .local v1, "bytesToRead":I
    :goto_14
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_3b

    move-result v0

    .line 118
    if-lez v0, :cond_b

    .line 119
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_28

    .line 120
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 122
    :cond_28
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_b

    .line 123
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_b

    .line 111
    .end local v1    # "bytesToRead":I
    :cond_32
    :try_start_32
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 112
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_3b

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_14

    .line 114
    :catch_3b
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
