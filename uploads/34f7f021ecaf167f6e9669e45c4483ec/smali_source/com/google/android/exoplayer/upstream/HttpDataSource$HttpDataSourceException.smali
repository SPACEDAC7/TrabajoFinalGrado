.class public Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSpec;I)V
    .registers 3
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p2, "type"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 64
    iput p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 76
    iput p3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 70
    iput p3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p4, "type"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 82
    iput p4, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 83
    return-void
.end method
