.class final Lcom/google/android/exoplayer/extractor/mp3/Id3Util;
.super Ljava/lang/Object;
.source "Id3Util.java"


# static fields
.field private static final CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

.field private static final ID3_TAG:I

.field private static final MAXIMUM_METADATA_SIZE:I = 0x300000


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-16LE"

    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canParseMetadata(IIII)Z
    .registers 7
    .param p0, "majorVersion"    # I
    .param p1, "minorVersion"    # I
    .param p2, "flags"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 81
    const/16 v0, 0xff

    if-eq p1, v0, :cond_27

    if-lt p0, v1, :cond_27

    if-gt p0, v2, :cond_27

    const/high16 v0, 0x300000

    if-gt p3, v0, :cond_27

    if-ne p0, v1, :cond_18

    and-int/lit8 v0, p2, 0x3f

    if-nez v0, :cond_27

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_27

    :cond_18
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    and-int/lit8 v0, p2, 0x1f

    if-nez v0, :cond_27

    :cond_1f
    if-ne p0, v2, :cond_25

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static canUnescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z
    .registers 14
    .param p0, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "unsignedIntDataSizeHack"    # Z

    .prologue
    const/4 v3, 0x1

    const-wide/16 v10, 0x7f

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 217
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_15

    .line 218
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    if-nez v5, :cond_16

    .line 241
    :cond_15
    :goto_15
    return v3

    .line 221
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 222
    .local v0, "dataSize":J
    if-nez p1, :cond_45

    .line 224
    const-wide/32 v6, 0x808080

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_28

    move v3, v4

    .line 225
    goto :goto_15

    .line 227
    :cond_28
    and-long v6, v0, v10

    const/16 v5, 0x8

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/4 v5, 0x7

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x10

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0xe

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x18

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0x15

    shl-long/2addr v8, v5

    or-long v0, v6, v8

    .line 230
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_52

    move v3, v4

    .line 231
    goto :goto_15

    .line 233
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 234
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_63

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_63

    move v3, v4

    .line 236
    goto :goto_15

    .line 239
    :cond_63
    long-to-int v5, v0

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_7
.end method

