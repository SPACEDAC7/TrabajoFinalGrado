.class final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;
.super Ljava/lang/Object;
.source "WebmExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DISPLAY_UNIT_PIXELS:I


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public encryptionKeyId:[B

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public type:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    .line 1275
    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    .line 1276
    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    .line 1277
    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    .line 1278
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    .line 1281
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    .line 1282
    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    .line 1283
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    .line 1284
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    .line 1285
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    .line 1288
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private static parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 10
    .param p0, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1492
    const/4 v7, 0x4

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v7, 0x1

    .line 1494
    .local v4, "nalUnitLengthFieldLength":I
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1e

    .line 1495
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v7}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v7
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_15} :catch_15

    .line 1507
    .end local v4    # "nalUnitLengthFieldLength":I
    :catch_15
    move-exception v0

    .line 1508
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Error parsing AVC codec private"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1497
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "nalUnitLengthFieldLength":I
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v6, v7, 0x1f

    .line 1499
    .local v6, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v6, :cond_36

    .line 1500
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1502
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 1503
    .local v5, "numPictureParameterSets":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3b
    if-ge v3, v5, :cond_47

    .line 1504
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1506
    :cond_47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e .. :try_end_4e} :catch_15

    move-result-object v7

    return-object v7
.end method

.method private static parseFourCcVc1Private(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/List;
    .registers 11
    .param p0, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1457
    const/16 v7, 0x10

    :try_start_2
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 1459
    .local v2, "compression":J
    const-wide/32 v8, 0x31435657

    cmp-long v7, v2, v8

    if-eqz v7, :cond_32

    .line 1460
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported FourCC compression type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_29
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_29} :catch_29

    .line 1477
    .end local v2    # "compression":J
    :catch_29
    move-exception v1

    .line 1478
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Error parsing FourCC VC1 codec private"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1465
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "compression":J
    :cond_32
    :try_start_32
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    add-int/lit8 v6, v7, 0x14

    .line 1466
    .local v6, "startOffset":I
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 1467
    .local v0, "bufferData":[B
    move v5, v6

    .local v5, "offset":I
    :goto_3b
    array-length v7, v0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_66

    .line 1468
    aget-byte v7, v0, v5

    if-nez v7, :cond_63

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_63

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v0, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_63

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v0, v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_63

    .line 1471
    array-length v7, v0

    invoke-static {v0, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1472
    .local v4, "initializationData":[B
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 1467
    .end local v4    # "initializationData":[B
    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 1476
    :cond_66
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_32 .. :try_end_6e} :catch_29
.end method

.method private static parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 16
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1522
    const/16 v12, 0x15

    :try_start_2
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1523
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    and-int/lit8 v8, v12, 0x3

    .line 1526
    .local v8, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1527
    .local v10, "numberOfArrays":I
    const/4 v2, 0x0

    .line 1528
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 1529
    .local v3, "csdStartPosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v10, :cond_32

    .line 1530
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1531
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1532
    .local v11, "numberOfNalUnits":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_20
    if-ge v7, v11, :cond_2f

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1534
    .local v9, "nalUnitLength":I
    add-int/lit8 v12, v9, 0x4

    add-int/2addr v2, v12

    .line 1535
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1532
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1529
    .end local v9    # "nalUnitLength":I
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1540
    .end local v7    # "j":I
    .end local v11    # "numberOfNalUnits":I
    :cond_32
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1541
    new-array v0, v2, [B

    .line 1542
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 1543
    .local v1, "bufferPosition":I
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v10, :cond_6a

    .line 1544
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1545
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1546
    .restart local v11    # "numberOfNalUnits":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_44
    if-ge v7, v11, :cond_67

    .line 1547
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1548
    .restart local v9    # "nalUnitLength":I
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v14, v14

    invoke-static {v12, v13, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1550
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    add-int/2addr v1, v12

    .line 1551
    iget-object v12, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    invoke-static {v12, v13, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1553
    add-int/2addr v1, v9

    .line 1554
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1546
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 1543
    .end local v9    # "nalUnitLength":I
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1558
    .end local v7    # "j":I
    .end local v11    # "numberOfNalUnits":I
    :cond_6a
    if-nez v2, :cond_78

    const/4 v6, 0x0

    .line 1559
    .local v6, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_6d
    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 1558
    .end local v6    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_78
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_7b} :catch_7d

    move-result-object v6

    goto :goto_6d

    .line 1560
    .end local v0    # "buffer":[B
    .end local v1    # "bufferPosition":I
    .end local v2    # "csdLength":I
    .end local v3    # "csdStartPosition":I
    .end local v5    # "i":I
    .end local v8    # "lengthSizeMinusOne":I
    .end local v10    # "numberOfArrays":I
    :catch_7d
    move-exception v4

    .line 1561
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v12, Lcom/google/android/exoplayer/ParserException;

    const-string v13, "Error parsing HEVC codec private"

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .registers 9
    .param p0, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1624
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    .line 1625
    .local v1, "formatTag":I
    if-ne v1, v2, :cond_9

    .line 1632
    :cond_8
    :goto_8
    return v2

    .line 1627
    :cond_9
    const v4, 0xfffe

    if-ne v1, v4, :cond_35

    .line 1628
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1629
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_33

    .line 1630
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2e} :catch_37

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    :cond_33
    move v2, v3

    goto :goto_8

    :cond_35
    move v2, v3

    .line 1632
    goto :goto_8

    .line 1634
    .end local v1    # "formatTag":I
    :catch_37
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Error parsing MS/ACM codec private"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 12
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 1574
    const/4 v8, 0x0

    :try_start_3
    aget-byte v8, p0, v8

    if-eq v8, v10, :cond_18

    .line 1575
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_f} :catch_f

    .line 1611
    :catch_f
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1577
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_18
    const/4 v2, 0x1

    .line 1578
    .local v2, "offset":I
    const/4 v6, 0x0

    .local v6, "vorbisInfoLength":I
    move v3, v2

    .line 1579
    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_1b
    :try_start_1b
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_25

    .line 1580
    add-int/lit16 v6, v6, 0xff

    .line 1581
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1b

    .line 1583
    :cond_25
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v6, v8

    .line 1585
    const/4 v7, 0x0

    .local v7, "vorbisSkipLength":I
    move v3, v2

    .line 1586
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_2c
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_36

    .line 1587
    add-int/lit16 v7, v7, 0xff

    .line 1588
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2c

    .line 1590
    :cond_36
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v7, v8

    .line 1592
    aget-byte v8, p0, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_48

    .line 1593
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1595
    :cond_48
    new-array v5, v6, [B

    .line 1596
    .local v5, "vorbisInfo":[B
    const/4 v8, 0x0

    invoke-static {p0, v2, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1597
    add-int/2addr v2, v6

    .line 1598
    aget-byte v8, p0, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5c

    .line 1599
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1601
    :cond_5c
    add-int/2addr v2, v7

    .line 1602
    aget-byte v8, p0, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_6a

    .line 1603
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1605
    :cond_6a
    array-length v8, p0

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    .line 1606
    .local v4, "vorbisBooks":[B
    const/4 v8, 0x0

    array-length v9, p0

    sub-int/2addr v9, v2

    invoke-static {p0, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1607
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1608
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b .. :try_end_80} :catch_f

    .line 1610
    return-object v1
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer/extractor/ExtractorOutput;IJ)V
    .registers 34
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;
    .param p2, "trackId"    # I
    .param p3, "durationUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1300
    const/4 v5, -0x1

    .line 1301
    .local v5, "maxInputSize":I
    const/4 v12, -0x1

    .line 1302
    .local v12, "pcmEncoding":I
    const/4 v10, 0x0

    .line 1303
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3b4

    :cond_f
    :goto_f
    packed-switch v2, :pswitch_data_41a

    .line 1409
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Unrecognized codec identifier."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1303
    :sswitch_1a
    const-string v6, "V_VP8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :sswitch_24
    const-string v6, "V_VP9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_f

    :sswitch_2e
    const-string v6, "V_MPEG2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x2

    goto :goto_f

    :sswitch_38
    const-string v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x3

    goto :goto_f

    :sswitch_42
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x4

    goto :goto_f

    :sswitch_4c
    const-string v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x5

    goto :goto_f

    :sswitch_56
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x6

    goto :goto_f

    :sswitch_60
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x7

    goto :goto_f

    :sswitch_6a
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x8

    goto :goto_f

    :sswitch_75
    const-string v6, "A_VORBIS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x9

    goto :goto_f

    :sswitch_80
    const-string v6, "A_OPUS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xa

    goto :goto_f

    :sswitch_8b
    const-string v6, "A_AAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xb

    goto/16 :goto_f

    :sswitch_97
    const-string v6, "A_MPEG/L3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xc

    goto/16 :goto_f

    :sswitch_a3
    const-string v6, "A_AC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xd

    goto/16 :goto_f

    :sswitch_af
    const-string v6, "A_EAC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xe

    goto/16 :goto_f

    :sswitch_bb
    const-string v6, "A_TRUEHD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xf

    goto/16 :goto_f

    :sswitch_c7
    const-string v6, "A_DTS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x10

    goto/16 :goto_f

    :sswitch_d3
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x11

    goto/16 :goto_f

    :sswitch_df
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x12

    goto/16 :goto_f

    :sswitch_eb
    const-string v6, "A_FLAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x13

    goto/16 :goto_f

    :sswitch_f7
    const-string v6, "A_MS/ACM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x14

    goto/16 :goto_f

    :sswitch_103
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x15

    goto/16 :goto_f

    :sswitch_10f
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x16

    goto/16 :goto_f

    :sswitch_11b
    const-string v6, "S_VOBSUB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x17

    goto/16 :goto_f

    :sswitch_127
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x18

    goto/16 :goto_f

    .line 1305
    :pswitch_133
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    .line 1415
    .local v3, "mimeType":Ljava/lang/String;
    :cond_136
    :goto_136
    invoke-static {v3}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ee

    .line 1416
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v25

    .line 1442
    .local v25, "format":Lcom/google/android/exoplayer/MediaFormat;
    :goto_153
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 1444
    return-void

    .line 1308
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :pswitch_16b
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    .line 1309
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_136

    .line 1311
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_16f
    const-string/jumbo v3, "video/mpeg2"

    .line 1312
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_136

    .line 1316
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_173
    const-string/jumbo v3, "video/mp4v-es"

    .line 1317
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    if-nez v2, :cond_17e

    const/4 v10, 0x0

    .line 1319
    :goto_17d
    goto :goto_136

    .line 1317
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    .line 1318
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_17d

    .line 1321
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_187
    const-string/jumbo v3, "video/avc"

    .line 1322
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v26

    .line 1324
    .local v26, "h264Data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v10, Ljava/util/List;

    .line 1325
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_136

    .line 1328
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v26    # "h264Data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :pswitch_1ac
    const-string/jumbo v3, "video/hevc"

    .line 1329
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v27

    .line 1331
    .local v27, "hevcData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v10, Ljava/util/List;

    .line 1332
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    goto/16 :goto_136

    .line 1335
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v27    # "hevcData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :pswitch_1d2
    const-string/jumbo v3, "video/wvc1"

    .line 1336
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->parseFourCcVc1Private(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v10

    .line 1337
    goto/16 :goto_136

    .line 1339
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_1e4
    const-string v3, "audio/vorbis"

    .line 1340
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v5, 0x2000

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v10

    .line 1342
    goto/16 :goto_136

    .line 1344
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_1f2
    const-string v3, "audio/opus"

    .line 1345
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v5, 0x1680

    .line 1346
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x3

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1347
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    const/16 v2, 0x8

    .line 1349
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1348
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    const/16 v2, 0x8

    .line 1351
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1350
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    .line 1354
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_23f
    const-string v3, "audio/mp4a-latm"

    .line 1355
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1356
    goto/16 :goto_136

    .line 1358
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_24b
    const-string v3, "audio/mpeg"

    .line 1359
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v5, 0x1000

    .line 1360
    goto/16 :goto_136

    .line 1362
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_251
    const-string v3, "audio/ac3"

    .line 1363
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1365
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_255
    const-string v3, "audio/eac3"

    .line 1366
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1368
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_259
    const-string v3, "audio/true-hd"

    .line 1369
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1372
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_25d
    const-string v3, "audio/vnd.dts"

    .line 1373
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1375
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_261
    const-string v3, "audio/vnd.dts.hd"

    .line 1376
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1378
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_265
    const-string v3, "audio/x-flac"

    .line 1379
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1380
    goto/16 :goto_136

    .line 1382
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_271
    const-string v3, "audio/raw"

    .line 1383
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_28a

    .line 1384
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1386
    :cond_28a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v12

    .line 1387
    if-nez v12, :cond_136

    .line 1388
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1392
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2b1
    const-string v3, "audio/raw"

    .line 1393
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v12

    .line 1394
    if-nez v12, :cond_136

    .line 1395
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1399
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2da
    const-string v3, "application/x-subrip"

    .line 1400
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1402
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2de
    const-string v3, "application/vobsub"

    .line 1403
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1404
    goto/16 :goto_136

    .line 1406
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2ea
    const-string v3, "application/pgs"

    .line 1407
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_136

    .line 1419
    :cond_2ee
    invoke-static {v3}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_369

    .line 1420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    if-nez v2, :cond_318

    .line 1421
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_35f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    :goto_305
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    .line 1422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_364

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    :goto_314
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    .line 1424
    :cond_318
    const/high16 v24, -0x40800000

    .line 1425
    .local v24, "pixelWidthHeightRatio":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_33e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_33e

    .line 1426
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    div-float v24, v2, v4

    .line 1428
    :cond_33e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    move/from16 v21, v0

    const/16 v23, -0x1

    move-object v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, p3

    move-object/from16 v22, v10

    invoke-static/range {v14 .. v24}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v25

    .line 1431
    .restart local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    goto/16 :goto_153

    .line 1421
    .end local v24    # "pixelWidthHeightRatio":F
    .end local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_35f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    goto :goto_305

    .line 1422
    :cond_364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    goto :goto_314

    .line 1431
    :cond_369
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_385

    .line 1432
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v14, v3

    move-wide/from16 v16, p3

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v25

    .restart local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    goto/16 :goto_153

    .line 1434
    .end local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_385
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_395

    const-string v2, "application/pgs"

    .line 1435
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ab

    .line 1436
    :cond_395
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v14, v3

    move-wide/from16 v16, p3

    move-object/from16 v18, v10

    invoke-static/range {v13 .. v19}, Lcom/google/android/exoplayer/MediaFormat;->createImageFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v25

    .restart local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    goto/16 :goto_153

    .line 1439
    .end local v25    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_3ab
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Unexpected MIME type."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1303
    nop

    :sswitch_data_3b4
    .sparse-switch
        -0x7ce7f5de -> :sswitch_4c
        -0x7ce7f3b0 -> :sswitch_38
        -0x76567dc0 -> :sswitch_f7
        -0x6a615338 -> :sswitch_bb
        -0x672350af -> :sswitch_75
        -0x585f4fcd -> :sswitch_97
        -0x51dc40b2 -> :sswitch_6a
        -0x2016c535 -> :sswitch_42
        -0x2016c4e5 -> :sswitch_56
        -0x19552dbd -> :sswitch_11b
        -0x1538b2ba -> :sswitch_df
        0x3c02325 -> :sswitch_8b
        0x3c02353 -> :sswitch_a3
        0x3c030c5 -> :sswitch_c7
        0x4e86155 -> :sswitch_1a
        0x4e86156 -> :sswitch_24
        0x5e8da3e -> :sswitch_127
        0x2056f406 -> :sswitch_d3
        0x2b453ce4 -> :sswitch_103
        0x32fdf009 -> :sswitch_60
        0x54c61e47 -> :sswitch_10f
        0x6bd6c624 -> :sswitch_2e
        0x7446132a -> :sswitch_af
        0x7446b0a6 -> :sswitch_eb
        0x744ad97d -> :sswitch_80
    .end sparse-switch

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_133
        :pswitch_16b
        :pswitch_16f
        :pswitch_173
        :pswitch_173
        :pswitch_173
        :pswitch_187
        :pswitch_1ac
        :pswitch_1d2
        :pswitch_1e4
        :pswitch_1f2
        :pswitch_23f
        :pswitch_24b
        :pswitch_251
        :pswitch_255
        :pswitch_259
        :pswitch_25d
        :pswitch_25d
        :pswitch_261
        :pswitch_265
        :pswitch_271
        :pswitch_2b1
        :pswitch_2da
        :pswitch_2de
        :pswitch_2ea
    .end packed-switch
.end method
