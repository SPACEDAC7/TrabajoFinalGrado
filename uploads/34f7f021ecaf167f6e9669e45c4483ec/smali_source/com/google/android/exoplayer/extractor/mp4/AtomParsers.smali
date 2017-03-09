.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    return-void
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I
    .registers 8
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 926
    .local v0, "childAtomPosition":I
    :goto_4
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_24

    .line 927
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 928
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 929
    .local v1, "childAtomSize":I
    if-lez v1, :cond_20

    const/4 v3, 0x1

    :goto_12
    const-string v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 930
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 931
    .local v2, "childType":I
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_22

    .line 936
    .end local v0    # "childAtomPosition":I
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :goto_1f
    return v0

    .line 929
    .restart local v0    # "childAtomPosition":I
    .restart local v1    # "childAtomSize":I
    :cond_20
    const/4 v3, 0x0

    goto :goto_12

    .line 934
    .restart local v2    # "childType":I
    :cond_22
    add-int/2addr v0, v1

    .line 935
    goto :goto_4

    .line 936
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :cond_24
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 36
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "durationUs"    # J
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "isQuickTime"    # Z
    .param p9, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p10, "entryIndex"    # I

    .prologue
    .line 809
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 811
    const/16 v24, 0x0

    .line 812
    .local v24, "quickTimeSoundDescriptionVersion":I
    if-eqz p8, :cond_d8

    .line 813
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v24

    .line 815
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 823
    :goto_1c
    if-eqz v24, :cond_23

    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_e1

    .line 824
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 825
    .local v12, "channelCount":I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v13

    .line 828
    .local v13, "sampleRate":I
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_3d

    .line 829
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 845
    :cond_3d
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v20

    .line 846
    .local v20, "childPosition":I
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_5c

    .line 847
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 852
    :cond_5c
    const/4 v7, 0x0

    .line 853
    .local v7, "mimeType":Ljava/lang/String;
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_103

    .line 854
    const-string v7, "audio/ac3"

    .line 871
    :cond_65
    :goto_65
    const/16 v22, 0x0

    .line 872
    .local v22, "initializationData":[B
    :goto_67
    sub-int v6, v20, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1c1

    .line 873
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 875
    .local v18, "childAtomSize":I
    if-lez v18, :cond_155

    const/4 v6, 0x1

    :goto_7b
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v19

    .line 877
    .local v19, "childAtomType":I
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v19

    if-eq v0, v6, :cond_92

    if-eqz p8, :cond_164

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_164

    .line 878
    :cond_92
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_158

    move/from16 v21, v20

    .line 880
    .local v21, "esdsAtomPosition":I
    :goto_9a
    const/4 v6, -0x1

    move/from16 v0, v21

    if-eq v0, v6, :cond_d5

    .line 882
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v23

    .line 883
    .local v23, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v7    # "mimeType":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 884
    .restart local v7    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    .end local v22    # "initializationData":[B
    check-cast v22, [B

    .line 885
    .restart local v22    # "initializationData":[B
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 889
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v17

    .line 890
    .local v17, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 891
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 907
    .end local v17    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21    # "esdsAtomPosition":I
    .end local v23    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_d5
    :goto_d5
    add-int v20, v20, v18

    .line 908
    goto :goto_67

    .line 817
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v12    # "channelCount":I
    .end local v13    # "sampleRate":I
    .end local v18    # "childAtomSize":I
    .end local v19    # "childAtomType":I
    .end local v20    # "childPosition":I
    .end local v22    # "initializationData":[B
    :cond_d8
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1c

    .line 831
    :cond_e1
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_1e8

    .line 832
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v13, v8

    .line 835
    .restart local v13    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 839
    .restart local v12    # "channelCount":I
    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_3d

    .line 855
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v20    # "childPosition":I
    :cond_103
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_10d

    .line 856
    const-string v7, "audio/eac3"

    goto/16 :goto_65

    .line 857
    :cond_10d
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_117

    .line 858
    const-string v7, "audio/vnd.dts"

    goto/16 :goto_65

    .line 859
    :cond_117
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_123

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_127

    .line 860
    :cond_123
    const-string v7, "audio/vnd.dts.hd"

    goto/16 :goto_65

    .line 861
    :cond_127
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_131

    .line 862
    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_65

    .line 863
    :cond_131
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_13b

    .line 864
    const-string v7, "audio/3gpp"

    goto/16 :goto_65

    .line 865
    :cond_13b
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_145

    .line 866
    const-string v7, "audio/amr-wb"

    goto/16 :goto_65

    .line 867
    :cond_145
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_151

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_65

    .line 868
    :cond_151
    const-string v7, "audio/raw"

    goto/16 :goto_65

    .line 875
    .restart local v18    # "childAtomSize":I
    .restart local v22    # "initializationData":[B
    :cond_155
    const/4 v6, 0x0

    goto/16 :goto_7b

    .line 879
    .restart local v19    # "childAtomType":I
    :cond_158
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I

    move-result v21

    goto/16 :goto_9a

    .line 894
    :cond_164
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_185

    .line 895
    add-int/lit8 v6, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 896
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_d5

    .line 898
    :cond_185
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_1a6

    .line 899
    add-int/lit8 v6, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 900
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_d5

    .line 902
    :cond_1a6
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_d5

    .line 903
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_d5

    .line 910
    .end local v18    # "childAtomSize":I
    .end local v19    # "childAtomType":I
    :cond_1c1
    move-object/from16 v0, p9

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v6, :cond_1e8

    if-eqz v7, :cond_1e8

    .line 912
    const-string v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e9

    const/16 v16, 0x2

    .line 914
    .local v16, "pcmEncoding":I
    :goto_1d3
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v22, :cond_1ec

    const/4 v14, 0x0

    :goto_1dc
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 919
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v12    # "channelCount":I
    .end local v13    # "sampleRate":I
    .end local v16    # "pcmEncoding":I
    .end local v20    # "childPosition":I
    .end local v22    # "initializationData":[B
    :cond_1e8
    return-void

    .line 912
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v12    # "channelCount":I
    .restart local v13    # "sampleRate":I
    .restart local v20    # "childPosition":I
    .restart local v22    # "initializationData":[B
    :cond_1e9
    const/16 v16, -0x1

    goto :goto_1d3

    .line 916
    .restart local v16    # "pcmEncoding":I
    :cond_1ec
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_1dc
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .registers 10
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 696
    add-int/lit8 v7, p1, 0x8

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 698
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v2, v7, 0x1

    .line 699
    .local v2, "nalUnitLengthFieldLength":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_18

    .line 700
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 702
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/high16 v5, 0x3f800000

    .line 704
    .local v5, "pixelWidthAspectRatio":F
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v4, v7, 0x1f

    .line 705
    .local v4, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_26
    if-ge v1, v4, :cond_32

    .line 706
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 708
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 709
    .local v3, "numPictureParameterSets":I
    const/4 v1, 0x0

    :goto_37
    if-ge v1, v3, :cond_43

    .line 710
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 713
    :cond_43
    if-lez v4, :cond_5e

    .line 715
    new-instance v6, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 717
    .local v6, "spsDataBitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 718
    invoke-static {v6}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v7

    iget v5, v7, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 721
    .end local v6    # "spsDataBitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    :cond_5e
    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v7, v0, v2, v5}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v7
.end method

.method private static parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 14
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 775
    if-eqz p0, :cond_c

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .local v2, "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_11

    .line 776
    .end local v2    # "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_c
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 796
    :goto_10
    return-object v9

    .line 778
    .restart local v2    # "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_11
    iget-object v3, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 779
    .local v3, "elstData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 780
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 781
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 782
    .local v8, "version":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 783
    .local v4, "entryCount":I
    new-array v0, v4, [J

    .line 784
    .local v0, "editListDurations":[J
    new-array v1, v4, [J

    .line 785
    .local v1, "editListMediaTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    if-ge v6, v4, :cond_5b

    .line 786
    if-ne v8, v12, :cond_49

    .line 787
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_31
    aput-wide v10, v0, v6

    .line 788
    if-ne v8, v12, :cond_4e

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_39
    aput-wide v10, v1, v6

    .line 789
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 790
    .local v7, "mediaRateInteger":I
    if-eq v7, v12, :cond_54

    .line 792
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 787
    .end local v7    # "mediaRateInteger":I
    :cond_49
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_31

    .line 788
    :cond_4e
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_39

    .line 794
    .restart local v7    # "mediaRateInteger":I
    :cond_54
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 785
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 796
    .end local v7    # "mediaRateInteger":I
    :cond_5b
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_10
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 11
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 943
    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 945
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 946
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    .line 947
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 950
    .local v0, "flags":I
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1e

    .line 951
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 953
    :cond_1e
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_29

    .line 954
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 956
    :cond_29
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_30

    .line 957
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 961
    :cond_30
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 962
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 967
    .local v4, "objectTypeIndication":I
    sparse-switch v4, :sswitch_data_80

    .line 1001
    const/4 v3, 0x0

    .line 1005
    .local v3, "mimeType":Ljava/lang/String;
    :goto_3e
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1008
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1009
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v2

    .line 1010
    .local v2, "initializationDataSize":I
    new-array v1, v2, [B

    .line 1011
    .local v1, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1012
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .end local v1    # "initializationData":[B
    .end local v2    # "initializationDataSize":I
    :goto_54
    return-object v5

    .line 969
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_55
    const-string v3, "audio/mpeg"

    .line 970
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_54

    .line 972
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_5c
    const-string/jumbo v3, "video/mp4v-es"

    .line 973
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 975
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v3, "video/avc"

    .line 976
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 978
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v3, "video/hevc"

    .line 979
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 984
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_68
    const-string v3, "audio/mp4a-latm"

    .line 985
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 987
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_6b
    const-string v3, "audio/ac3"

    .line 988
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 990
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_6e
    const-string v3, "audio/eac3"

    .line 991
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_3e

    .line 994
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_71
    const-string v3, "audio/vnd.dts"

    .line 995
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_54

    .line 998
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_78
    const-string v3, "audio/vnd.dts.hd"

    .line 999
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_54

    .line 967
    nop

    :sswitch_data_80
    .sparse-switch
        0x20 -> :sswitch_5c
        0x21 -> :sswitch_60
        0x23 -> :sswitch_64
        0x40 -> :sswitch_68
        0x66 -> :sswitch_68
        0x67 -> :sswitch_68
        0x68 -> :sswitch_68
        0x6b -> :sswitch_55
        0xa5 -> :sswitch_6b
        0xa6 -> :sswitch_6e
        0xa9 -> :sswitch_71
        0xaa -> :sswitch_78
        0xab -> :sswitch_78
        0xac -> :sswitch_71
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1108
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1109
    .local v1, "size":I
    :goto_6
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1111
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_6

    .line 1113
    :cond_17
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .registers 2
    .param p0, "hdlr"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 519
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 16
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    add-int/lit8 v11, p1, 0x8

    add-int/lit8 v11, v11, 0x15

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit8 v7, v11, 0x3

    .line 731
    .local v7, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 732
    .local v9, "numberOfArrays":I
    const/4 v2, 0x0

    .line 733
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 734
    .local v3, "csdStartPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v9, :cond_34

    .line 735
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 736
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 737
    .local v10, "numberOfNalUnits":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_22
    if-ge v6, v10, :cond_31

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 739
    .local v8, "nalUnitLength":I
    add-int/lit8 v11, v8, 0x4

    add-int/2addr v2, v11

    .line 740
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 734
    .end local v8    # "nalUnitLength":I
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 745
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_34
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 746
    new-array v0, v2, [B

    .line 747
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 748
    .local v1, "bufferPosition":I
    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v9, :cond_6c

    .line 749
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 751
    .restart local v10    # "numberOfNalUnits":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_46
    if-ge v6, v10, :cond_69

    .line 752
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 753
    .restart local v8    # "nalUnitLength":I
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v1, v11

    .line 756
    iget-object v11, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    add-int/2addr v1, v8

    .line 758
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 751
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 748
    .end local v8    # "nalUnitLength":I
    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 762
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_6c
    if-nez v2, :cond_7a

    const/4 v5, 0x0

    .line 763
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_6f
    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11

    .line 762
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_7a
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_6f
.end method

.method private static parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .registers 11
    .param p0, "ilst"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v9, 0x4

    .line 402
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_68

    .line 403
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 404
    .local v6, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int v0, v6, v8

    .line 405
    .local v0, "endPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 406
    .local v7, "type":I
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v7, v8, :cond_64

    .line 407
    const/4 v3, 0x0

    .line 408
    .local v3, "lastCommentMean":Ljava/lang/String;
    const/4 v4, 0x0

    .line 409
    .local v4, "lastCommentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 410
    .local v2, "lastCommentData":Ljava/lang/String;
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-ge v8, v0, :cond_53

    .line 411
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int/lit8 v5, v8, -0xc

    .line 412
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 413
    .local v1, "key":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 414
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v1, v8, :cond_38

    .line 415
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    .line 416
    :cond_38
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v1, v8, :cond_41

    .line 417
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    .line 418
    :cond_41
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v8, :cond_4f

    .line 419
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 420
    add-int/lit8 v8, v5, -0x4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 422
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1c

    .line 425
    .end local v1    # "key":I
    .end local v5    # "length":I
    :cond_53
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const-string v8, "com.apple.iTunes"

    .line 426
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 427
    invoke-static {v4, v2}, Lcom/google/android/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v8

    .line 433
    .end local v0    # "endPosition":I
    .end local v2    # "lastCommentData":Ljava/lang/String;
    .end local v3    # "lastCommentMean":Ljava/lang/String;
    .end local v4    # "lastCommentName":Ljava/lang/String;
    .end local v6    # "position":I
    .end local v7    # "type":I
    :goto_63
    return-object v8

    .line 430
    .restart local v0    # "endPosition":I
    .restart local v6    # "position":I
    .restart local v7    # "type":I
    :cond_64
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 433
    .end local v0    # "endPosition":I
    .end local v6    # "position":I
    .end local v7    # "type":I
    :cond_68
    const/4 v8, 0x0

    goto :goto_63
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 9
    .param p0, "mdhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 531
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 533
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 534
    .local v3, "version":I
    if-nez v3, :cond_58

    move v6, v7

    :goto_10
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 536
    .local v4, "timescale":J
    if-nez v3, :cond_1a

    const/4 v7, 0x4

    :cond_1a
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 538
    .local v2, "languageCode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "language":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 534
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "languageCode":I
    .end local v4    # "timescale":J
    :cond_58
    const/16 v6, 0x10

    goto :goto_10
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 383
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 384
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    .line 385
    .local v2, "ilst":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3c

    .line 386
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    add-int/lit8 v3, v4, -0x8

    .line 387
    .local v3, "payloadSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 388
    .local v0, "atomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v0, v4, :cond_38

    .line 389
    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 391
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v1

    .line 392
    .local v1, "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    if-eqz v1, :cond_38

    .line 398
    .end local v0    # "atomType":I
    .end local v1    # "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .end local v3    # "payloadSize":I
    :goto_37
    return-object v1

    .line 396
    .restart local v0    # "atomType":I
    .restart local v3    # "payloadSize":I
    :cond_38
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_a

    .line 398
    .end local v0    # "atomType":I
    .end local v3    # "payloadSize":I
    :cond_3c
    const/4 v1, 0x0

    goto :goto_37
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .registers 5
    .param p0, "mvhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 443
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 446
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 448
    .local v1, "version":I
    if-nez v1, :cond_17

    :goto_f
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 448
    :cond_17
    const/16 v2, 0x10

    goto :goto_f
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .registers 6
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 800
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 801
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 802
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 803
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B
    .registers 8
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 1089
    add-int/lit8 v2, p1, 0x8

    .line 1090
    .local v2, "childPosition":I
    :goto_2
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_20

    .line 1091
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1093
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1094
    .local v1, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v1, v3, :cond_1e

    .line 1095
    iget-object v3, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int v4, v2, v0

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1099
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :goto_1d
    return-object v3

    .line 1097
    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    :cond_1e
    add-int/2addr v2, v0

    .line 1098
    goto :goto_2

    .line 1099
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_20
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I
    .registers 14
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p4, "entryIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 1022
    .local v2, "childPosition":I
    :goto_6
    sub-int v5, v2, p1

    if-ge v5, p2, :cond_3c

    .line 1023
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1025
    .local v0, "childAtomSize":I
    if-lez v0, :cond_3d

    move v5, v6

    :goto_14
    const-string v8, "childAtomSize should be positive"

    invoke-static {v5, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1026
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1027
    .local v1, "childAtomType":I
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v1, v5, :cond_41

    .line 1028
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v4

    .line 1030
    .local v4, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;>;"
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1031
    .local v3, "dataFormat":Ljava/lang/Integer;
    if-eqz v3, :cond_3f

    :goto_2b
    const-string v5, "frma atom is mandatory"

    invoke-static {v6, v5}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1032
    iget-object v6, p3, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aput-object v5, v6, p4

    .line 1033
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1038
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "dataFormat":Ljava/lang/Integer;
    .end local v4    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3c
    return v7

    .restart local v0    # "childAtomSize":I
    :cond_3d
    move v5, v7

    .line 1025
    goto :goto_14

    .restart local v1    # "childAtomType":I
    .restart local v3    # "dataFormat":Ljava/lang/Integer;
    .restart local v4    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3f
    move v6, v7

    .line 1031
    goto :goto_2b

    .line 1035
    .end local v3    # "dataFormat":Ljava/lang/Integer;
    .end local v4    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;>;"
    :cond_41
    add-int/2addr v2, v0

    .line 1036
    goto :goto_6
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .registers 11
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1068
    add-int/lit8 v2, p1, 0x8

    .line 1069
    .local v2, "childPosition":I
    :goto_4
    sub-int v7, v2, p1

    if-ge v7, p2, :cond_37

    .line 1070
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1072
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1073
    .local v1, "childAtomType":I
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v7, :cond_35

    .line 1074
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v4, :cond_33

    .line 1076
    .local v4, "defaultIsEncrypted":Z
    :goto_21
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1077
    .local v3, "defaultInitVectorSize":I
    const/16 v7, 0x10

    new-array v5, v7, [B

    .line 1078
    .local v5, "defaultKeyId":[B
    array-length v7, v5

    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1079
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    .line 1083
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "defaultInitVectorSize":I
    .end local v4    # "defaultIsEncrypted":Z
    .end local v5    # "defaultKeyId":[B
    :goto_32
    return-object v6

    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    :cond_33
    move v4, v6

    .line 1075
    goto :goto_21

    .line 1081
    :cond_35
    add-int/2addr v2, v0

    .line 1082
    goto :goto_4

    .line 1083
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_37
    const/4 v6, 0x0

    goto :goto_32
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 9
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    add-int/lit8 v2, p1, 0x8

    .line 1045
    .local v2, "childPosition":I
    const/4 v4, 0x0

    .line 1046
    .local v4, "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    const/4 v3, 0x0

    .line 1047
    .local v3, "dataFormat":Ljava/lang/Integer;
    :goto_4
    sub-int v5, v2, p1

    if-ge v5, p2, :cond_39

    .line 1048
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1050
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1051
    .local v1, "childAtomType":I
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v5, :cond_21

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1060
    :cond_1f
    :goto_1f
    add-int/2addr v2, v0

    .line 1061
    goto :goto_4

    .line 1053
    :cond_21
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v5, :cond_30

    .line 1054
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1f

    .line 1057
    :cond_30
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v5, :cond_1f

    .line 1058
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    goto :goto_1f

    .line 1063
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_39
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method public static parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    .registers 78
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 95
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v66

    .line 96
    .local v66, "stszAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v66, :cond_2c

    .line 97
    new-instance v61, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 106
    .local v61, "sampleSizeBox":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_13
    invoke-interface/range {v61 .. v61}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v59

    .line 107
    .local v59, "sampleCount":I
    if-nez v59, :cond_48

    .line 108
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v5, v12, [J

    const/4 v12, 0x0

    new-array v6, v12, [I

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-array v8, v12, [J

    const/4 v12, 0x0

    new-array v9, v12, [I

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 349
    :goto_2b
    return-object v4

    .line 99
    .end local v59    # "sampleCount":I
    .end local v61    # "sampleSizeBox":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_2c
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v68

    .line 100
    .local v68, "stz2Atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v68, :cond_3e

    .line 101
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v12, "Track has no sample table size information"

    invoke-direct {v4, v12}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_3e
    new-instance v61, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    move-object/from16 v0, v61

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .restart local v61    # "sampleSizeBox":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_13

    .line 112
    .end local v68    # "stz2Atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v59    # "sampleCount":I
    :cond_48
    const/16 v20, 0x0

    .line 113
    .local v20, "chunkOffsetsAreLongs":Z
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 114
    .local v21, "chunkOffsetsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v21, :cond_5e

    .line 115
    const/16 v20, 0x1

    .line 116
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 118
    :cond_5e
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v19, v0

    .line 120
    .local v19, "chunkOffsets":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v63, v0

    .line 122
    .local v63, "stsc":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v67, v0

    .line 124
    .local v67, "stts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v65

    .line 125
    .local v65, "stssAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v65, :cond_13d

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v64, v0

    .line 127
    .local v64, "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_8c
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v27

    .line 128
    .local v27, "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v27, :cond_141

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    .line 131
    .local v26, "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_9c
    new-instance v18, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v63

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)V

    .line 134
    .local v18, "chunkIterator":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    const/16 v4, 0xc

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual/range {v67 .. v67}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v57, v4, -0x1

    .line 136
    .local v57, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v67 .. v67}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    .line 137
    .local v53, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v67 .. v67}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    .line 140
    .local v69, "timestampDeltaInTimeUnits":I
    const/16 v54, 0x0

    .line 141
    .local v54, "remainingSamplesAtTimestampOffset":I
    const/16 v58, 0x0

    .line 142
    .local v58, "remainingTimestampOffsetChanges":I
    const/16 v72, 0x0

    .line 143
    .local v72, "timestampOffset":I
    if-eqz v26, :cond_d1

    .line 144
    const/16 v4, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 145
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v58

    .line 148
    :cond_d1
    const/16 v45, -0x1

    .line 149
    .local v45, "nextSynchronizationSampleIndex":I
    const/16 v56, 0x0

    .line 150
    .local v56, "remainingSynchronizationSamples":I
    if-eqz v64, :cond_ea

    .line 151
    const/16 v4, 0xc

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 152
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v56

    .line 153
    if-lez v56, :cond_145

    .line 154
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    .line 162
    :cond_ea
    :goto_ea
    invoke-interface/range {v61 .. v61}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v4

    if-eqz v4, :cond_148

    const-string v4, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v12, v12, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 163
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    if-nez v57, :cond_148

    if-nez v58, :cond_148

    if-nez v56, :cond_148

    const/16 v40, 0x1

    .line 170
    .local v40, "isRechunkable":Z
    :goto_106
    const/4 v7, 0x0

    .line 174
    .local v7, "maximumSize":I
    if-nez v40, :cond_200

    .line 175
    move/from16 v0, v59

    new-array v5, v0, [J

    .line 176
    .local v5, "offsets":[J
    move/from16 v0, v59

    new-array v6, v0, [I

    .line 177
    .local v6, "sizes":[I
    move/from16 v0, v59

    new-array v8, v0, [J

    .line 178
    .local v8, "timestamps":[J
    move/from16 v0, v59

    new-array v9, v0, [I

    .line 179
    .local v9, "flags":[I
    const-wide/16 v74, 0x0

    .line 180
    .local v74, "timestampTimeUnits":J
    const-wide/16 v46, 0x0

    .line 181
    .local v46, "offset":J
    const/16 v55, 0x0

    .line 183
    .local v55, "remainingSamplesInChunk":I
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_121
    move/from16 v0, v39

    move/from16 v1, v59

    if-ge v0, v1, :cond_1ad

    .line 185
    :goto_127
    if-nez v55, :cond_14b

    .line 186
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 187
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v46, v0

    .line 188
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v55, v0

    goto :goto_127

    .line 125
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v7    # "maximumSize":I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v18    # "chunkIterator":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v26    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .end local v27    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v39    # "i":I
    .end local v40    # "isRechunkable":Z
    .end local v45    # "nextSynchronizationSampleIndex":I
    .end local v46    # "offset":J
    .end local v53    # "remainingSamplesAtTimestampDelta":I
    .end local v54    # "remainingSamplesAtTimestampOffset":I
    .end local v55    # "remainingSamplesInChunk":I
    .end local v56    # "remainingSynchronizationSamples":I
    .end local v57    # "remainingTimestampDeltaChanges":I
    .end local v58    # "remainingTimestampOffsetChanges":I
    .end local v64    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .end local v69    # "timestampDeltaInTimeUnits":I
    .end local v72    # "timestampOffset":I
    .end local v74    # "timestampTimeUnits":J
    :cond_13d
    const/16 v64, 0x0

    goto/16 :goto_8c

    .line 128
    .restart local v27    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v64    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_141
    const/16 v26, 0x0

    goto/16 :goto_9c

    .line 157
    .restart local v18    # "chunkIterator":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v26    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .restart local v45    # "nextSynchronizationSampleIndex":I
    .restart local v53    # "remainingSamplesAtTimestampDelta":I
    .restart local v54    # "remainingSamplesAtTimestampOffset":I
    .restart local v56    # "remainingSynchronizationSamples":I
    .restart local v57    # "remainingTimestampDeltaChanges":I
    .restart local v58    # "remainingTimestampOffsetChanges":I
    .restart local v69    # "timestampDeltaInTimeUnits":I
    .restart local v72    # "timestampOffset":I
    :cond_145
    const/16 v64, 0x0

    goto :goto_ea

    .line 163
    :cond_148
    const/16 v40, 0x0

    goto :goto_106

    .line 192
    .restart local v5    # "offsets":[J
    .restart local v6    # "sizes":[I
    .restart local v7    # "maximumSize":I
    .restart local v8    # "timestamps":[J
    .restart local v9    # "flags":[I
    .restart local v39    # "i":I
    .restart local v40    # "isRechunkable":Z
    .restart local v46    # "offset":J
    .restart local v55    # "remainingSamplesInChunk":I
    .restart local v74    # "timestampTimeUnits":J
    :cond_14b
    if-eqz v26, :cond_15e

    .line 193
    :goto_14d
    if-nez v54, :cond_15c

    if-lez v58, :cond_15c

    .line 194
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v54

    .line 200
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v72

    .line 201
    add-int/lit8 v58, v58, -0x1

    goto :goto_14d

    .line 203
    :cond_15c
    add-int/lit8 v54, v54, -0x1

    .line 206
    :cond_15e
    aput-wide v46, v5, v39

    .line 207
    invoke-interface/range {v61 .. v61}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v4

    aput v4, v6, v39

    .line 208
    aget v4, v6, v39

    if-le v4, v7, :cond_16c

    .line 209
    aget v7, v6, v39

    .line 211
    :cond_16c
    move/from16 v0, v72

    int-to-long v12, v0

    add-long v12, v12, v74

    aput-wide v12, v8, v39

    .line 214
    if-nez v64, :cond_1ab

    const/4 v4, 0x1

    :goto_176
    aput v4, v9, v39

    .line 215
    move/from16 v0, v39

    move/from16 v1, v45

    if-ne v0, v1, :cond_18b

    .line 216
    const/4 v4, 0x1

    aput v4, v9, v39

    .line 217
    add-int/lit8 v56, v56, -0x1

    .line 218
    if-lez v56, :cond_18b

    .line 219
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    .line 224
    :cond_18b
    move/from16 v0, v69

    int-to-long v12, v0

    add-long v74, v74, v12

    .line 225
    add-int/lit8 v53, v53, -0x1

    .line 226
    if-nez v53, :cond_1a0

    if-lez v57, :cond_1a0

    .line 227
    invoke-virtual/range {v67 .. v67}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    .line 228
    invoke-virtual/range {v67 .. v67}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    .line 229
    add-int/lit8 v57, v57, -0x1

    .line 232
    :cond_1a0
    aget v4, v6, v39

    int-to-long v12, v4

    add-long v46, v46, v12

    .line 233
    add-int/lit8 v55, v55, -0x1

    .line 183
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_121

    .line 214
    :cond_1ab
    const/4 v4, 0x0

    goto :goto_176

    .line 236
    :cond_1ad
    if-nez v54, :cond_1c5

    const/4 v4, 0x1

    :goto_1b0
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 238
    :goto_1b3
    if-lez v58, :cond_1c9

    .line 239
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-nez v4, :cond_1c7

    const/4 v4, 0x1

    :goto_1bc
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 240
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 241
    add-int/lit8 v58, v58, -0x1

    goto :goto_1b3

    .line 236
    :cond_1c5
    const/4 v4, 0x0

    goto :goto_1b0

    .line 239
    :cond_1c7
    const/4 v4, 0x0

    goto :goto_1bc

    .line 245
    :cond_1c9
    if-nez v56, :cond_1f8

    const/4 v4, 0x1

    :goto_1cc
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 246
    if-nez v53, :cond_1fa

    const/4 v4, 0x1

    :goto_1d2
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 247
    if-nez v55, :cond_1fc

    const/4 v4, 0x1

    :goto_1d8
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 248
    if-nez v57, :cond_1fe

    const/4 v4, 0x1

    :goto_1de
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 266
    .end local v39    # "i":I
    .end local v46    # "offset":J
    .end local v55    # "remainingSamplesInChunk":I
    .end local v74    # "timestampTimeUnits":J
    :goto_1e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v4, :cond_251

    .line 267
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 268
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2b

    .line 245
    .restart local v39    # "i":I
    .restart local v46    # "offset":J
    .restart local v55    # "remainingSamplesInChunk":I
    .restart local v74    # "timestampTimeUnits":J
    :cond_1f8
    const/4 v4, 0x0

    goto :goto_1cc

    .line 246
    :cond_1fa
    const/4 v4, 0x0

    goto :goto_1d2

    .line 247
    :cond_1fc
    const/4 v4, 0x0

    goto :goto_1d8

    .line 248
    :cond_1fe
    const/4 v4, 0x0

    goto :goto_1de

    .line 250
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v39    # "i":I
    .end local v46    # "offset":J
    .end local v55    # "remainingSamplesInChunk":I
    .end local v74    # "timestampTimeUnits":J
    :cond_200
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    .line 251
    .local v22, "chunkOffsetsBytes":[J
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 252
    .local v23, "chunkSampleCounts":[I
    :goto_210
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 253
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v12, v22, v4

    .line 254
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v12, v23, v4

    goto :goto_210

    .line 256
    :cond_22b
    invoke-interface/range {v61 .. v61}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v35

    .line 257
    .local v35, "fixedSampleSize":I
    move/from16 v0, v69

    int-to-long v12, v0

    move/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v12, v13}, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v52

    .line 259
    .local v52, "rechunkedResults":Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    move-object/from16 v0, v52

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 260
    .restart local v5    # "offsets":[J
    move-object/from16 v0, v52

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 261
    .restart local v6    # "sizes":[I
    move-object/from16 v0, v52

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 262
    move-object/from16 v0, v52

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 263
    .restart local v8    # "timestamps":[J
    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .restart local v9    # "flags":[I
    goto :goto_1e1

    .line 276
    .end local v22    # "chunkOffsetsBytes":[J
    .end local v23    # "chunkSampleCounts":[I
    .end local v35    # "fixedSampleSize":I
    .end local v52    # "rechunkedResults":Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    :cond_251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_28f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_28f

    .line 280
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_268
    array-length v4, v8

    move/from16 v0, v39

    if-ge v0, v4, :cond_288

    .line 281
    aget-wide v12, v8, v39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v39

    .line 280
    add-int/lit8 v39, v39, 0x1

    goto :goto_268

    .line 284
    :cond_288
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2b

    .line 288
    .end local v39    # "i":I
    :cond_28f
    const/16 v31, 0x0

    .line 289
    .local v31, "editedSampleCount":I
    const/16 v44, 0x0

    .line 290
    .local v44, "nextSampleIndex":I
    const/16 v24, 0x0

    .line 291
    .local v24, "copyMetadata":Z
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_2e2

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    .line 293
    .local v42, "mediaTime":J
    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_2dd

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 296
    .local v10, "duration":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v62

    .line 297
    .local v62, "startIndex":I
    add-long v12, v42, v10

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v4, v14}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    .line 298
    .local v34, "endIndex":I
    sub-int v4, v34, v62

    add-int v31, v31, v4

    .line 299
    move/from16 v0, v44

    move/from16 v1, v62

    if-eq v0, v1, :cond_2e0

    const/4 v4, 0x1

    :goto_2d9
    or-int v24, v24, v4

    .line 300
    move/from16 v44, v34

    .line 291
    .end local v10    # "duration":J
    .end local v34    # "endIndex":I
    .end local v62    # "startIndex":I
    :cond_2dd
    add-int/lit8 v39, v39, 0x1

    goto :goto_297

    .line 299
    .restart local v10    # "duration":J
    .restart local v34    # "endIndex":I
    .restart local v62    # "startIndex":I
    :cond_2e0
    const/4 v4, 0x0

    goto :goto_2d9

    .line 303
    .end local v10    # "duration":J
    .end local v34    # "endIndex":I
    .end local v42    # "mediaTime":J
    .end local v62    # "startIndex":I
    :cond_2e2
    move/from16 v0, v31

    move/from16 v1, v59

    if-eq v0, v1, :cond_3ac

    const/4 v4, 0x1

    :goto_2e9
    or-int v24, v24, v4

    .line 306
    if-eqz v24, :cond_3af

    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 307
    .local v30, "editedOffsets":[J
    :goto_2f3
    if-eqz v24, :cond_3b3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 308
    .local v32, "editedSizes":[I
    :goto_2fb
    if-eqz v24, :cond_3b7

    const/16 v29, 0x0

    .line 309
    .local v29, "editedMaximumSize":I
    :goto_2ff
    if-eqz v24, :cond_3bb

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 310
    .local v28, "editedFlags":[I
    :goto_307
    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v33, v0

    .line 311
    .local v33, "editedTimestamps":[J
    const-wide/16 v48, 0x0

    .line 312
    .local v48, "pts":J
    const/16 v60, 0x0

    .line 313
    .local v60, "sampleIndex":I
    const/16 v39, 0x0

    :goto_313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_3c5

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    .line 315
    .restart local v42    # "mediaTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    .line 316
    .restart local v10    # "duration":J
    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_3bf

    .line 317
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v36, v42, v12

    .line 319
    .local v36, "endMediaTime":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v62

    .line 320
    .restart local v62    # "startIndex":I
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, v36

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    .line 321
    .restart local v34    # "endIndex":I
    if-eqz v24, :cond_371

    .line 322
    sub-int v25, v34, v62

    .line 323
    .local v25, "count":I
    move/from16 v0, v62

    move-object/from16 v1, v30

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    move/from16 v0, v62

    move-object/from16 v1, v32

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    move/from16 v0, v62

    move-object/from16 v1, v28

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    .end local v25    # "count":I
    :cond_371
    move/from16 v41, v62

    .local v41, "j":I
    :goto_373
    move/from16 v0, v41

    move/from16 v1, v34

    if-ge v0, v1, :cond_3bf

    .line 328
    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v48

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v50

    .line 329
    .local v50, "ptsUs":J
    aget-wide v12, v8, v41

    sub-long v12, v12, v42

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v70

    .line 331
    .local v70, "timeInSegmentUs":J
    add-long v12, v50, v70

    aput-wide v12, v33, v60

    .line 332
    if-eqz v24, :cond_3a7

    aget v4, v32, v60

    move/from16 v0, v29

    if-le v4, v0, :cond_3a7

    .line 333
    aget v29, v6, v41

    .line 335
    :cond_3a7
    add-int/lit8 v60, v60, 0x1

    .line 327
    add-int/lit8 v41, v41, 0x1

    goto :goto_373

    .line 303
    .end local v10    # "duration":J
    .end local v28    # "editedFlags":[I
    .end local v29    # "editedMaximumSize":I
    .end local v30    # "editedOffsets":[J
    .end local v32    # "editedSizes":[I
    .end local v33    # "editedTimestamps":[J
    .end local v34    # "endIndex":I
    .end local v36    # "endMediaTime":J
    .end local v41    # "j":I
    .end local v42    # "mediaTime":J
    .end local v48    # "pts":J
    .end local v50    # "ptsUs":J
    .end local v60    # "sampleIndex":I
    .end local v62    # "startIndex":I
    .end local v70    # "timeInSegmentUs":J
    :cond_3ac
    const/4 v4, 0x0

    goto/16 :goto_2e9

    :cond_3af
    move-object/from16 v30, v5

    .line 306
    goto/16 :goto_2f3

    .restart local v30    # "editedOffsets":[J
    :cond_3b3
    move-object/from16 v32, v6

    .line 307
    goto/16 :goto_2fb

    .restart local v32    # "editedSizes":[I
    :cond_3b7
    move/from16 v29, v7

    .line 308
    goto/16 :goto_2ff

    .restart local v29    # "editedMaximumSize":I
    :cond_3bb
    move-object/from16 v28, v9

    .line 309
    goto/16 :goto_307

    .line 338
    .restart local v10    # "duration":J
    .restart local v28    # "editedFlags":[I
    .restart local v33    # "editedTimestamps":[J
    .restart local v42    # "mediaTime":J
    .restart local v48    # "pts":J
    .restart local v60    # "sampleIndex":I
    :cond_3bf
    add-long v48, v48, v10

    .line 313
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_313

    .line 341
    .end local v10    # "duration":J
    .end local v42    # "mediaTime":J
    :cond_3c5
    const/16 v38, 0x0

    .line 342
    .local v38, "hasSyncSample":Z
    const/16 v39, 0x0

    :goto_3c9
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v39

    if-ge v0, v4, :cond_3e0

    if-nez v38, :cond_3e0

    .line 343
    aget v4, v28, v39

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3de

    const/4 v4, 0x1

    :goto_3d9
    or-int v38, v38, v4

    .line 342
    add-int/lit8 v39, v39, 0x1

    goto :goto_3c9

    .line 343
    :cond_3de
    const/4 v4, 0x0

    goto :goto_3d9

    .line 345
    :cond_3e0
    if-nez v38, :cond_3ea

    .line 346
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v12, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v4, v12}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    :cond_3ea
    new-instance v12, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v30

    move-object/from16 v14, v32

    move/from16 v15, v29

    move-object/from16 v16, v33

    move-object/from16 v17, v28

    invoke-direct/range {v12 .. v17}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_2b
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .registers 31
    .param p0, "stsd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "durationUs"    # J
    .param p4, "rotationDegrees"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z

    .prologue
    .line 557
    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 559
    .local v2, "numberOfEntries":I
    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v11, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 560
    .local v11, "out":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    if-ge v12, v2, :cond_105

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 562
    .local v5, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 563
    .local v6, "childAtomSize":I
    if-lez v6, :cond_60

    const/4 v3, 0x1

    :goto_1e
    const-string v7, "childAtomSize should be positive"

    invoke-static {v3, v7}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 565
    .local v4, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v4, v3, :cond_4b

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v4, v3, :cond_62

    :cond_4b
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    .line 570
    invoke-static/range {v3 .. v12}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    .line 594
    :cond_56
    :goto_56
    add-int v3, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 560
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 563
    .end local v4    # "childAtomType":I
    :cond_60
    const/4 v3, 0x0

    goto :goto_1e

    .line 572
    .restart local v4    # "childAtomType":I
    :cond_62
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v4, v3, :cond_92

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v4, v3, :cond_a8

    :cond_92
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    .line 578
    invoke-static/range {v13 .. v23}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_56

    .line 580
    :cond_a8
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v4, v3, :cond_be

    .line 581
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_56

    .line 583
    :cond_be
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v4, v3, :cond_d4

    .line 584
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_56

    .line 586
    :cond_d4
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v4, v3, :cond_eb

    .line 587
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_56

    .line 589
    :cond_eb
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v4, v3, :cond_56

    .line 590
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_56

    .line 596
    .end local v4    # "childAtomType":I
    .end local v5    # "childStartPosition":I
    .end local v6    # "childAtomSize":I
    :cond_105
    return-object v11
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .registers 21
    .param p0, "tkhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 459
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 461
    .local v12, "fullAtom":I
    invoke-static {v12}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    .line 463
    .local v16, "version":I
    if-nez v16, :cond_8b

    const/16 v17, 0x8

    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 466
    .local v15, "trackId":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 467
    const/4 v10, 0x1

    .line 468
    .local v10, "durationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 469
    .local v9, "durationPosition":I
    if-nez v16, :cond_8e

    const/4 v8, 0x4

    .line 470
    .local v8, "durationByteCount":I
    :goto_31
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_32
    if-ge v13, v8, :cond_47

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_91

    .line 472
    const/4 v10, 0x0

    .line 477
    :cond_47
    if-eqz v10, :cond_94

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 479
    const-wide/16 v6, -0x1

    .line 489
    .local v6, "duration":J
    :cond_50
    :goto_50
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 491
    .local v2, "a00":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 492
    .local v3, "a01":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 494
    .local v4, "a10":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 497
    .local v5, "a11":I
    const/high16 v11, 0x10000

    .line 498
    .local v11, "fixedOne":I
    if-nez v2, :cond_a8

    if-ne v3, v11, :cond_a8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_a8

    if-nez v5, :cond_a8

    .line 499
    const/16 v14, 0x5a

    .line 509
    .local v14, "rotationDegrees":I
    :goto_83
    new-instance v17, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    .line 463
    .end local v2    # "a00":I
    .end local v3    # "a01":I
    .end local v4    # "a10":I
    .end local v5    # "a11":I
    .end local v6    # "duration":J
    .end local v8    # "durationByteCount":I
    .end local v9    # "durationPosition":I
    .end local v10    # "durationUnknown":Z
    .end local v11    # "fixedOne":I
    .end local v13    # "i":I
    .end local v14    # "rotationDegrees":I
    .end local v15    # "trackId":I
    :cond_8b
    const/16 v17, 0x10

    goto :goto_15

    .line 469
    .restart local v9    # "durationPosition":I
    .restart local v10    # "durationUnknown":Z
    .restart local v15    # "trackId":I
    :cond_8e
    const/16 v8, 0x8

    goto :goto_31

    .line 470
    .restart local v8    # "durationByteCount":I
    .restart local v13    # "i":I
    :cond_91
    add-int/lit8 v13, v13, 0x1

    goto :goto_32

    .line 481
    :cond_94
    if-nez v16, :cond_a3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 482
    .restart local v6    # "duration":J
    :goto_9a
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-nez v17, :cond_50

    .line 485
    const-wide/16 v6, -0x1

    goto :goto_50

    .line 481
    .end local v6    # "duration":J
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_9a

    .line 500
    .restart local v2    # "a00":I
    .restart local v3    # "a01":I
    .restart local v4    # "a10":I
    .restart local v5    # "a11":I
    .restart local v6    # "duration":J
    .restart local v11    # "fixedOne":I
    :cond_a8
    if-nez v2, :cond_b8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_b8

    if-ne v4, v11, :cond_b8

    if-nez v5, :cond_b8

    .line 501
    const/16 v14, 0x10e

    .restart local v14    # "rotationDegrees":I
    goto :goto_83

    .line 502
    .end local v14    # "rotationDegrees":I
    :cond_b8
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_cd

    if-nez v3, :cond_cd

    if-nez v4, :cond_cd

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_cd

    .line 503
    const/16 v14, 0xb4

    .restart local v14    # "rotationDegrees":I
    goto :goto_83

    .line 506
    .end local v14    # "rotationDegrees":I
    :cond_cd
    const/4 v14, 0x0

    .restart local v14    # "rotationDegrees":I
    goto :goto_83
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .registers 39
    .param p0, "trak"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "isQuickTime"    # Z

    .prologue
    .line 53
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v29

    .line 54
    .local v29, "mdia":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v15

    .line 55
    .local v15, "trackType":I
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_2c

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_2c

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_2c

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_2c

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_2c

    .line 57
    const/4 v13, 0x0

    .line 78
    :goto_2b
    return-object v13

    .line 60
    :cond_2c
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v32

    .line 61
    .local v32, "tkhdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_44

    .line 62
    # getter for: Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide p2

    .line 64
    :cond_44
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 66
    .local v6, "movieTimescale":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_a2

    .line 67
    const-wide/16 v10, -0x1

    .line 71
    .local v10, "durationUs":J
    :goto_54
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    .line 72
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v30

    .line 74
    .local v30, "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v28

    .line 75
    .local v28, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    # getter for: Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    .line 76
    # getter for: Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    .line 75
    invoke-static/range {v8 .. v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v31

    .line 77
    .local v31, "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v27

    .line 78
    .local v27, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v2, :cond_ac

    const/4 v13, 0x0

    goto :goto_2b

    .line 69
    .end local v10    # "durationUs":J
    .end local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v30    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v31    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_a2
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .restart local v10    # "durationUs":J
    goto :goto_54

    .line 78
    .restart local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .restart local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v30    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .restart local v31    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_ac
    new-instance v13, Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 79
    # getter for: Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_2b
.end method

.method public static parseUdta(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .registers 8
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 361
    if-eqz p1, :cond_6

    .line 379
    :cond_5
    :goto_5
    return-object v3

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 367
    .local v2, "udtaData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 368
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lt v4, v5, :cond_5

    .line 369
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 370
    .local v0, "atomSize":I
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 371
    .local v1, "atomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v1, v4, :cond_33

    .line 372
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 373
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 374
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    goto :goto_5

    .line 376
    :cond_33
    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_b
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 39
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "durationUs"    # J
    .param p7, "rotationDegrees"    # I
    .param p8, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I

    .prologue
    .line 601
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 603
    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 605
    .local v12, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 606
    .local v13, "height":I
    const/16 v27, 0x0

    .line 607
    .local v27, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v16, 0x3f800000

    .line 608
    .local v16, "pixelWidthHeightRatio":F
    const/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v22

    .line 611
    .local v22, "childPosition":I
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_3f

    .line 612
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    .line 613
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 616
    :cond_3f
    const/4 v14, 0x0

    .line 617
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v7, 0x0

    .line 618
    .local v7, "mimeType":Ljava/lang/String;
    const/16 v17, 0x0

    .line 619
    .local v17, "projectionData":[B
    const/16 v18, -0x1

    .line 620
    .local v18, "stereoMode":I
    :goto_45
    sub-int v6, v22, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_66

    .line 621
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v23

    .line 623
    .local v23, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 624
    .local v20, "childAtomSize":I
    if-nez v20, :cond_69

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v6, p2

    move/from16 v0, p3

    if-ne v6, v0, :cond_69

    .line 686
    .end local v20    # "childAtomSize":I
    .end local v23    # "childStartPosition":I
    :cond_66
    if-nez v7, :cond_173

    .line 693
    :goto_68
    return-void

    .line 628
    .restart local v20    # "childAtomSize":I
    .restart local v23    # "childStartPosition":I
    :cond_69
    if-lez v20, :cond_a3

    const/4 v6, 0x1

    :goto_6c
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v21

    .line 630
    .local v21, "childAtomType":I
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_a7

    .line 631
    if-nez v7, :cond_a5

    const/4 v6, 0x1

    :goto_7e
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 632
    const-string/jumbo v7, "video/avc"

    .line 633
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v19

    .line 634
    .local v19, "avcCData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    .line 635
    move-object/from16 v0, v19

    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p8

    iput v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 636
    if-nez v27, :cond_a0

    .line 637
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    move/from16 v16, v0

    .line 682
    .end local v19    # "avcCData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    :cond_a0
    :goto_a0
    add-int v22, v22, v20

    .line 683
    goto :goto_45

    .line 628
    .end local v21    # "childAtomType":I
    :cond_a3
    const/4 v6, 0x0

    goto :goto_6c

    .line 631
    .restart local v21    # "childAtomType":I
    :cond_a5
    const/4 v6, 0x0

    goto :goto_7e

    .line 639
    :cond_a7
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_d5

    .line 640
    if-nez v7, :cond_d3

    const/4 v6, 0x1

    :goto_b0
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 641
    const-string/jumbo v7, "video/hevc"

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v24

    .line 643
    .local v24, "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v14, Ljava/util/List;

    .line 644
    .restart local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v24

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p8

    iput v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_a0

    .line 640
    .end local v24    # "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :cond_d3
    const/4 v6, 0x0

    goto :goto_b0

    .line 645
    :cond_d5
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_e7

    .line 646
    if-nez v7, :cond_e5

    const/4 v6, 0x1

    :goto_de
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 647
    const-string/jumbo v7, "video/3gpp"

    goto :goto_a0

    .line 646
    :cond_e5
    const/4 v6, 0x0

    goto :goto_de

    .line 648
    :cond_e7
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_10c

    .line 649
    if-nez v7, :cond_10a

    const/4 v6, 0x1

    :goto_f0
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 651
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v26

    .line 652
    .local v26, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v7    # "mimeType":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 653
    .restart local v7    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 654
    goto :goto_a0

    .line 649
    .end local v26    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_10a
    const/4 v6, 0x0

    goto :goto_f0

    .line 654
    :cond_10c
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_11d

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v16

    .line 656
    const/16 v27, 0x1

    goto :goto_a0

    .line 657
    :cond_11d
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vpcC:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_13a

    .line 658
    if-nez v7, :cond_134

    const/4 v6, 0x1

    :goto_126
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 659
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_136

    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    :goto_132
    goto/16 :goto_a0

    .line 658
    :cond_134
    const/4 v6, 0x0

    goto :goto_126

    .line 659
    :cond_136
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    goto :goto_132

    .line 660
    :cond_13a
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sv3d:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_14c

    .line 661
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B

    move-result-object v17

    goto/16 :goto_a0

    .line 662
    :cond_14c
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_st3d:I

    move/from16 v0, v21

    if-ne v0, v6, :cond_a0

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v28

    .line 664
    .local v28, "version":I
    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 665
    if-nez v28, :cond_a0

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    .line 667
    .local v25, "layout":I
    packed-switch v25, :pswitch_data_188

    goto/16 :goto_a0

    .line 669
    :pswitch_167
    const/16 v18, 0x0

    .line 670
    goto/16 :goto_a0

    .line 672
    :pswitch_16b
    const/16 v18, 0x1

    .line 673
    goto/16 :goto_a0

    .line 675
    :pswitch_16f
    const/16 v18, 0x2

    .line 676
    goto/16 :goto_a0

    .line 690
    .end local v20    # "childAtomSize":I
    .end local v21    # "childAtomType":I
    .end local v23    # "childStartPosition":I
    .end local v25    # "layout":I
    .end local v28    # "version":I
    :cond_173
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_68

    .line 667
    nop

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_167
        :pswitch_16b
        :pswitch_16f
    .end packed-switch
.end method
