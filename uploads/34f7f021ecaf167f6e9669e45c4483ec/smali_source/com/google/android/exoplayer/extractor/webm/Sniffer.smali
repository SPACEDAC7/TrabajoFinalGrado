.class final Lcom/google/android/exoplayer/extractor/webm/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 40
    return-void
.end method

.method private readUint(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 93
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 94
    .local v3, "value":I
    if-nez v3, :cond_16

    .line 95
    const-wide/high16 v4, -0x8000000000000000L

    .line 110
    :goto_15
    return-wide v4

    .line 97
    :cond_16
    const/16 v2, 0x80

    .line 98
    .local v2, "mask":I
    const/4 v1, 0x0

    .line 99
    .local v1, "length":I
    :goto_19
    and-int v4, v3, v2

    if-nez v4, :cond_22

    .line 100
    shr-int/lit8 v2, v2, 0x1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 103
    :cond_22
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    .line 104
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v6, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    if-ge v0, v1, :cond_3f

    .line 106
    shl-int/lit8 v3, v3, 0x8

    .line 107
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 109
    :cond_3f
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    .line 110
    int-to-long v4, v3

    goto :goto_15
.end method


# virtual methods
.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 24
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    .line 47
    .local v12, "inputLength":J
    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_10

    const-wide/16 v18, 0x400

    cmp-long v5, v12, v18

    if-lez v5, :cond_4a

    :cond_10
    const-wide/16 v18, 0x400

    :goto_12
    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 50
    .local v4, "bytesToSearch":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    .line 52
    .local v16, "tag":J
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    .line 53
    :goto_35
    const-wide/32 v18, 0x1a45dfa3

    cmp-long v5, v16, v18

    if-eqz v5, :cond_7a

    .line 54
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    if-ne v5, v4, :cond_4d

    .line 55
    const/4 v5, 0x0

    .line 85
    :goto_49
    return v5

    .end local v4    # "bytesToSearch":I
    .end local v16    # "tag":J
    :cond_4a
    move-wide/from16 v18, v12

    .line 47
    goto :goto_12

    .line 57
    .restart local v4    # "bytesToSearch":I
    .restart local v16    # "tag":J
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 58
    const/16 v5, 0x8

    shl-long v18, v16, v5

    const-wide/16 v20, -0x100

    and-long v16, v18, v20

    .line 59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    aget-byte v5, v5, v18

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    move-wide/from16 v18, v0

    or-long v16, v16, v18

    goto :goto_35

    .line 63
    :cond_7a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->readUint(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 64
    .local v6, "headerSize":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v8, v5

    .line 65
    .local v8, "headerStart":J
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v6, v18

    if-eqz v5, :cond_95

    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_b3

    add-long v18, v8, v6

    cmp-long v5, v18, v12

    if-ltz v5, :cond_b3

    .line 67
    :cond_95
    const/4 v5, 0x0

    goto :goto_49

    .line 80
    .local v10, "id":J
    .local v14, "size":J
    :cond_97
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-eqz v5, :cond_b3

    .line 81
    long-to-int v5, v14

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 82
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    .line 71
    .end local v10    # "id":J
    .end local v14    # "size":J
    :cond_b3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-gez v5, :cond_e1

    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->readUint(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 73
    .restart local v10    # "id":J
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v10, v18

    if-nez v5, :cond_cd

    .line 74
    const/4 v5, 0x0

    goto/16 :goto_49

    .line 76
    :cond_cd
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->readUint(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v14

    .line 77
    .restart local v14    # "size":J
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-ltz v5, :cond_de

    const-wide/32 v18, 0x7fffffff

    cmp-long v5, v14, v18

    if-lez v5, :cond_97

    .line 78
    :cond_de
    const/4 v5, 0x0

    goto/16 :goto_49

    .line 85
    .end local v10    # "id":J
    .end local v14    # "size":J
    :cond_e1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-nez v5, :cond_f1

    const/4 v5, 0x1

    goto/16 :goto_49

    :cond_f1
    const/4 v5, 0x0

    goto/16 :goto_49
.end method
