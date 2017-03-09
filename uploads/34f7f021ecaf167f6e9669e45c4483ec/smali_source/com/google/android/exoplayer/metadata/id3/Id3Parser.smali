.class public final Lcom/google/android/exoplayer/metadata/id3/Id3Parser;
.super Ljava/lang/Object;
.source "Id3Parser.java"

# interfaces
.implements Lcom/google/android/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delimiterLength(I)I
    .registers 2
    .param p0, "encodingByte"    # I

    .prologue
    .line 119
    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x2

    goto :goto_6
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .registers 2
    .param p0, "encodingByte"    # I

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_12

    .line 280
    const-string v0, "ISO-8859-1"

    :goto_5
    return-object v0

    .line 272
    :pswitch_6
    const-string v0, "ISO-8859-1"

    goto :goto_5

    .line 274
    :pswitch_9
    const-string v0, "UTF-16"

    goto :goto_5

    .line 276
    :pswitch_c
    const-string v0, "UTF-16BE"

    goto :goto_5

    .line 278
    :pswitch_f
    const-string v0, "UTF-8"

    goto :goto_5

    .line 270
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private static indexOfEos([BII)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    .line 94
    .local v0, "terminationPos":I
    if-eqz p2, :cond_9

    const/4 v1, 0x3

    if-ne p2, v1, :cond_11

    :cond_9
    move v1, v0

    .line 106
    :goto_a
    return v1

    .line 103
    :cond_b
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    .line 99
    :cond_11
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_22

    .line 100
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_b

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_b

    move v1, v0

    .line 101
    goto :goto_a

    .line 106
    :cond_22
    array-length v1, p0

    goto :goto_a
.end method

.method private static indexOfZeroByte([BI)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .prologue
    .line 110
    move v0, p1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 111
    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    .line 115
    .end local v0    # "i":I
    :goto_8
    return v0

    .line 110
    .restart local v0    # "i":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_c
    array-length v0, p0

    goto :goto_8
.end method

.method private static parseApicFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/ApicFrame;
    .registers 15
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 222
    .local v5, "encoding":I
    invoke-static {v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v11, p1, -0x1

    new-array v1, v11, [B

    .line 225
    .local v1, "data":[B
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v1, v12, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 227
    invoke-static {v1, v12}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v7

    .line 228
    .local v7, "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/String;

    const-string v11, "ISO-8859-1"

    invoke-direct {v6, v1, v12, v7, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 230
    .local v6, "mimeType":Ljava/lang/String;
    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v10, v11, 0xff

    .line 232
    .local v10, "pictureType":I
    add-int/lit8 v4, v7, 0x2

    .line 233
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    .line 234
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v11, v3, v4

    invoke-direct {v2, v1, v4, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 237
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v11

    add-int v9, v3, v11

    .line 238
    .local v9, "pictureDataStartIndex":I
    array-length v11, v1

    invoke-static {v1, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 240
    .local v8, "pictureData":[B
    new-instance v11, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;

    invoke-direct {v11, v6, v2, v10, v8}, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static parseBinaryFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;
    .registers 5
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 258
    new-array v0, p1, [B

    .line 259
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 261
    new-instance v1, Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static parseGeobFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/GeobFrame;
    .registers 17
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 195
    .local v5, "encoding":I
    invoke-static {v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    .line 198
    .local v1, "data":[B
    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 200
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v10

    .line 201
    .local v10, "mimeTypeEndIndex":I
    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 203
    .local v9, "mimeType":Ljava/lang/String;
    add-int/lit8 v8, v10, 0x1

    .line 204
    .local v8, "filenameStartIndex":I
    invoke-static {v1, v8, v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v7

    .line 205
    .local v7, "filenameEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 208
    .local v6, "filename":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    .line 209
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    .line 210
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 213
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    .line 214
    .local v12, "objectDataStartIndex":I
    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 216
    .local v11, "objectData":[B
    new-instance v13, Lcom/google/android/exoplayer/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lcom/google/android/exoplayer/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .registers 14
    .param p0, "id3Buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 132
    .local v2, "id1":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 133
    .local v3, "id2":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 134
    .local v4, "id3":I
    const/16 v6, 0x49

    if-ne v2, v6, :cond_19

    const/16 v6, 0x44

    if-ne v3, v6, :cond_19

    const/16 v6, 0x33

    if-eq v4, v6, :cond_3e

    .line 135
    :cond_19
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 135
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_3e
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 141
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 144
    .local v5, "id3Size":I
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_5a

    .line 145
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 146
    .local v0, "extendedHeaderSize":I
    const/4 v6, 0x4

    if-le v0, v6, :cond_59

    .line 147
    add-int/lit8 v6, v0, -0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 149
    :cond_59
    sub-int/2addr v5, v0

    .line 153
    .end local v0    # "extendedHeaderSize":I
    :cond_5a
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_60

    .line 154
    add-int/lit8 v5, v5, -0xa

    .line 157
    :cond_60
    return v5
.end method

.method private static parsePrivFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/PrivFrame;
    .registers 9
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 180
    new-array v0, p1, [B

    .line 181
    .local v0, "data":[B
    invoke-virtual {p0, v0, v6, p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 183
    invoke-static {v0, v6}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v2

    .line 184
    .local v2, "ownerEndIndex":I
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 186
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .line 187
    .local v4, "privateDataStartIndex":I
    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 189
    .local v3, "privateData":[B
    new-instance v5, Lcom/google/android/exoplayer/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lcom/google/android/exoplayer/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static parseTextInformationFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;
    .registers 10
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 246
    .local v4, "encoding":I
    invoke-static {v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x1

    new-array v1, v5, [B

    .line 249
    .local v1, "data":[B
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 251
    invoke-static {v1, v6, v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    .line 252
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v6, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 254
    .local v2, "description":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v2}, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static parseTxxxFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;
    .registers 12
    .param p0, "id3Data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 163
    .local v4, "encoding":I
    invoke-static {v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 166
    .local v1, "data":[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 168
    invoke-static {v1, v9, v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    .line 169
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 171
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 172
    .local v7, "valueStartIndex":I
    invoke-static {v1, v7, v4}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v6

    .line 173
    .local v6, "valueEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 175
    .local v5, "value":Ljava/lang/String;
    new-instance v8, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;

    invoke-direct {v8, v2, v5}, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parse([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/List;
    .registers 21
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v11, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;"
    new-instance v10, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 48
    .local v10, "id3Data":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static {v10}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v12

    .line 50
    .local v12, "id3Size":I
    :goto_12
    if-lez v12, :cond_2b

    .line 51
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 52
    .local v4, "frameId0":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 53
    .local v5, "frameId1":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 54
    .local v6, "frameId2":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 55
    .local v7, "frameId3":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v8

    .line 56
    .local v8, "frameSize":I
    const/4 v13, 0x1

    if-gt v8, v13, :cond_30

    .line 87
    .end local v4    # "frameId0":I
    .end local v5    # "frameId1":I
    .end local v6    # "frameId2":I
    .end local v7    # "frameId3":I
    .end local v8    # "frameSize":I
    :cond_2b
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    return-object v13

    .line 61
    .restart local v4    # "frameId0":I
    .restart local v5    # "frameId1":I
    .restart local v6    # "frameId2":I
    .restart local v7    # "frameId3":I
    .restart local v8    # "frameSize":I
    :cond_30
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 65
    const/16 v13, 0x54

    if-ne v4, v13, :cond_4f

    const/16 v13, 0x58

    if-ne v5, v13, :cond_4f

    const/16 v13, 0x58

    if-ne v6, v13, :cond_4f

    const/16 v13, 0x58

    if-ne v7, v13, :cond_4f

    .line 66
    :try_start_44
    invoke-static {v10, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseTxxxFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;

    move-result-object v3

    .line 80
    .local v3, "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    :goto_48
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v13, v8, 0xa

    sub-int/2addr v12, v13

    goto :goto_12

    .line 67
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    :cond_4f
    const/16 v13, 0x50

    if-ne v4, v13, :cond_64

    const/16 v13, 0x52

    if-ne v5, v13, :cond_64

    const/16 v13, 0x49

    if-ne v6, v13, :cond_64

    const/16 v13, 0x56

    if-ne v7, v13, :cond_64

    .line 68
    invoke-static {v10, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parsePrivFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/PrivFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    goto :goto_48

    .line 69
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    :cond_64
    const/16 v13, 0x47

    if-ne v4, v13, :cond_79

    const/16 v13, 0x45

    if-ne v5, v13, :cond_79

    const/16 v13, 0x4f

    if-ne v6, v13, :cond_79

    const/16 v13, 0x42

    if-ne v7, v13, :cond_79

    .line 70
    invoke-static {v10, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseGeobFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/GeobFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    goto :goto_48

    .line 71
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    :cond_79
    const/16 v13, 0x41

    if-ne v4, v13, :cond_8e

    const/16 v13, 0x50

    if-ne v5, v13, :cond_8e

    const/16 v13, 0x49

    if-ne v6, v13, :cond_8e

    const/16 v13, 0x43

    if-ne v7, v13, :cond_8e

    .line 72
    invoke-static {v10, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseApicFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/metadata/id3/ApicFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    goto :goto_48

    .line 73
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    :cond_8e
    const/16 v13, 0x54

    if-ne v4, v13, :cond_c2

    .line 74
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "id":Ljava/lang/String;
    invoke-static {v10, v8, v9}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseTextInformationFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;

    move-result-object v3

    .line 76
    .restart local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    goto :goto_48

    .line 77
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    .end local v9    # "id":Ljava/lang/String;
    :cond_c2
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .restart local v9    # "id":Ljava/lang/String;
    invoke-static {v10, v8, v9}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseBinaryFrame(Lcom/google/android/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;
    :try_end_f0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_f0} :catch_f3

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    goto/16 :goto_48

    .line 82
    .end local v3    # "frame":Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
    .end local v9    # "id":Ljava/lang/String;
    :catch_f3
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v13
.end method
