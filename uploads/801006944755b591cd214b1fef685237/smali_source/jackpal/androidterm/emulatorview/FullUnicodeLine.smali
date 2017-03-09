.class Ljackpal/androidterm/emulatorview/FullUnicodeLine;
.super Ljava/lang/Object;
.source "UnicodeTranscript.java"


# static fields
.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private mColumns:I

.field private mOffset:[S

.field private mText:[C


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .param p1, "columns"    # I

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 887
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 889
    .local v1, "text":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p1, :cond_12

    .line 890
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 893
    :cond_12
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v3, 0x0

    int-to-short v4, p1

    aput-short v4, v2, v3

    .line 894
    return-void
.end method

.method public constructor <init>([C)V
    .registers 5
    .param p1, "basicLine"    # [C

    .prologue
    const/4 v2, 0x0

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    array-length v0, p1

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 898
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    iget v1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 900
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    array-length v1, p1

    int-to-short v1, v1

    aput-short v1, v0, v2

    .line 901
    return-void
.end method

.method private commonConstructor(I)V
    .registers 4
    .param p1, "columns"    # I

    .prologue
    .line 904
    iput p1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 905
    new-array v0, p1, [S

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 906
    const/high16 v0, 0x3fc00000

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 907
    return-void
.end method


# virtual methods
.method public findStartOfColumn(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 918
    if-nez p1, :cond_4

    .line 919
    const/4 v0, 0x0

    .line 921
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    aget-short v0, v0, p1

    add-int/2addr v0, p1

    goto :goto_3
.end method

.method public getChar(II[CI)Z
    .registers 9
    .param p1, "column"    # I
    .param p2, "charIndex"    # I
    .param p3, "out"    # [C
    .param p4, "offset"    # I

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v1

    .line 928
    .local v1, "pos":I
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    if-ge v2, v3, :cond_1a

    .line 929
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 933
    .local v0, "length":I
    :goto_12
    if-lt p2, v0, :cond_21

    .line 934
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 931
    .end local v0    # "length":I
    :cond_1a
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result v2

    sub-int v0, v2, v1

    .restart local v0    # "length":I
    goto :goto_12

    .line 936
    :cond_21
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    add-int v3, v1, p2

    aget-char v2, v2, v3

    aput-char v2, p3, p4

    .line 937
    add-int/lit8 v2, p2, 0x1

    if-ge v2, v0, :cond_2f

    const/4 v2, 0x1

    :goto_2e
    return v2

    :cond_2f
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method public getLine()[C
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    return-object v0
.end method

.method public getSpaceUsed()I
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public setChar(II)V
    .registers 27
    .param p1, "column"    # I
    .param p2, "codePoint"    # I

    .prologue
    .line 941
    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 942
    .local v6, "columns":I
    if-ltz p1, :cond_a

    move/from16 v0, p1

    if-lt v0, v6, :cond_10

    .line 943
    :cond_a
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 946
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    move-object/from16 v19, v0

    .line 947
    .local v19, "text":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 948
    .local v13, "offset":[S
    const/16 v21, 0x0

    aget-short v18, v13, v21

    .line 950
    .local v18, "spaceUsed":I
    invoke-virtual/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v16

    .line 952
    .local v16, "pos":I
    invoke-static/range {p2 .. p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v5

    .line 953
    .local v5, "charWidth":I
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth([CI)I

    move-result v14

    .line 955
    .local v14, "oldCharWidth":I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v5, v0, :cond_3f

    add-int/lit8 v21, v6, -0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3f

    .line 957
    const/16 p2, 0x20

    .line 958
    const/4 v5, 0x1

    .line 961
    :cond_3f
    const/16 v20, 0x0

    .line 962
    .local v20, "wasExtraColForWideChar":Z
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v14, v0, :cond_5b

    if-lez p1, :cond_5b

    .line 966
    add-int/lit8 v21, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_1b3

    const/16 v20, 0x1

    .line 971
    :cond_5b
    :goto_5b
    if-eqz v20, :cond_1b7

    add-int/lit8 v21, p1, 0x1

    move/from16 v0, v21

    if-ge v0, v6, :cond_1b7

    .line 972
    add-int/lit8 v21, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    sub-int v15, v21, v16

    .line 980
    .local v15, "oldLen":I
    :goto_6f
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 981
    .local v8, "newLen":I
    if-nez v5, :cond_76

    .line 985
    add-int/2addr v8, v15

    .line 987
    :cond_76
    sub-int v17, v8, v15

    .line 990
    .local v17, "shift":I
    if-lez v17, :cond_ba

    .line 991
    add-int v21, v18, v17

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1cf

    .line 993
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    new-array v9, v0, [C

    .line 994
    .local v9, "newText":[C
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    add-int v21, v16, v15

    add-int v22, v16, v8

    sub-int v23, v18, v16

    sub-int v23, v23, v15

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 1003
    .end local v9    # "newText":[C
    :cond_ba
    :goto_ba
    if-lez v5, :cond_1e6

    .line 1004
    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    .line 1012
    :goto_c5
    if-gez v17, :cond_dc

    .line 1013
    add-int v21, v16, v15

    add-int v22, v16, v8

    sub-int v23, v18, v16

    sub-int v23, v23, v15

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1017
    :cond_dc
    if-eqz v17, :cond_e9

    .line 1018
    add-int v18, v18, v17

    .line 1019
    const/16 v21, 0x0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1033
    :cond_e9
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v14, v0, :cond_f5

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_fd

    :cond_f5
    if-eqz v20, :cond_169

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v5, v0, :cond_169

    .line 1034
    :cond_fd
    add-int v11, v16, v8

    .line 1035
    .local v11, "nextPos":I
    move-object/from16 v9, v19

    .line 1036
    .restart local v9    # "newText":[C
    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12c

    .line 1038
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    new-array v9, v0, [C

    .line 1039
    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v20, :cond_1f3

    move/from16 v21, v16

    :goto_121
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    :cond_12c
    if-eqz v20, :cond_1f7

    .line 1044
    add-int/lit8 v21, v16, 0x1

    sub-int v22, v18, v16

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    const/16 v21, 0x20

    aput-char v21, v9, v16

    .line 1052
    :goto_141
    move-object/from16 v0, v19

    if-eq v9, v0, :cond_14b

    .line 1054
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 1058
    :cond_14b
    const/16 v21, 0x0

    aget-short v22, v13, v21

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v13, v21

    .line 1062
    if-eqz v20, :cond_20a

    .line 1063
    aget-short v21, v13, p1

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, p1

    .line 1064
    add-int/lit8 v16, v16, 0x1

    .line 1074
    :goto_167
    add-int/lit8 v17, v17, 0x1

    .line 1087
    .end local v9    # "newText":[C
    .end local v11    # "nextPos":I
    :cond_169
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_175

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v5, v0, :cond_17d

    :cond_175
    if-eqz v20, :cond_19f

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v5, v0, :cond_19f

    .line 1088
    :cond_17d
    add-int/lit8 v21, v6, -0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_231

    .line 1090
    add-int/lit8 v21, p1, 0x1

    aget-short v22, v13, p1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1093
    const/16 v21, 0x0

    add-int v22, v16, v8

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1094
    const/16 v17, 0x0

    .line 1134
    :cond_19f
    :goto_19f
    if-eqz v17, :cond_2c7

    .line 1135
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_1a3
    if-ge v7, v6, :cond_2c7

    .line 1136
    aget-short v21, v13, v7

    add-int v21, v21, v17

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v7

    .line 1135
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a3

    .line 966
    .end local v7    # "i":I
    .end local v8    # "newLen":I
    .end local v15    # "oldLen":I
    .end local v17    # "shift":I
    :cond_1b3
    const/16 v20, 0x0

    goto/16 :goto_5b

    .line 973
    :cond_1b7
    add-int v21, p1, v14

    move/from16 v0, v21

    if-ge v0, v6, :cond_1cb

    .line 974
    add-int v21, p1, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    sub-int v15, v21, v16

    .restart local v15    # "oldLen":I
    goto/16 :goto_6f

    .line 976
    .end local v15    # "oldLen":I
    :cond_1cb
    sub-int v15, v18, v16

    .restart local v15    # "oldLen":I
    goto/16 :goto_6f

    .line 998
    .restart local v8    # "newLen":I
    .restart local v17    # "shift":I
    :cond_1cf
    add-int v21, v16, v15

    add-int v22, v16, v8

    sub-int v23, v18, v16

    sub-int v23, v23, v15

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_ba

    .line 1008
    :cond_1e6
    add-int v21, v16, v15

    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    goto/16 :goto_c5

    .restart local v9    # "newText":[C
    .restart local v11    # "nextPos":I
    :cond_1f3
    move/from16 v21, v11

    .line 1039
    goto/16 :goto_121

    .line 1048
    :cond_1f7
    add-int/lit8 v21, v11, 0x1

    sub-int v22, v18, v11

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v11, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    const/16 v21, 0x20

    aput-char v21, v9, v11

    goto/16 :goto_141

    .line 1066
    :cond_20a
    if-nez p1, :cond_21b

    .line 1067
    const/16 v21, 0x1

    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1071
    :cond_217
    :goto_217
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_167

    .line 1068
    :cond_21b
    add-int/lit8 v21, p1, 0x1

    move/from16 v0, v21

    if-ge v0, v6, :cond_217

    .line 1069
    add-int/lit8 v21, p1, 0x1

    aget-short v22, v13, p1

    add-int v22, v22, v8

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    goto :goto_217

    .line 1097
    .end local v9    # "newText":[C
    .end local v11    # "nextPos":I
    :cond_231
    add-int v11, v16, v8

    .line 1098
    .restart local v11    # "nextPos":I
    move-object/from16 v0, v19

    invoke-static {v0, v11}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth([CI)I

    move-result v12

    .line 1100
    .local v12, "nextWidth":I
    add-int v21, p1, v12

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    if-ge v0, v6, :cond_295

    .line 1101
    add-int v21, p1, v12

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    add-int v21, v21, v17

    sub-int v10, v21, v11

    .line 1106
    .local v10, "nextLen":I
    :goto_251
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_298

    .line 1107
    const/16 v21, 0x20

    aput-char v21, v19, v11

    .line 1109
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_289

    .line 1110
    add-int v21, v11, v10

    add-int/lit8 v22, v11, 0x1

    sub-int v23, v18, v11

    sub-int v23, v23, v10

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    add-int/lit8 v21, v10, -0x1

    sub-int v17, v17, v21

    .line 1112
    const/16 v21, 0x0

    aget-short v22, v13, v21

    add-int/lit8 v23, v10, -0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1124
    :cond_289
    :goto_289
    if-nez p1, :cond_2b9

    .line 1125
    const/16 v21, 0x1

    const/16 v22, -0x1

    aput-short v22, v13, v21

    .line 1129
    :goto_291
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_19f

    .line 1103
    .end local v10    # "nextLen":I
    :cond_295
    sub-int v10, v18, v11

    .restart local v10    # "nextLen":I
    goto :goto_251

    .line 1116
    :cond_298
    add-int v21, v11, v10

    sub-int v22, v18, v11

    sub-int v22, v22, v10

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    sub-int v17, v17, v10

    .line 1120
    const/16 v21, 0x0

    aget-short v22, v13, v21

    sub-int v22, v22, v10

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    goto :goto_289

    .line 1127
    :cond_2b9
    add-int/lit8 v21, p1, 0x1

    aget-short v22, v13, p1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v13, v21

    goto :goto_291

    .line 1139
    .end local v10    # "nextLen":I
    .end local v11    # "nextPos":I
    .end local v12    # "nextWidth":I
    :cond_2c7
    return-void
.end method
