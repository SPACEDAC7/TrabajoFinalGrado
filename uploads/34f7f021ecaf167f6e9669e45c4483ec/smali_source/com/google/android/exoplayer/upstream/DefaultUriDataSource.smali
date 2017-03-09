.class public final Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;
.super Ljava/lang/Object;
.source "DefaultUriDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private final assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "httpDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 110
    new-instance v0, Lcom/google/android/exoplayer/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "allowCrossProtocolRedirects"    # Z

    .prologue
    const/16 v4, 0x1f40

    .line 93
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-eqz v0, :cond_c

    .line 150
    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->close()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 152
    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 155
    :cond_c
    return-void

    .line 152
    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 6
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 118
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 120
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 133
    :goto_28
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/upstream/UriDataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v2

    return-wide v2

    .line 116
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_5

    .line 123
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_28

    .line 125
    :cond_36
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_28

    .line 127
    :cond_43
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_28

    .line 130
    :cond_50
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_28
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/UriDataSource;->read([BII)I

    move-result v0

    return v0
.end method
