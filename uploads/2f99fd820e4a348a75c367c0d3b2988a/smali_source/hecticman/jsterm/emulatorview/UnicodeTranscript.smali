.class Lhecticman/jsterm/emulatorview/UnicodeTranscript;
.super Ljava/lang/Object;
.source "UnicodeTranscript.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnicodeTranscript"


# instance fields
.field private mActiveTranscriptRows:I

.field private mColor:[[B

.field private mColumns:I

.field private mDefaultBackColor:I

.field private mDefaultForeColor:I

.field private mLineWrap:[Z

.field private mLines:[Ljava/lang/Object;

.field private mScreenFirstRow:I

.field private mScreenRows:I

.field private mTotalRows:I

.field private tmpChar:[C

.field private tmpColor:[B

.field private tmpLine:[C


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 56
    iput v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 57
    iput v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 59
    iput v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpChar:[C

    .line 66
    iput p1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 67
    iput p2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 68
    iput p3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 69
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 70
    new-array v0, p2, [[B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 71
    new-array v0, p2, [Z

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 72
    new-array v0, p1, [B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    .line 74
    iput p4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 75
    iput p5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 76
    return-void
.end method

.method private allocateBasicLine(II)[C
    .registers 7
    .param p1, "row"    # I
    .param p2, "columns"    # I

    .prologue
    .line 731
    new-array v1, p2, [C

    .line 734
    .local v1, "line":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-lt v0, p2, :cond_f

    .line 738
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 739
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/4 v3, 0x0

    aput-object v3, v2, p1

    .line 740
    return-object v1

    .line 735
    :cond_f
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private allocateColor(II)[B
    .registers 8
    .param p1, "row"    # I
    .param p2, "columns"    # I

    .prologue
    .line 752
    new-array v0, p2, [B

    .line 755
    .local v0, "color":[B
    iget v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    invoke-direct {p0, v3, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v1

    .line 756
    .local v1, "defaultColor":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-lt v2, p2, :cond_12

    .line 759
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aput-object v0, v3, p1

    .line 760
    return-object v0

    .line 757
    :cond_12
    aput-byte v1, v0, v2

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private allocateFullLine(II)Lhecticman/jsterm/emulatorview/FullUnicodeLine;
    .registers 6
    .param p1, "row"    # I
    .param p2, "columns"    # I

    .prologue
    .line 744
    new-instance v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    invoke-direct {v0, p2}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;-><init>(I)V

    .line 746
    .local v0, "line":Lhecticman/jsterm/emulatorview/FullUnicodeLine;
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 747
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 748
    return-object v0
.end method

.method private blockCopyLines(III)V
    .registers 11
    .param p1, "src"    # I
    .param p2, "len"    # I
    .param p3, "shift"    # I

    .prologue
    .line 260
    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 263
    .local v2, "totalRows":I
    add-int v3, p1, p3

    if-ltz v3, :cond_28

    .line 264
    add-int v3, p1, p3

    rem-int v0, v3, v2

    .line 269
    .local v0, "dst":I
    :goto_a
    add-int v3, p1, p2

    if-gt v3, v2, :cond_2d

    add-int v3, v0, p2

    if-gt v3, v2, :cond_2d

    .line 271
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    :cond_27
    return-void

    .line 266
    .end local v0    # "dst":I
    :cond_28
    add-int v3, v2, p1

    add-int v0, v3, p3

    .restart local v0    # "dst":I
    goto :goto_a

    .line 277
    :cond_2d
    if-gez p3, :cond_5f

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, p2, :cond_27

    .line 280
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 281
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 282
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 286
    .end local v1    # "i":I
    :cond_5f
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_61
    if-ltz v1, :cond_27

    .line 287
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 288
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 289
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 286
    add-int/lit8 v1, v1, -0x1

    goto :goto_61
.end method

.method private changeColor()V
    .registers 6

    .prologue
    .line 766
    iget v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    invoke-direct {p0, v3, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v0

    .line 768
    .local v0, "defaultColor":B
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    iget v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-lt v2, v3, :cond_e

    .line 778
    :cond_d
    return-void

    .line 769
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-lt v1, v3, :cond_16

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 772
    :cond_16
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v3, v3, v2

    if-eqz v3, :cond_d

    .line 775
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v3, v3, v2

    aput-byte v0, v3, v1

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static charWidth(CC)I
    .registers 3
    .param p0, "cHigh"    # C
    .param p1, "cLow"    # C

    .prologue
    .line 577
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v0

    return v0
.end method

.method public static charWidth(I)I
    .registers 4
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 539
    const/16 v2, 0x1f

    if-le p0, v2, :cond_b

    const/16 v2, 0x7f

    if-ge p0, v2, :cond_b

    .line 573
    :cond_a
    :goto_a
    return v0

    .line 545
    :cond_b
    const/16 v2, 0x1b

    if-eq p0, v2, :cond_a

    .line 549
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_34

    .line 557
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-ne v2, v0, :cond_29

    .line 559
    int-to-char v2, p0

    invoke-static {v2}, Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat;->getEastAsianWidth(C)I

    move-result v2

    packed-switch v2, :pswitch_data_46

    :pswitch_24
    goto :goto_a

    :pswitch_25
    move v0, v1

    .line 562
    goto :goto_a

    .line 554
    :sswitch_27
    const/4 v0, 0x0

    goto :goto_a

    .line 566
    :cond_29
    shr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_50

    goto :goto_a

    :pswitch_31
    move v0, v1

    .line 569
    goto :goto_a

    .line 549
    nop

    :sswitch_data_34
    .sparse-switch
        0x6 -> :sswitch_27
        0x7 -> :sswitch_27
        0xf -> :sswitch_27
        0x10 -> :sswitch_27
    .end sparse-switch

    .line 559
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_25
        :pswitch_24
        :pswitch_25
    .end packed-switch

    .line 566
    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private encodeColor(II)B
    .registers 5
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I

    .prologue
    .line 781
    and-int/lit8 v0, p1, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, p2, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private externalToInternalRow(I)I
    .registers 5
    .param p1, "extRow"    # I

    .prologue
    .line 122
    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_9

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le p1, v1, :cond_3b

    .line 123
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "externalToInternalRow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "UnicodeTranscript"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3b
    if-ltz p1, :cond_44

    .line 130
    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    rem-int/2addr v1, v2

    .line 135
    :goto_43
    return v1

    .line 132
    :cond_44
    neg-int v1, p1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    if-le v1, v2, :cond_50

    .line 133
    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_43

    .line 135
    :cond_50
    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    goto :goto_43
.end method

.method private isBasicChar(I)Z
    .registers 4
    .param p1, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    .line 727
    invoke-static {p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v1

    if-ne v1, v0, :cond_d

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    if-eq v1, v0, :cond_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    return v0
.end method


# virtual methods
.method public blockCopy(IIIIII)V
    .registers 31
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 384
    if-ltz p1, :cond_28

    add-int v3, p1, p3

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p2, :cond_28

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-gt v3, v4, :cond_28

    .line 385
    if-ltz p5, :cond_28

    add-int v3, p5, p3

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p6, :cond_28

    .line 386
    add-int v3, p6, p4

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v3, v4, :cond_2e

    .line 387
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 389
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 390
    .local v18, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 391
    .local v13, "color":[[B
    move/from16 v0, p2

    move/from16 v1, p6

    if-le v0, v1, :cond_13a

    .line 393
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_40
    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_47

    .line 490
    :cond_46
    return-void

    .line 394
    :cond_47
    add-int v3, p2, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v19

    .line 395
    .local v19, "srcRow":I
    add-int v3, p6, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v16

    .line 396
    .local v16, "dstRow":I
    aget-object v3, v18, v19

    instance-of v3, v3, [C

    if-eqz v3, :cond_7b

    aget-object v3, v18, v16

    instance-of v3, v3, [C

    if-eqz v3, :cond_7b

    .line 397
    aget-object v3, v18, v19

    aget-object v4, v18, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :cond_70
    aget-object v3, v13, v19

    if-nez v3, :cond_f3

    aget-object v3, v13, v16

    if-nez v3, :cond_f3

    .line 393
    :cond_78
    :goto_78
    add-int/lit8 v22, v22, 0x1

    goto :goto_40

    .line 400
    :cond_7b
    add-int v5, p6, v22

    .line 401
    .local v5, "extDstRow":I
    add-int v3, p2, v22

    add-int v4, p1, p3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v20

    .line 402
    .local v20, "tmp":[C
    if-nez v20, :cond_a0

    .line 404
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    goto :goto_78

    .line 407
    :cond_a0
    const/4 v11, 0x0

    .line 408
    .local v11, "cHigh":C
    const/16 v21, 0x0

    .line 409
    .local v21, "x":I
    move-object/from16 v0, p0

    iget v14, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 410
    .local v14, "columns":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a9
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_70

    .line 411
    aget-char v3, v20, v17

    if-eqz v3, :cond_70

    add-int v3, p5, v21

    if-ge v3, v14, :cond_70

    .line 414
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 415
    aget-char v11, v20, v17

    .line 410
    :goto_c2
    add-int/lit8 v17, v17, 0x1

    goto :goto_a9

    .line 417
    :cond_c5
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 418
    aget-char v3, v20, v17

    invoke-static {v11, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    .line 419
    .local v12, "codePoint":I
    add-int v3, p5, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v12}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 420
    invoke-static {v12}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_c2

    .line 422
    .end local v12    # "codePoint":I
    :cond_e1
    add-int v3, p5, v21

    aget-char v4, v20, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 423
    aget-char v3, v20, v17

    invoke-static {v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_c2

    .line 429
    .end local v5    # "extDstRow":I
    .end local v11    # "cHigh":C
    .end local v14    # "columns":I
    .end local v17    # "i":I
    .end local v20    # "tmp":[C
    .end local v21    # "x":I
    :cond_f3
    aget-object v3, v13, v19

    if-nez v3, :cond_118

    aget-object v3, v13, v16

    if-eqz v3, :cond_118

    .line 430
    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v15

    .line 431
    .local v15, "defaultColor":B
    move/from16 v21, p5

    .restart local v21    # "x":I
    :goto_10b
    add-int v3, p5, p3

    move/from16 v0, v21

    if-ge v0, v3, :cond_78

    .line 432
    aget-object v3, v13, v16

    aput-byte v15, v3, v21

    .line 431
    add-int/lit8 v21, v21, 0x1

    goto :goto_10b

    .line 435
    .end local v15    # "defaultColor":B
    .end local v21    # "x":I
    :cond_118
    aget-object v3, v13, v19

    if-eqz v3, :cond_12b

    aget-object v3, v13, v16

    if-nez v3, :cond_12b

    .line 436
    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 438
    :cond_12b
    aget-object v3, v13, v19

    aget-object v4, v13, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_78

    .line 442
    .end local v16    # "dstRow":I
    .end local v19    # "srcRow":I
    .end local v22    # "y":I
    :cond_13a
    const/16 v22, 0x0

    .restart local v22    # "y":I
    :goto_13c
    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_46

    .line 443
    add-int/lit8 v3, v22, 0x1

    sub-int v23, p4, v3

    .line 444
    .local v23, "y2":I
    add-int v3, p2, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v19

    .line 445
    .restart local v19    # "srcRow":I
    add-int v3, p6, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v16

    .line 446
    .restart local v16    # "dstRow":I
    aget-object v3, v18, v19

    instance-of v3, v3, [C

    if-eqz v3, :cond_17a

    aget-object v3, v18, v16

    instance-of v3, v3, [C

    if-eqz v3, :cond_17a

    .line 447
    aget-object v3, v18, v19

    aget-object v4, v18, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_16f
    aget-object v3, v13, v19

    if-nez v3, :cond_1f2

    aget-object v3, v13, v16

    if-nez v3, :cond_1f2

    .line 442
    :cond_177
    :goto_177
    add-int/lit8 v22, v22, 0x1

    goto :goto_13c

    .line 449
    :cond_17a
    add-int v5, p6, v23

    .line 450
    .restart local v5    # "extDstRow":I
    add-int v3, p2, v23

    add-int v4, p1, p3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v20

    .line 451
    .restart local v20    # "tmp":[C
    if-nez v20, :cond_19f

    .line 453
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    goto :goto_177

    .line 456
    :cond_19f
    const/4 v11, 0x0

    .line 457
    .restart local v11    # "cHigh":C
    const/16 v21, 0x0

    .line 458
    .restart local v21    # "x":I
    move-object/from16 v0, p0

    iget v14, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 459
    .restart local v14    # "columns":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_1a8
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_16f

    .line 460
    aget-char v3, v20, v17

    if-eqz v3, :cond_16f

    add-int v3, p5, v21

    if-ge v3, v14, :cond_16f

    .line 463
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 464
    aget-char v11, v20, v17

    .line 459
    :goto_1c1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a8

    .line 466
    :cond_1c4
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 467
    aget-char v3, v20, v17

    invoke-static {v11, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    .line 468
    .restart local v12    # "codePoint":I
    add-int v3, p5, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v12}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 469
    invoke-static {v12}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_1c1

    .line 471
    .end local v12    # "codePoint":I
    :cond_1e0
    add-int v3, p5, v21

    aget-char v4, v20, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 472
    aget-char v3, v20, v17

    invoke-static {v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_1c1

    .line 478
    .end local v5    # "extDstRow":I
    .end local v11    # "cHigh":C
    .end local v14    # "columns":I
    .end local v17    # "i":I
    .end local v20    # "tmp":[C
    .end local v21    # "x":I
    :cond_1f2
    aget-object v3, v13, v19

    if-nez v3, :cond_217

    aget-object v3, v13, v16

    if-eqz v3, :cond_217

    .line 479
    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v15

    .line 480
    .restart local v15    # "defaultColor":B
    move/from16 v21, p5

    .restart local v21    # "x":I
    :goto_20a
    add-int v3, p5, p3

    move/from16 v0, v21

    if-ge v0, v3, :cond_177

    .line 481
    aget-object v3, v13, v16

    aput-byte v15, v3, v21

    .line 480
    add-int/lit8 v21, v21, 0x1

    goto :goto_20a

    .line 484
    .end local v15    # "defaultColor":B
    .end local v21    # "x":I
    :cond_217
    aget-object v3, v13, v19

    if-eqz v3, :cond_22a

    aget-object v3, v13, v16

    if-nez v3, :cond_22a

    .line 485
    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 487
    :cond_22a
    aget-object v3, v13, v19

    aget-object v4, v13, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_177
.end method

.method public blockSet(IIIIIII)V
    .registers 16
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "val"    # I
    .param p6, "foreColor"    # I
    .param p7, "backColor"    # I

    .prologue
    .line 506
    if-ltz p1, :cond_10

    add-int v0, p1, p3

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v0, v1, :cond_10

    if-ltz p2, :cond_10

    add-int v0, p2, p4

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v0, v1, :cond_6a

    .line 507
    :cond_10
    const-string v0, "UnicodeTranscript"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal arguments! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 511
    :cond_6a
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_6b
    if-lt v7, p4, :cond_6e

    .line 516
    return-void

    .line 512
    :cond_6e
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_6f
    if-lt v6, p3, :cond_74

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 513
    :cond_74
    add-int v1, p1, v6

    add-int v2, p2, v7

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(IIIII)Z

    .line 512
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f
.end method

.method public getActiveRows()I
    .registers 3

    .prologue
    .line 103
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    return v0
.end method

.method public getBackColor(II)I
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 714
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 715
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 717
    :cond_11
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 719
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 720
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 722
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    and-int/lit8 v0, v0, 0xf

    goto :goto_1d
.end method

.method public getChar(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getChar(III)Z

    move-result v0

    return v0
.end method

.method public getChar(III)Z
    .registers 10
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "charIndex"    # I

    .prologue
    .line 670
    const/4 v0, 0x1

    new-array v4, v0, [C

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getChar(III[CI)Z

    move-result v0

    return v0
.end method

.method public getChar(III[CI)Z
    .registers 8
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "charIndex"    # I
    .param p4, "out"    # [C
    .param p5, "offset"    # I

    .prologue
    .line 684
    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_b

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_11

    .line 685
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 687
    :cond_11
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 689
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v1, p1

    instance-of v1, v1, [C

    if-eqz v1, :cond_29

    .line 691
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v0, v1, p1

    check-cast v0, [C

    .line 692
    .local v0, "line":[C
    aget-char v1, v0, p2

    aput-char v1, p4, p5

    .line 693
    const/4 v1, 0x0

    .line 697
    .end local v0    # "line":[C
    :goto_28
    return v1

    .line 696
    :cond_29
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v0, v1, p1

    check-cast v0, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    .line 697
    .local v0, "line":Lhecticman/jsterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v0, p2, p3, p4, p5}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->getChar(II[CI)Z

    move-result v1

    goto :goto_28
.end method

.method public getDefaultBackColor()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    return v0
.end method

.method public getDefaultColorsEncoded()B
    .registers 3

    .prologue
    .line 95
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v0

    return v0
.end method

.method public getDefaultForeColor()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    return v0
.end method

.method public getForeColor(II)I
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 701
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 702
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 704
    :cond_11
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 706
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 707
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 709
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    goto :goto_1d
.end method

.method public getLine(I)[C
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 640
    const/4 v0, 0x0

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {p0, p1, v0, v1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v0

    return-object v0
.end method

.method public getLine(III)[C
    .registers 11
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    const/4 v6, 0x0

    .line 594
    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v4, v4

    if-lt p1, v4, :cond_c

    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_12

    .line 595
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 598
    :cond_12
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 599
    .local v0, "columns":I
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 600
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    if-nez v4, :cond_20

    .line 602
    const/4 v4, 0x0

    .line 636
    :goto_1f
    return-object v4

    .line 604
    :cond_20
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    instance-of v4, v4, [C

    if-eqz v4, :cond_56

    .line 606
    if-nez p2, :cond_33

    if-ne p3, v0, :cond_33

    .line 608
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    check-cast v4, [C

    goto :goto_1f

    .line 610
    :cond_33
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v4, v4

    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_44

    .line 611
    :cond_3e
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [C

    iput-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 613
    :cond_44
    sub-int v1, p3, p2

    .line 614
    .local v1, "length":I
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v4, p2, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v6, v4, v1

    .line 616
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto :goto_1f

    .line 621
    .end local v1    # "length":I
    :cond_56
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v4, p1

    check-cast v2, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    .line 622
    .local v2, "line":Lhecticman/jsterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v3

    .line 623
    .local v3, "rawLine":[C
    invoke-virtual {v2, p2}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p2

    .line 624
    if-ge p3, v0, :cond_89

    .line 625
    invoke-virtual {v2, p3}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p3

    .line 629
    :goto_6a
    sub-int v1, p3, p2

    .line 631
    .restart local v1    # "length":I
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v4, :cond_77

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v4, v4

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v5, :cond_7d

    .line 632
    :cond_77
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [C

    iput-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 634
    :cond_7d
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v3, p2, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v6, v4, v1

    .line 636
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto :goto_1f

    .line 627
    .end local v1    # "length":I
    :cond_89
    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result p3

    goto :goto_6a
.end method

.method public getLineColor(I)[B
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 662
    const/4 v0, 0x0

    iget v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {p0, p1, v0, v1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineColor(III)[B

    move-result-object v0

    return-object v0
.end method

.method public getLineColor(III)[B
    .registers 8
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 644
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 645
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 648
    :cond_11
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 649
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-eqz v0, :cond_35

    .line 650
    if-nez p2, :cond_26

    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-ne p3, v0, :cond_26

    .line 651
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    .line 657
    :goto_25
    return-object v0

    .line 654
    :cond_26
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    const/4 v2, 0x0

    sub-int v3, p3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    goto :goto_25

    .line 657
    :cond_35
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getLineWrap(I)Z
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public resize(II[I)Z
    .registers 21
    .param p1, "newColumns"    # I
    .param p2, "newRows"    # I
    .param p3, "cursor"    # [I

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v0, p2

    if-le v0, v15, :cond_12

    .line 161
    :cond_10
    const/4 v15, 0x0

    .line 248
    :goto_11
    return v15

    .line 164
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 165
    .local v12, "screenRows":I
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 166
    .local v2, "activeTranscriptRows":I
    sub-int v13, v12, p2

    .line 167
    .local v13, "shift":I
    neg-int v15, v2

    if-ge v13, v15, :cond_85

    .line 169
    move-object/from16 v0, p0

    iget-object v10, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 170
    .local v10, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 171
    .local v3, "color":[[B
    move-object/from16 v0, p0

    iget-object v9, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 172
    .local v9, "lineWrap":[Z
    move-object/from16 v0, p0

    iget v11, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 173
    .local v11, "screenFirstRow":I
    move-object/from16 v0, p0

    iget v14, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 174
    .local v14, "totalRows":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    sub-int v15, v2, v13

    if-lt v4, v15, :cond_74

    .line 180
    neg-int v13, v2

    .line 232
    .end local v3    # "color":[[B
    .end local v4    # "i":I
    .end local v9    # "lineWrap":[Z
    .end local v10    # "lines":[Ljava/lang/Object;
    .end local v11    # "screenFirstRow":I
    .end local v14    # "totalRows":I
    :cond_39
    :goto_39
    if-gtz v13, :cond_48

    if-gez v13, :cond_dc

    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    neg-int v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_dc

    .line 234
    :cond_48
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 240
    :cond_59
    :goto_59
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    if-gez v15, :cond_f1

    .line 241
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 245
    :goto_65
    const/4 v15, 0x1

    aget v16, p3, v15

    sub-int v16, v16, v13

    aput v16, p3, v15

    .line 246
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 248
    const/4 v15, 0x1

    goto :goto_11

    .line 175
    .restart local v3    # "color":[[B
    .restart local v4    # "i":I
    .restart local v9    # "lineWrap":[Z
    .restart local v10    # "lines":[Ljava/lang/Object;
    .restart local v11    # "screenFirstRow":I
    .restart local v14    # "totalRows":I
    :cond_74
    add-int v15, v11, v12

    add-int/2addr v15, v4

    rem-int v5, v15, v14

    .line 176
    .local v5, "index":I
    const/4 v15, 0x0

    aput-object v15, v10, v5

    .line 177
    const/4 v15, 0x0

    aput-object v15, v3, v5

    .line 178
    const/4 v15, 0x0

    aput-boolean v15, v9, v5

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 181
    .end local v3    # "color":[[B
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v9    # "lineWrap":[Z
    .end local v10    # "lines":[Ljava/lang/Object;
    .end local v11    # "screenFirstRow":I
    .end local v14    # "totalRows":I
    :cond_85
    if-lez v13, :cond_39

    const/4 v15, 0x1

    aget v15, p3, v15

    add-int/lit8 v16, v12, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_39

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 185
    .restart local v10    # "lines":[Ljava/lang/Object;
    add-int/lit8 v4, v12, -0x1

    .restart local v4    # "i":I
    :goto_96
    const/4 v15, 0x1

    aget v15, p3, v15

    if-le v4, v15, :cond_39

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v5

    .line 187
    .restart local v5    # "index":I
    aget-object v15, v10, v5

    if-nez v15, :cond_ac

    .line 189
    add-int/lit8 v13, v13, -0x1

    .line 190
    if-eqz v13, :cond_39

    .line 185
    :cond_a9
    add-int/lit8 v4, v4, -0x1

    goto :goto_96

    .line 198
    :cond_ac
    aget-object v15, v10, v5

    instance-of v15, v15, [C

    if-eqz v15, :cond_c2

    .line 199
    aget-object v8, v10, v5

    check-cast v8, [C

    .line 204
    .local v8, "line":[C
    :goto_b6
    array-length v7, v8

    .line 206
    .local v7, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b8
    if-lt v6, v7, :cond_cb

    .line 217
    :cond_ba
    :goto_ba
    if-ne v6, v7, :cond_39

    .line 219
    add-int/lit8 v13, v13, -0x1

    .line 220
    if-nez v13, :cond_a9

    goto/16 :goto_39

    .line 201
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[C
    :cond_c2
    aget-object v15, v10, v5

    check-cast v15, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    invoke-virtual {v15}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v8

    .restart local v8    # "line":[C
    goto :goto_b6

    .line 207
    .restart local v6    # "j":I
    .restart local v7    # "len":I
    :cond_cb
    aget-char v15, v8, v6

    if-nez v15, :cond_d1

    .line 209
    move v6, v7

    .line 210
    goto :goto_ba

    .line 211
    :cond_d1
    aget-char v15, v8, v6

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_ba

    .line 206
    add-int/lit8 v6, v6, 0x1

    goto :goto_b8

    .line 235
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[C
    .end local v10    # "lines":[Ljava/lang/Object;
    :cond_dc
    if-gez v13, :cond_59

    .line 237
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    goto/16 :goto_59

    .line 243
    :cond_f1
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    goto/16 :goto_65
.end method

.method public scroll(II)V
    .registers 20
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 304
    add-int/lit8 v15, p2, -0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_c

    .line 305
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 308
    :cond_c
    if-gez p1, :cond_14

    .line 309
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 312
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    move/from16 v0, p2

    if-le v0, v15, :cond_22

    .line 313
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 316
    :cond_22
    move-object/from16 v0, p0

    iget v8, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 317
    .local v8, "screenRows":I
    move-object/from16 v0, p0

    iget v14, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 319
    .local v14, "totalRows":I
    if-nez p1, :cond_70

    move/from16 v0, p2

    if-ne v0, v8, :cond_70

    .line 321
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/lit8 v15, v15, 0x1

    rem-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 322
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v16, v14, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_4f

    .line 323
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 327
    :cond_4f
    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 328
    .local v2, "blankRow":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v16, v15, v2

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/16 v16, 0x0

    aput-object v16, v15, v2

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v2

    .line 367
    :goto_6f
    return-void

    .line 335
    .end local v2    # "blankRow":I
    :cond_70
    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 336
    .local v7, "screenFirstRow":I
    sub-int v10, p2, p1

    .line 337
    .local v10, "scrollLen":I
    invoke-direct/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v13

    .line 338
    .local v13, "topMarginInt":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v3

    .line 343
    .local v3, "bottomMarginInt":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 344
    .local v6, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 345
    .local v4, "color":[[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 346
    .local v5, "lineWrap":[Z
    aget-object v11, v6, v13

    .line 347
    .local v11, "scrollLine":Ljava/lang/Object;
    aget-object v9, v4, v13

    .line 348
    .local v9, "scrollColor":[B
    aget-boolean v12, v5, v13

    .line 349
    .local v12, "scrollLineWrap":Z
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 350
    sub-int v15, v8, p2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v15, v1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 351
    aput-object v11, v6, v7

    .line 352
    aput-object v9, v4, v7

    .line 353
    aput-boolean v12, v5, v7

    .line 356
    add-int/lit8 v15, v7, 0x1

    rem-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 357
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v16, v14, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_c8

    .line 358
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 362
    :cond_c8
    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 363
    .restart local v2    # "blankRow":I
    const/4 v15, 0x0

    aput-object v15, v6, v2

    .line 364
    const/4 v15, 0x0

    aput-object v15, v4, v2

    .line 365
    const/4 v15, 0x0

    aput-boolean v15, v5, v2

    goto :goto_6f
.end method

.method public setChar(III)Z
    .registers 9
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "codePoint"    # I

    .prologue
    const/4 v4, 0x1

    .line 799
    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-ge p2, v2, :cond_9

    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-lt p1, v2, :cond_45

    .line 800
    :cond_9
    const-string v2, "UnicodeTranscript"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "illegal arguments! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 803
    :cond_45
    invoke-direct {p0, p2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 809
    const/4 v0, -0x1

    .line 812
    .local v0, "basicMode":I
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    if-nez v2, :cond_5c

    .line 813
    invoke-direct {p0, p3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 814
    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->allocateBasicLine(II)[C

    .line 815
    const/4 v0, 0x1

    .line 822
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    instance-of v2, v2, [C

    if-eqz v2, :cond_8c

    .line 823
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v2, p2

    check-cast v1, [C

    .line 825
    .local v1, "line":[C
    const/4 v2, -0x1

    if-ne v0, v2, :cond_74

    .line 826
    invoke-direct {p0, p3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 827
    const/4 v0, 0x1

    .line 833
    :cond_74
    :goto_74
    if-ne v0, v4, :cond_83

    .line 835
    int-to-char v2, p3

    aput-char v2, v1, p1

    .line 845
    .end local v1    # "line":[C
    :goto_79
    return v4

    .line 817
    :cond_7a
    iget v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->allocateFullLine(II)Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    .line 818
    const/4 v0, 0x0

    goto :goto_5c

    .line 829
    .restart local v1    # "line":[C
    :cond_81
    const/4 v0, 0x0

    goto :goto_74

    .line 840
    :cond_83
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    new-instance v3, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    invoke-direct {v3, v1}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;-><init>([C)V

    aput-object v3, v2, p2

    .line 843
    .end local v1    # "line":[C
    :cond_8c
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v2, p2

    check-cast v1, Lhecticman/jsterm/emulatorview/FullUnicodeLine;

    .line 844
    .local v1, "line":Lhecticman/jsterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v1, p1, p3}, Lhecticman/jsterm/emulatorview/FullUnicodeLine;->setChar(II)V

    goto :goto_79
.end method

.method public setChar(IIIII)Z
    .registers 8
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "codePoint"    # I
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    .line 785
    invoke-virtual {p0, p1, p2, p3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 786
    const/4 v0, 0x0

    .line 795
    :goto_7
    return v0

    .line 789
    :cond_8
    invoke-direct {p0, p2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 790
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p2

    if-nez v0, :cond_17

    .line 791
    iget v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 793
    :cond_17
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p2

    invoke-direct {p0, p4, p5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v1

    aput-byte v1, v0, p1

    .line 795
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDefaultColors(II)V
    .registers 3
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I

    .prologue
    .line 79
    iput p1, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 80
    iput p2, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 83
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->changeColor()V

    .line 84
    return-void
.end method

.method public setLineWrap(I)V
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 142
    return-void
.end method
