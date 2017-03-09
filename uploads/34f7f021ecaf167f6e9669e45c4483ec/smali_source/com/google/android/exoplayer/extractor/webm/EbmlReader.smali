.class interface abstract Lcom/google/android/exoplayer/extractor/webm/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# static fields
.field public static final TYPE_BINARY:I = 0x4

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_MASTER:I = 0x1

.field public static final TYPE_STRING:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_UNSIGNED_INT:I = 0x2


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