.method private static findNextComment(ILcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 16
    .param p0, "majorVersion"    # I
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x4

    const/4 v7, 0x0

    .line 140
    :goto_5
    if-ne p0, v13, :cond_5d

    .line 141
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_f

    .line 184
    :cond_e
    :goto_e
    return-object v7

    .line 144
    :cond_f
    const/4 v10, 0x3

    const-string v11, "US-ASCII"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "id":Ljava/lang/String;
    const-string v10, "\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 148
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 149
    .local v5, "frameSize":I
    if-eqz v5, :cond_e

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-gt v5, v10, :cond_e

    .line 152
    const-string v10, "COM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 178
    :cond_36
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 179
    .local v3, "encoding":I
    if-ltz v3, :cond_e

    sget-object v10, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    array-length v10, v10

    if-ge v3, v10, :cond_e

    .line 182
    sget-object v10, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    aget-object v0, v10, v3

    .line 183
    .local v0, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p1, v10, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u0000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "commentFields":[Ljava/lang/String;
    array-length v10, v1

    if-ne v10, v13, :cond_e

    aget-object v7, v1, v9

    aget-object v8, v1, v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_e

    .line 156
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "commentFields":[Ljava/lang/String;
    .end local v3    # "encoding":I
    .end local v5    # "frameSize":I
    .end local v6    # "id":Ljava/lang/String;
    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_e

    .line 159
    const-string v10, "US-ASCII"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {p1, v12, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .restart local v6    # "id":Ljava/lang/String;
    const-string v10, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 163
    if-ne p0, v12, :cond_a8

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 164
    .restart local v5    # "frameSize":I
    :goto_7d
    if-eqz v5, :cond_e

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-gt v5, v10, :cond_e

    .line 167
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 168
    .local v4, "flags":I
    if-ne p0, v12, :cond_91

    and-int/lit8 v10, v4, 0xc

    if-nez v10, :cond_98

    :cond_91
    const/4 v10, 0x3

    if-ne p0, v10, :cond_ad

    and-int/lit16 v10, v4, 0xc0

    if-eqz v10, :cond_ad

    :cond_98
    move v2, v8

    .line 170
    .local v2, "compressedOrEncrypted":Z
    :goto_99
    if-nez v2, :cond_a3

    const-string v10, "COMM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 174
    .end local v2    # "compressedOrEncrypted":Z
    .end local v4    # "flags":I
    :cond_a3
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_5

    .line 163
    .end local v5    # "frameSize":I
    :cond_a8
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    goto :goto_7d

    .restart local v4    # "flags":I
    .restart local v5    # "frameSize":I
    :cond_ad
    move v2, v9

    .line 168
    goto :goto_99
.end method

.method private static parseGaplessInfo(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .registers 12
    .param p0, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "version"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->unescape(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Z

    .line 92
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 93
    if-ne p1, v7, :cond_69

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_69

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v6, :cond_19

    move-object v2, v5

    .line 134
    :goto_18
    return-object v2

    .line 97
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 98
    .local v1, "extendedHeaderSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v1, v4, :cond_25

    move-object v2, v5

    .line 99
    goto :goto_18

    .line 101
    :cond_25
    const/4 v3, 0x0

    .line 102
    .local v3, "paddingSize":I
    if-lt v1, v8, :cond_43

    .line 103
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 105
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v1, :cond_43

    move-object v2, v5

    .line 108
    goto :goto_18

    .line 111
    :cond_43
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 125
    .end local v1    # "extendedHeaderSize":I
    .end local v3    # "paddingSize":I
    :cond_46
    :goto_46
    invoke-static {p1, p0}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->findNextComment(ILcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v0

    .local v0, "comment":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_8b

    .line 126
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_46

    .line 127
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 128
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v2

    .line 129
    .local v2, "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    if-eqz v2, :cond_46

    goto :goto_18

    .line 112
    .end local v0    # "comment":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    :cond_69
    if-ne p1, v6, :cond_46

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_46

    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v6, :cond_77

    move-object v2, v5

    .line 114
    goto :goto_18

    .line 116
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    .line 117
    .restart local v1    # "extendedHeaderSize":I
    if-lt v1, v8, :cond_85

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-le v1, v4, :cond_87

    :cond_85
    move-object v2, v5

    .line 118
    goto :goto_18

    .line 120
    :cond_87
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_46

    .end local v1    # "extendedHeaderSize":I
    .restart local v0    # "comment":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8b
    move-object v2, v5

    .line 134
    goto :goto_18
.end method

.method public static parseId3(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .registers 13
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    .line 50
    new-instance v7, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v7, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 51
    .local v7, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v6, 0x0

    .line 52
    .local v6, "peekedId3Bytes":I
    const/4 v4, 0x0

    .line 54
    .local v4, "metadata":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    :goto_a
    iget-object v8, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p0, v8, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 55
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 56
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    if-eq v8, v9, :cond_21

    .line 74
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 75
    invoke-interface {p0, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 76
    return-object v4

    .line 60
    :cond_21
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 61
    .local v3, "majorVersion":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 62
    .local v5, "minorVersion":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 63
    .local v0, "flags":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 64
    .local v2, "length":I
    if-nez v4, :cond_4b

    invoke-static {v3, v5, v0, v2}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->canParseMetadata(IIII)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 65
    new-array v1, v2, [B

    .line 66
    .local v1, "frame":[B
    invoke-interface {p0, v1, v10, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 67
    new-instance v8, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v8, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v8, v3, v0}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->parseGaplessInfo(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v4

    .line 72
    .end local v1    # "frame":[B
    :goto_47
    add-int/lit8 v8, v2, 0xa

    add-int/2addr v6, v8

    .line 73
    goto :goto_a

    .line 69
    :cond_4b
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_47
.end method

.method private static unescape(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Z
    .registers 10
    .param p0, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "version"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const/4 v5, 0x4

    if-eq p1, v5, :cond_34

    .line 189
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_32

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 192
    .local v0, "bytes":[B
    array-length v2, v0

    .line 193
    .local v2, "newLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_2f

    .line 194
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_2c

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_2c

    .line 195
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    add-int/lit8 v2, v2, -0x1

    .line 193
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 199
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "newLength":I
    :cond_32
    :goto_32
    move v3, v4

    .line 211
    :cond_33
    return v3

    .line 203
    :cond_34
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 204
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_32

    .line 205
    :cond_3e
    invoke-static {p0, v4}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 206
    invoke-static {p0, v4}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_32
.end method

.method private static unescapeVersion4(Lcom/google/android/exoplayer/util/ParsableByteArray;Z)V
    .registers 15
    .param p0, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "unsignedIntDataSizeHack"    # Z

    .prologue
    .line 245
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 247
    .local v0, "bytes":[B
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_14

    .line 248
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    if-nez v11, :cond_15

    .line 286
    :cond_14
    return-void

    .line 251
    :cond_15
    if-eqz p1, :cond_70

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 253
    .local v1, "dataSize":I
    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 254
    .local v3, "flags":I
    move v6, v3

    .line 255
    .local v6, "previousFlags":I
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_40

    .line 257
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 258
    .local v5, "offset":I
    add-int/lit8 v11, v5, 0x4

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-static {v0, v11, v0, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    add-int/lit8 v1, v1, -0x4

    .line 260
    and-int/lit8 v3, v3, -0x2

    .line 261
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 263
    .end local v5    # "offset":I
    :cond_40
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_89

    .line 265
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 266
    .local v7, "readOffset":I
    move v9, v7

    .line 267
    .local v9, "writeOffset":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v10, v9

    .end local v9    # "writeOffset":I
    .local v10, "writeOffset":I
    :goto_4d
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v1, :cond_75

    .line 268
    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_63

    aget-byte v11, v0, v7

    if-nez v11, :cond_63

    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 270
    add-int/lit8 v1, v1, -0x1

    .line 272
    :cond_63
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "writeOffset":I
    .restart local v9    # "writeOffset":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "readOffset":I
    .local v8, "readOffset":I
    aget-byte v11, v0, v7

    aput-byte v11, v0, v10

    .line 267
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "writeOffset":I
    .restart local v10    # "writeOffset":I
    move v7, v8

    .end local v8    # "readOffset":I
    .restart local v7    # "readOffset":I
    goto :goto_4d

    .line 252
    .end local v1    # "dataSize":I
    .end local v3    # "flags":I
    .end local v4    # "i":I
    .end local v6    # "previousFlags":I
    .end local v7    # "readOffset":I
    .end local v10    # "writeOffset":I
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    goto :goto_1b

    .line 274
    .restart local v1    # "dataSize":I
    .restart local v3    # "flags":I
    .restart local v4    # "i":I
    .restart local v6    # "previousFlags":I
    .restart local v7    # "readOffset":I
    .restart local v10    # "writeOffset":I
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    sub-int v12, v7, v10

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v0, v7, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    and-int/lit8 v3, v3, -0x3

    .line 278
    .end local v4    # "i":I
    .end local v7    # "readOffset":I
    .end local v10    # "writeOffset":I
    :cond_89
    if-ne v3, v6, :cond_8d

    if-eqz p1, :cond_a4

    .line 279
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v2, v11, -0x6

    .line 280
    .local v2, "dataSizeOffset":I
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->writeSyncSafeInteger([BII)V

    .line 281
    add-int/lit8 v11, v2, 0x4

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 282
    add-int/lit8 v11, v2, 0x5

    and-int/lit16 v12, v3, 0xff

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 284
    .end local v2    # "dataSizeOffset":I
    :cond_a4
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_6
.end method

.method private static writeSyncSafeInteger([BII)V
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 289
    shr-int/lit8 v0, p2, 0x15

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 290
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0xe

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 291
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 292
    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 293
    return-void
.end method
