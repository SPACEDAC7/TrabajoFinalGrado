.class final Lcom/google/android/exoplayer/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    .line 36
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso3"

    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso4"

    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iso5"

    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iso6"

    .line 41
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avc1"

    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hvc1"

    .line 43
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hev1"

    .line 44
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mp41"

    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp42"

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3g2a"

    .line 47
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3g2b"

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3gr6"

    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3gs6"

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3ge6"

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3gg6"

    .line 52
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4V "

    .line 53
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M4A "

    .line 54
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f4v "

    .line 55
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "kddi"

    .line 56
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M4VP"

    .line 57
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "qt  "

    .line 58
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MSNV"

    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .registers 7
    .param p0, "brand"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    ushr-int/lit8 v3, p0, 0x8

    const-string v4, "3gp"

    invoke-static {v4}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_d

    .line 181
    :cond_c
    :goto_c
    return v1

    .line 176
    :cond_d
    sget-object v4, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v5, v4

    move v3, v2

    :goto_11
    if-ge v3, v5, :cond_1a

    aget v0, v4, v3

    .line 177
    .local v0, "compatibleBrand":I
    if-eq v0, p0, :cond_c

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .end local v0    # "compatibleBrand":I
    :cond_1a
    move v1, v2

    .line 181
    goto :goto_c
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 2
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z
    .registers 24
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    .line 93
    .local v16, "inputLength":J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_10

    const-wide/16 v18, 0x1000

    cmp-long v18, v16, v18

    if-lez v18, :cond_12

    :cond_10
    const-wide/16 v16, 0x1000

    .end local v16    # "inputLength":J
    :cond_12
    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 96
    .local v11, "bytesToSearch":I
    new-instance v9, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 97
    .local v9, "buffer":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v10, 0x0

    .line 98
    .local v10, "bytesSearched":I
    const/4 v12, 0x0

    .line 99
    .local v12, "foundGoodFileType":Z
    const/4 v15, 0x0

    .line 100
    .local v15, "isFragmented":Z
    :cond_21
    :goto_21
    if-ge v10, v11, :cond_80

    .line 102
    const/16 v13, 0x8

    .line 103
    .local v13, "headerSize":I
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 105
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 106
    .local v6, "atomSize":J
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 107
    .local v5, "atomType":I
    const-wide/16 v18, 0x1

    cmp-long v18, v6, v18

    if-nez v18, :cond_62

    .line 108
    const/16 v13, 0x10

    .line 109
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 110
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 113
    :cond_62
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_6c

    .line 115
    const/16 v18, 0x0

    .line 165
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :goto_6b
    return v18

    .line 117
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v13    # "headerSize":I
    :cond_6c
    add-int/2addr v10, v13

    .line 119
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_21

    .line 124
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_7f

    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_89

    .line 126
    :cond_7f
    const/4 v15, 0x1

    .line 165
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :cond_80
    if-eqz v12, :cond_101

    move/from16 v0, p1

    if-ne v0, v15, :cond_101

    const/16 v18, 0x1

    goto :goto_6b

    .line 130
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v13    # "headerSize":I
    :cond_89
    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    int-to-long v0, v13

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    int-to-long v0, v11

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_80

    .line 135
    int-to-long v0, v13

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 136
    .local v4, "atomDataSize":I
    add-int/2addr v10, v4

    .line 137
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_f8

    .line 139
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v4, v0, :cond_b2

    .line 140
    const/16 v18, 0x0

    goto :goto_6b

    .line 142
    :cond_b2
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v4, :cond_c3

    .line 143
    new-array v0, v4, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 145
    :cond_c3
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 146
    div-int/lit8 v8, v4, 0x4

    .line 147
    .local v8, "brandsCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_d5
    if-ge v14, v8, :cond_f2

    .line 148
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_e7

    .line 150
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 147
    :cond_e4
    add-int/lit8 v14, v14, 0x1

    goto :goto_d5

    .line 151
    :cond_e7
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v18

    if-eqz v18, :cond_e4

    .line 152
    const/4 v12, 0x1

    .line 156
    :cond_f2
    if-nez v12, :cond_21

    .line 158
    const/16 v18, 0x0

    goto/16 :goto_6b

    .line 160
    .end local v8    # "brandsCount":I
    .end local v14    # "i":I
    :cond_f8
    if-eqz v4, :cond_21

    .line 162
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto/16 :goto_21

    .line 165
    .end local v4    # "atomDataSize":I
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :cond_101
    const/16 v18, 0x0

    goto/16 :goto_6b
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 2
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
