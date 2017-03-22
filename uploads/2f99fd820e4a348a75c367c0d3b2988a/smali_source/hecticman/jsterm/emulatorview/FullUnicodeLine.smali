.class Lhecticman/jsterm/emulatorview/FullUnicodeLine;
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
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 871
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 873
    .local v1, "text":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-lt v0, p1, :cond_12

    .line 877
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v3, 0x0

    int-to-short v4, p1

    aput-short v4, v2, v3

    .line 878
    return-void

    .line 874
    :cond_12
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public constructor <init>([C)V
    .registers 5
    .param p1, "basicLine"    # [C

    .prologue
    const/4 v2, 0x0

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    array-length v0, p1

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 882
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    iget v1, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mColumns:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

    array-length v1, p1

    int-to-short v1, v1

    aput-short v1, v0, v2

    .line 885
    return-void
.end method

.method private commonConstructor(I)V
    .registers 4
    .param p1, "columns"    # I

    .prologue
    .line 888
    iput p1, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 889
    new-array v0, p1, [S

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 890
    const/high16 v0, 0x3fc00000

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 891
    return-void
.end method


# virtual methods
.method public findStartOfColumn(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 902
    if-nez p1, :cond_4

    .line 903
    const/4 v0, 0x0

    .line 905
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

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
    .line 910
    invoke-virtual {p0, p1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v1

    .line 912
    .local v1, "pos":I
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mColumns:I

    if-ge v2, v3, :cond_1a

    .line 913
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 917
    .local v0, "length":I
    :goto_12
    if-lt p2, v0, :cond_21

    .line 918
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 915
    .end local v0    # "length":I
    :cond_1a
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result v2

    sub-int v0, v2, v1

    .restart local v0    # "length":I
    goto :goto_12

    .line 920
    :cond_21
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    add-int v3, v1, p2

    aget-char v2, v2, v3

    aput-char v2, p3, p4

    .line 921
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
    .line 898
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    return-object v0
.end method

.method public getSpaceUsed()I
    .registers 3

    .prologue
    .line 894
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public setChar(II)V
    .registers 26
    .param p1, "column"    # I
    .param p2, "codePoint"    # I

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 926
    .local v6, "columns":I
    if-ltz p1, :cond_a

    move/from16 v0, p1

    if-lt v0, v6, :cond_10

    .line 927
    :cond_a
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 930
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    move-object/from16 v19, v0

    .line 931
    .local v19, "text":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 932
    .local v13, "offset":[S
    const/16 v20, 0x0

    aget-short v18, v13, v20

    .line 934
    .local v18, "spaceUsed":I
    invoke-virtual/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v16

    .line 936
    .local v16, "pos":I
    invoke-static/range {p2 .. p2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v5

    .line 938
    .local v5, "charWidth":I
    aget-char v20, v19, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v20

    if-eqz v20, :cond_137

    .line 939
    aget-char v20, v19, v16

    add-int/lit8 v21, v16, 0x1

    aget-char v21, v19, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v14

    .line 946
    .local v14, "oldCharWidth":I
    :goto_3c
    add-int v20, p1, v14

    move/from16 v0, v20

    if-ge v0, v6, :cond_13f

    .line 947
    add-int v20, p1, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v20

    sub-int v15, v20, v16

    .line 953
    .local v15, "oldLen":I
    :goto_4e
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 954
    .local v8, "newLen":I
    if-nez v5, :cond_55

    .line 958
    add-int/2addr v8, v15

    .line 960
    :cond_55
    sub-int v17, v8, v15

    .line 963
    .local v17, "shift":I
    if-lez v17, :cond_99

    .line 964
    add-int v20, v18, v17

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_143

    .line 966
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    new-array v9, v0, [C

    .line 967
    .local v9, "newText":[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 969
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 976
    .end local v9    # "newText":[C
    :cond_99
    :goto_99
    if-lez v5, :cond_15a

    .line 977
    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    .line 985
    :goto_a4
    if-gez v17, :cond_bb

    .line 986
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    :cond_bb
    if-eqz v17, :cond_c8

    .line 991
    add-int v18, v18, v17

    .line 992
    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1001
    :cond_c8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_18d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_18d

    .line 1003
    add-int v11, v16, v8

    .line 1004
    .local v11, "nextPos":I
    add-int/lit8 v20, v18, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_167

    .line 1006
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    new-array v9, v0, [C

    .line 1007
    .restart local v9    # "newText":[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    add-int/lit8 v20, v11, 0x1

    sub-int v21, v18, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v11, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 1014
    .end local v9    # "newText":[C
    :goto_10e
    const/16 v20, 0x20

    aput-char v20, v19, v11

    .line 1017
    const/16 v20, 0x0

    aget-short v21, v13, v20

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1020
    if-nez p1, :cond_177

    .line 1021
    const/16 v20, 0x1

    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1025
    :cond_12c
    :goto_12c
    add-int/lit8 p1, p1, 0x1

    .line 1026
    add-int/lit8 v17, v17, 0x1

    .line 1084
    .end local v11    # "nextPos":I
    :cond_130
    :goto_130
    if-eqz v17, :cond_136

    .line 1085
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_134
    if-lt v7, v6, :cond_289

    .line 1089
    .end local v7    # "i":I
    :cond_136
    return-void

    .line 941
    .end local v8    # "newLen":I
    .end local v14    # "oldCharWidth":I
    .end local v15    # "oldLen":I
    .end local v17    # "shift":I
    :cond_137
    aget-char v20, v19, v16

    invoke-static/range {v20 .. v20}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v14

    .restart local v14    # "oldCharWidth":I
    goto/16 :goto_3c

    .line 949
    :cond_13f
    sub-int v15, v18, v16

    .restart local v15    # "oldLen":I
    goto/16 :goto_4e

    .line 971
    .restart local v8    # "newLen":I
    .restart local v17    # "shift":I
    :cond_143
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_99

    .line 981
    :cond_15a
    add-int v20, v16, v15

    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    goto/16 :goto_a4

    .line 1012
    .restart local v11    # "nextPos":I
    :cond_167
    add-int/lit8 v20, v11, 0x1

    sub-int v21, v18, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10e

    .line 1022
    :cond_177
    add-int/lit8 v20, p1, 0x1

    move/from16 v0, v20

    if-ge v0, v6, :cond_12c

    .line 1023
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int v21, v21, v8

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_12c

    .line 1027
    .end local v11    # "nextPos":I
    :cond_18d
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_130

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_130

    .line 1028
    add-int/lit8 v20, v6, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b4

    .line 1030
    const/16 v20, 0x20

    aput-char v20, v19, v16

    .line 1031
    const/16 v20, 0x0

    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1032
    const/16 v17, 0x0

    goto/16 :goto_130

    .line 1033
    :cond_1b4
    add-int/lit8 v20, v6, -0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d8

    .line 1035
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1038
    const/16 v20, 0x0

    add-int v21, v16, v8

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1039
    const/16 v17, 0x0

    goto/16 :goto_130

    .line 1042
    :cond_1d8
    add-int v11, v16, v8

    .line 1044
    .restart local v11    # "nextPos":I
    aget-char v20, v19, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v20

    if-eqz v20, :cond_24a

    .line 1045
    aget-char v20, v19, v11

    add-int/lit8 v21, v11, 0x1

    aget-char v21, v19, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v12

    .line 1050
    .local v12, "nextWidth":I
    :goto_1f0
    add-int v20, p1, v12

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v0, v6, :cond_251

    .line 1051
    add-int v20, p1, v12

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v20

    sub-int v10, v20, v11

    .line 1056
    .local v10, "nextLen":I
    :goto_206
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v12, v0, :cond_254

    .line 1057
    const/16 v20, 0x20

    aput-char v20, v19, v11

    .line 1059
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_23e

    .line 1060
    add-int v20, v11, v10

    add-int/lit8 v21, v11, 0x1

    sub-int v22, v18, v11

    sub-int v22, v22, v10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1061
    add-int/lit8 v20, v10, -0x1

    sub-int v17, v17, v20

    .line 1062
    const/16 v20, 0x0

    aget-short v21, v13, v20

    add-int/lit8 v22, v10, -0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1074
    :cond_23e
    :goto_23e
    if-nez p1, :cond_27b

    .line 1075
    const/16 v20, 0x1

    const/16 v21, -0x1

    aput-short v21, v13, v20

    .line 1079
    :goto_246
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_130

    .line 1047
    .end local v10    # "nextLen":I
    .end local v12    # "nextWidth":I
    :cond_24a
    aget-char v20, v19, v11

    invoke-static/range {v20 .. v20}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v12

    .restart local v12    # "nextWidth":I
    goto :goto_1f0

    .line 1053
    :cond_251
    sub-int v10, v18, v11

    .restart local v10    # "nextLen":I
    goto :goto_206

    .line 1066
    :cond_254
    add-int v20, v11, v10

    sub-int v21, v18, v11

    sub-int v21, v21, v10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1067
    sub-int v17, v17, v10

    .line 1070
    const/16 v20, 0x0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_23e

    .line 1077
    :cond_27b
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_246

    .line 1086
    .end local v10    # "nextLen":I
    .end local v11    # "nextPos":I
    .end local v12    # "nextWidth":I
    .restart local v7    # "i":I
    :cond_289
    aget-short v20, v13, v7

    add-int v20, v20, v17

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v13, v7

    .line 1085
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_134
.end method
