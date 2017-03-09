.class Ljackpal/androidterm/emulatorview/UnicodeTranscript;
.super Ljava/lang/Object;
.source "UnicodeTranscript.java"


# static fields
.field static final HANGUL_CONJOINING_MIN_SDK:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UnicodeTranscript"


# instance fields
.field private mActiveTranscriptRows:I

.field private mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

.field private mColumns:I

.field private mDefaultStyle:I

.field private mLineWrap:[Z

.field private mLines:[Ljava/lang/Object;

.field private mScreenFirstRow:I

.field private mScreenRows:I

.field private mTotalRows:I

.field private tmpColor:Ljackpal/androidterm/emulatorview/StyleRow;

.field private tmpLine:[C


# direct methods
.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "defaultStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 55
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    .line 57
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 63
    iput p1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 64
    iput p2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 65
    iput p3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 66
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 67
    new-array v0, p2, [Ljackpal/androidterm/emulatorview/StyleRow;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    .line 68
    new-array v0, p2, [Z

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 69
    new-instance v0, Ljackpal/androidterm/emulatorview/StyleRow;

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {v0, p4, v1}, Ljackpal/androidterm/emulatorview/StyleRow;-><init>(II)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpColor:Ljackpal/androidterm/emulatorview/StyleRow;

    .line 71
    iput p4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    .line 72
    return-void
.end method

.method private allocateBasicLine(II)[C
    .registers 8
    .param p1, "row"    # I
    .param p2, "columns"    # I

    .prologue
    .line 779
    new-array v1, p2, [C

    .line 782
    .local v1, "line":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_c

    .line 783
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 786
    :cond_c
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 787
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    aget-object v2, v2, p1

    if-nez v2, :cond_20

    .line 788
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    new-instance v3, Ljackpal/androidterm/emulatorview/StyleRow;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Ljackpal/androidterm/emulatorview/StyleRow;-><init>(II)V

    aput-object v3, v2, p1

    .line 790
    :cond_20
    return-object v1
.end method

.method private allocateFullLine(II)Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    .registers 7
    .param p1, "row"    # I
    .param p2, "columns"    # I

    .prologue
    .line 794
    new-instance v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-direct {v0, p2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;-><init>(I)V

    .line 796
    .local v0, "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 797
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    aget-object v1, v1, p1

    if-nez v1, :cond_19

    .line 798
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    new-instance v2, Ljackpal/androidterm/emulatorview/StyleRow;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2}, Ljackpal/androidterm/emulatorview/StyleRow;-><init>(II)V

    aput-object v2, v1, p1

    .line 800
    :cond_19
    return-object v0
.end method

.method private blockCopyLines(III)V
    .registers 11
    .param p1, "src"    # I
    .param p2, "len"    # I
    .param p3, "shift"    # I

    .prologue
    .line 249
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 252
    .local v2, "totalRows":I
    add-int v3, p1, p3

    if-ltz v3, :cond_28

    .line 253
    add-int v3, p1, p3

    rem-int v0, v3, v2

    .line 258
    .local v0, "dst":I
    :goto_a
    add-int v3, p1, p2

    if-gt v3, v2, :cond_2d

    add-int v3, v0, p2

    if-gt v3, v2, :cond_2d

    .line 260
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    :cond_27
    return-void

    .line 255
    .end local v0    # "dst":I
    :cond_28
    add-int v3, v2, p1

    add-int v0, v3, p3

    .restart local v0    # "dst":I
    goto :goto_a

    .line 266
    :cond_2d
    if-gez p3, :cond_5f

    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, p2, :cond_27

    .line 269
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 270
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 271
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 275
    .end local v1    # "i":I
    :cond_5f
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_61
    if-ltz v1, :cond_27

    .line 276
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 277
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 278
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 275
    add-int/lit8 v1, v1, -0x1

    goto :goto_61
.end method

.method public static charWidth(CC)I
    .registers 3
    .param p0, "cHigh"    # C
    .param p1, "cLow"    # C

    .prologue
    .line 574
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v0

    return v0
.end method

.method public static charWidth(I)I
    .registers 5
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 515
    const/16 v3, 0x1f

    if-le p0, v3, :cond_c

    const/16 v3, 0x7f

    if-ge p0, v3, :cond_c

    .line 570
    :cond_b
    :goto_b
    return v0

    .line 521
    :cond_c
    const/16 v3, 0x1b

    if-eq p0, v3, :cond_b

    .line 525
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_50

    .line 533
    const/16 v3, 0x1160

    if-lt p0, v3, :cond_1f

    const/16 v3, 0x11ff

    if-le p0, v3, :cond_29

    :cond_1f
    const v3, 0xd7b0

    if-lt p0, v3, :cond_35

    const v3, 0xd7ff

    if-gt p0, v3, :cond_35

    .line 535
    :cond_29
    sget v0, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_33

    move v0, v1

    .line 544
    goto :goto_b

    :sswitch_31
    move v0, v1

    .line 530
    goto :goto_b

    :cond_33
    move v0, v2

    .line 551
    goto :goto_b

    .line 554
    :cond_35
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    if-ne v1, v0, :cond_46

    .line 556
    int-to-char v1, p0

    invoke-static {v1}, Ljackpal/androidterm/emulatorview/compat/AndroidCharacterCompat;->getEastAsianWidth(C)I

    move-result v1

    packed-switch v1, :pswitch_data_62

    :pswitch_43
    goto :goto_b

    :pswitch_44
    move v0, v2

    .line 559
    goto :goto_b

    .line 563
    :cond_46
    shr-int/lit8 v1, p0, 0x10

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_6c

    goto :goto_b

    :pswitch_4e
    move v0, v2

    .line 566
    goto :goto_b

    .line 525
    :sswitch_data_50
    .sparse-switch
        0x6 -> :sswitch_31
        0x7 -> :sswitch_31
        0xf -> :sswitch_31
        0x10 -> :sswitch_31
    .end sparse-switch

    .line 556
    :pswitch_data_62
    .packed-switch 0x3
        :pswitch_44
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 563
    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_4e
    .end packed-switch
.end method

.method public static charWidth([CI)I
    .registers 4
    .param p0, "chars"    # [C
    .param p1, "index"    # I

    .prologue
    .line 586
    aget-char v0, p0, p1

    .line 587
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 588
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(CC)I

    move-result v1

    .line 590
    :goto_10
    return v1

    :cond_11
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v1

    goto :goto_10
.end method

.method private externalToInternalRow(I)I
    .registers 5
    .param p1, "extRow"    # I

    .prologue
    .line 106
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_9

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le p1, v1, :cond_3f

    .line 107
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "externalToInternalRow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "UnicodeTranscript"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3f
    if-ltz p1, :cond_48

    .line 114
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    rem-int/2addr v1, v2

    .line 119
    :goto_47
    return v1

    .line 116
    :cond_48
    neg-int v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    if-le v1, v2, :cond_54

    .line 117
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_47

    .line 119
    :cond_54
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    goto :goto_47
.end method

.method private getLine(IIIZ)[C
    .registers 14
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "strictBounds"    # Z

    .prologue
    const/4 v8, 0x0

    .line 620
    iget v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v6, v6

    if-lt p1, v6, :cond_c

    iget v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v6, v6, -0x1

    if-le p1, v6, :cond_12

    .line 621
    :cond_c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 624
    :cond_12
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 625
    .local v0, "columns":I
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 626
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v6, v6, p1

    if-nez v6, :cond_20

    .line 628
    const/4 v6, 0x0

    .line 681
    :goto_1f
    return-object v6

    .line 630
    :cond_20
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v6, v6, p1

    instance-of v6, v6, [C

    if-eqz v6, :cond_58

    .line 632
    if-nez p2, :cond_35

    if-ne p3, v0, :cond_35

    .line 634
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v6, v6, p1

    check-cast v6, [C

    check-cast v6, [C

    goto :goto_1f

    .line 636
    :cond_35
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v6, :cond_40

    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v6, v6

    add-int/lit8 v7, v0, 0x1

    if-ge v6, v7, :cond_46

    .line 637
    :cond_40
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [C

    iput-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 639
    :cond_46
    sub-int v2, p3, p2

    .line 640
    .local v2, "length":I
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v6, v6, p1

    iget-object v7, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v6, p2, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v8, v6, v2

    .line 642
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto :goto_1f

    .line 647
    .end local v2    # "length":I
    :cond_58
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v3, v6, p1

    check-cast v3, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 648
    .local v3, "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v4

    .line 650
    .local v4, "rawLine":[C
    if-nez p2, :cond_71

    if-ne p3, v0, :cond_71

    .line 653
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result v5

    .line 654
    .local v5, "spaceUsed":I
    array-length v6, v4

    if-ge v5, v6, :cond_6f

    .line 655
    aput-char v8, v4, v5

    :cond_6f
    move-object v6, v4

    .line 657
    goto :goto_1f

    .line 660
    .end local v5    # "spaceUsed":I
    :cond_71
    invoke-virtual {v3, p2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p2

    .line 661
    if-ge p3, v0, :cond_b2

    .line 662
    move v1, p3

    .line 663
    .local v1, "endCol":I
    invoke-virtual {v3, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p3

    .line 664
    if-nez p4, :cond_92

    if-lez v1, :cond_92

    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_92

    .line 667
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v6

    if-ne p3, v6, :cond_92

    .line 668
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p3

    .line 674
    .end local v1    # "endCol":I
    :cond_92
    :goto_92
    sub-int v2, p3, p2

    .line 676
    .restart local v2    # "length":I
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v6, :cond_9f

    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v6, v6

    add-int/lit8 v7, v2, 0x1

    if-ge v6, v7, :cond_a5

    .line 677
    :cond_9f
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [C

    iput-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 679
    :cond_a5
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v4, p2, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v8, v6, v2

    .line 681
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto/16 :goto_1f

    .line 672
    .end local v2    # "length":I
    :cond_b2
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result p3

    goto :goto_92
.end method

.method private getLineColor(IIIZ)Ljackpal/androidterm/emulatorview/StyleRow;
    .registers 11
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "strictBounds"    # Z

    .prologue
    .line 698
    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v4, v4

    if-lt p1, v4, :cond_b

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_11

    .line 699
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 702
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 703
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    aget-object v0, v4, p1

    .line 704
    .local v0, "color":Ljackpal/androidterm/emulatorview/StyleRow;
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpColor:Ljackpal/androidterm/emulatorview/StyleRow;

    .line 705
    .local v3, "tmp":Ljackpal/androidterm/emulatorview/StyleRow;
    if-eqz v0, :cond_64

    .line 706
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 707
    .local v1, "columns":I
    if-nez p4, :cond_57

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    if-eqz v4, :cond_57

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    instance-of v4, v4, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    if-eqz v4, :cond_57

    .line 709
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v4, p1

    check-cast v2, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 713
    .local v2, "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    if-lez p2, :cond_45

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v2, v4}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v4

    invoke-virtual {v2, p2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v5

    if-ne v4, v5, :cond_45

    .line 714
    add-int/lit8 p2, p2, -0x1

    .line 716
    :cond_45
    add-int/lit8 v4, v1, -0x1

    if-ge p3, v4, :cond_57

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v2, v4}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v4

    invoke-virtual {v2, p3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v5

    if-ne v4, v5, :cond_57

    .line 717
    add-int/lit8 p3, p3, 0x1

    .line 720
    .end local v2    # "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    :cond_57
    if-nez p2, :cond_5c

    if-ne p3, v1, :cond_5c

    .line 726
    .end local v0    # "color":Ljackpal/androidterm/emulatorview/StyleRow;
    .end local v1    # "columns":I
    :goto_5b
    return-object v0

    .line 723
    .restart local v0    # "color":Ljackpal/androidterm/emulatorview/StyleRow;
    .restart local v1    # "columns":I
    :cond_5c
    const/4 v4, 0x0

    sub-int v5, p3, p2

    invoke-virtual {v0, p2, v3, v4, v5}, Ljackpal/androidterm/emulatorview/StyleRow;->copy(ILjackpal/androidterm/emulatorview/StyleRow;II)V

    move-object v0, v3

    .line 724
    goto :goto_5b

    .line 726
    .end local v1    # "columns":I
    :cond_64
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private isBasicChar(I)Z
    .registers 4
    .param p1, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    .line 775
    invoke-static {p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public blockCopy(IIIIII)V
    .registers 29
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 373
    if-ltz p1, :cond_28

    add-int v3, p1, p3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p2, :cond_28

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-gt v3, v4, :cond_28

    if-ltz p5, :cond_28

    add-int v3, p5, p3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p6, :cond_28

    add-int v3, p6, p4

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v3, v4, :cond_2e

    .line 376
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 378
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 379
    .local v16, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    .line 380
    .local v12, "color":[Ljackpal/androidterm/emulatorview/StyleRow;
    move/from16 v0, p2

    move/from16 v1, p6

    if-le v0, v1, :cond_f1

    .line 382
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_40
    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_1a8

    .line 383
    add-int v3, p2, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v17

    .line 384
    .local v17, "srcRow":I
    add-int v3, p6, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v14

    .line 385
    .local v14, "dstRow":I
    aget-object v3, v16, v17

    instance-of v3, v3, [C

    if-eqz v3, :cond_7f

    aget-object v3, v16, v14

    instance-of v3, v3, [C

    if-eqz v3, :cond_7f

    .line 386
    aget-object v3, v16, v17

    aget-object v4, v16, v14

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    :cond_6f
    aget-object v3, v12, v17

    aget-object v4, v12, v14

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-virtual {v3, v0, v4, v1, v2}, Ljackpal/androidterm/emulatorview/StyleRow;->copy(ILjackpal/androidterm/emulatorview/StyleRow;II)V

    .line 382
    :goto_7c
    add-int/lit8 v20, v20, 0x1

    goto :goto_40

    .line 389
    :cond_7f
    add-int v5, p6, v20

    .line 390
    .local v5, "extDstRow":I
    add-int v3, p2, v20

    add-int v4, p1, p3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v4, v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(IIIZ)[C

    move-result-object v18

    .line 391
    .local v18, "tmp":[C
    if-nez v18, :cond_a1

    .line 393
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIII)V

    goto :goto_7c

    .line 396
    :cond_a1
    const/4 v10, 0x0

    .line 397
    .local v10, "cHigh":C
    const/16 v19, 0x0

    .line 398
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 399
    .local v13, "columns":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a9
    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v15, v3, :cond_6f

    .line 400
    aget-char v3, v18, v15

    if-eqz v3, :cond_6f

    add-int v3, p5, v19

    if-ge v3, v13, :cond_6f

    .line 403
    aget-char v3, v18, v15

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 404
    aget-char v10, v18, v15

    .line 399
    :goto_c0
    add-int/lit8 v15, v15, 0x1

    goto :goto_a9

    .line 406
    :cond_c3
    aget-char v3, v18, v15

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 407
    aget-char v3, v18, v15

    invoke-static {v10, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v11

    .line 408
    .local v11, "codePoint":I
    add-int v3, p5, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v11}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 409
    invoke-static {v11}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v19, v19, v3

    .line 410
    goto :goto_c0

    .line 411
    .end local v11    # "codePoint":I
    :cond_df
    add-int v3, p5, v19

    aget-char v4, v18, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 412
    aget-char v3, v18, v15

    invoke-static {v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v19, v19, v3

    goto :goto_c0

    .line 420
    .end local v5    # "extDstRow":I
    .end local v10    # "cHigh":C
    .end local v13    # "columns":I
    .end local v14    # "dstRow":I
    .end local v15    # "i":I
    .end local v17    # "srcRow":I
    .end local v18    # "tmp":[C
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_f1
    const/16 v20, 0x0

    .restart local v20    # "y":I
    :goto_f3
    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_1a8

    .line 421
    add-int/lit8 v3, v20, 0x1

    sub-int v21, p4, v3

    .line 422
    .local v21, "y2":I
    add-int v3, p2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v17

    .line 423
    .restart local v17    # "srcRow":I
    add-int v3, p6, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v14

    .line 424
    .restart local v14    # "dstRow":I
    aget-object v3, v16, v17

    instance-of v3, v3, [C

    if-eqz v3, :cond_136

    aget-object v3, v16, v14

    instance-of v3, v3, [C

    if-eqz v3, :cond_136

    .line 425
    aget-object v3, v16, v17

    aget-object v4, v16, v14

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    :cond_126
    aget-object v3, v12, v17

    aget-object v4, v12, v14

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-virtual {v3, v0, v4, v1, v2}, Ljackpal/androidterm/emulatorview/StyleRow;->copy(ILjackpal/androidterm/emulatorview/StyleRow;II)V

    .line 420
    :goto_133
    add-int/lit8 v20, v20, 0x1

    goto :goto_f3

    .line 427
    :cond_136
    add-int v5, p6, v21

    .line 428
    .restart local v5    # "extDstRow":I
    add-int v3, p2, v21

    add-int v4, p1, p3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v4, v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(IIIZ)[C

    move-result-object v18

    .line 429
    .restart local v18    # "tmp":[C
    if-nez v18, :cond_158

    .line 431
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIII)V

    goto :goto_133

    .line 434
    :cond_158
    const/4 v10, 0x0

    .line 435
    .restart local v10    # "cHigh":C
    const/16 v19, 0x0

    .line 436
    .restart local v19    # "x":I
    move-object/from16 v0, p0

    iget v13, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 437
    .restart local v13    # "columns":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_160
    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v15, v3, :cond_126

    .line 438
    aget-char v3, v18, v15

    if-eqz v3, :cond_126

    add-int v3, p5, v19

    if-ge v3, v13, :cond_126

    .line 441
    aget-char v3, v18, v15

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 442
    aget-char v10, v18, v15

    .line 437
    :goto_177
    add-int/lit8 v15, v15, 0x1

    goto :goto_160

    .line 444
    :cond_17a
    aget-char v3, v18, v15

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 445
    aget-char v3, v18, v15

    invoke-static {v10, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v11

    .line 446
    .restart local v11    # "codePoint":I
    add-int v3, p5, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v11}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 447
    invoke-static {v11}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v19, v19, v3

    .line 448
    goto :goto_177

    .line 449
    .end local v11    # "codePoint":I
    :cond_196
    add-int v3, p5, v19

    aget-char v4, v18, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 450
    aget-char v3, v18, v15

    invoke-static {v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v19, v19, v3

    goto :goto_177

    .line 457
    .end local v5    # "extDstRow":I
    .end local v10    # "cHigh":C
    .end local v13    # "columns":I
    .end local v14    # "dstRow":I
    .end local v15    # "i":I
    .end local v17    # "srcRow":I
    .end local v18    # "tmp":[C
    .end local v19    # "x":I
    .end local v21    # "y2":I
    :cond_1a8
    return-void
.end method

.method public blockSet(IIIIII)V
    .registers 12
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "val"    # I
    .param p6, "style"    # I

    .prologue
    .line 472
    if-ltz p1, :cond_10

    add-int v2, p1, p3

    iget v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v2, v3, :cond_10

    if-ltz p2, :cond_10

    add-int v2, p2, p4

    iget v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v2, v3, :cond_6e

    .line 473
    :cond_10
    const-string v2, "UnicodeTranscript"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal arguments! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 477
    :cond_6e
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_6f
    if-ge v1, p4, :cond_81

    .line 478
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_72
    if-ge v0, p3, :cond_7e

    .line 479
    add-int v2, p1, v0

    add-int v3, p2, v1

    invoke-virtual {p0, v2, v3, p5, p6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(IIII)Z

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 477
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 482
    .end local v0    # "x":I
    :cond_81
    return-void
.end method

.method public getActiveRows()I
    .registers 3

    .prologue
    .line 87
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    return v0
.end method

.method public getChar(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getChar(III)Z

    move-result v0

    return v0
.end method

.method public getChar(III)Z
    .registers 10
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "charIndex"    # I

    .prologue
    .line 743
    const/4 v0, 0x1

    new-array v4, v0, [C

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getChar(III[CI)Z

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
    .line 758
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_b

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_11

    .line 759
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 761
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 763
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v1, p1

    instance-of v1, v1, [C

    if-eqz v1, :cond_2c

    .line 765
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, [C

    move-object v0, v1

    check-cast v0, [C

    .line 766
    .local v0, "line":[C
    aget-char v1, v0, p2

    aput-char v1, p4, p5

    .line 767
    const/4 v1, 0x0

    .line 771
    .end local v0    # "line":[C
    :goto_2b
    return v1

    .line 770
    :cond_2c
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v0, v1, p1

    check-cast v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 771
    .local v0, "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v0, p2, p3, p4, p5}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getChar(II[CI)Z

    move-result v1

    goto :goto_2b
.end method

.method public getDefaultStyle()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    return v0
.end method

.method public getLine(I)[C
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 616
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(IIIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public getLine(III)[C
    .registers 5
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(IIIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public getLineColor(I)Ljackpal/androidterm/emulatorview/StyleRow;
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 694
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineColor(IIIZ)Ljackpal/androidterm/emulatorview/StyleRow;

    move-result-object v0

    return-object v0
.end method

.method public getLineColor(III)Ljackpal/androidterm/emulatorview/StyleRow;
    .registers 5
    .param p1, "row"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineColor(IIIZ)Ljackpal/androidterm/emulatorview/StyleRow;

    move-result-object v0

    return-object v0
.end method

.method public getLineWrap(I)Z
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 129
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method isBasicLine(I)Z
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 731
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 732
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 735
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    instance-of v0, v0, [C

    return v0
.end method

.method public resize(II[I)Z
    .registers 21
    .param p1, "newColumns"    # I
    .param p2, "newRows"    # I
    .param p3, "cursor"    # [I

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v0, p2

    if-le v0, v15, :cond_12

    .line 148
    :cond_10
    const/4 v15, 0x0

    .line 237
    :goto_11
    return v15

    .line 151
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 152
    .local v12, "screenRows":I
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 153
    .local v2, "activeTranscriptRows":I
    sub-int v13, v12, p2

    .line 154
    .local v13, "shift":I
    neg-int v15, v2

    if-ge v13, v15, :cond_87

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 157
    .local v10, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    .line 158
    .local v3, "color":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 159
    .local v9, "lineWrap":[Z
    move-object/from16 v0, p0

    iget v11, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 160
    .local v11, "screenFirstRow":I
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 161
    .local v14, "totalRows":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    sub-int v15, v2, v13

    if-ge v4, v15, :cond_49

    .line 162
    add-int v15, v11, v12

    add-int/2addr v15, v4

    rem-int v5, v15, v14

    .line 163
    .local v5, "index":I
    const/4 v15, 0x0

    aput-object v15, v10, v5

    .line 164
    const/4 v15, 0x0

    aput-object v15, v3, v5

    .line 165
    const/4 v15, 0x0

    aput-boolean v15, v9, v5

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 167
    .end local v5    # "index":I
    :cond_49
    neg-int v13, v2

    .line 219
    .end local v3    # "color":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v9    # "lineWrap":[Z
    .end local v10    # "lines":[Ljava/lang/Object;
    .end local v11    # "screenFirstRow":I
    .end local v14    # "totalRows":I
    :cond_4a
    :goto_4a
    if-gtz v13, :cond_59

    if-gez v13, :cond_e2

    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    neg-int v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_e2

    .line 221
    :cond_59
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 227
    :cond_6a
    :goto_6a
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    if-gez v15, :cond_f7

    .line 228
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 232
    :goto_76
    if-eqz p3, :cond_7f

    .line 233
    const/4 v15, 0x1

    aget v16, p3, v15

    sub-int v16, v16, v13

    aput v16, p3, v15

    .line 235
    :cond_7f
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 237
    const/4 v15, 0x1

    goto :goto_11

    .line 168
    :cond_87
    if-lez v13, :cond_4a

    if-eqz p3, :cond_4a

    const/4 v15, 0x1

    aget v15, p3, v15

    add-int/lit8 v16, v12, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4a

    .line 171
    move-object/from16 v0, p0

    iget-object v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 172
    .restart local v10    # "lines":[Ljava/lang/Object;
    add-int/lit8 v4, v12, -0x1

    .restart local v4    # "i":I
    :goto_9a
    const/4 v15, 0x1

    aget v15, p3, v15

    if-le v4, v15, :cond_4a

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v5

    .line 174
    .restart local v5    # "index":I
    aget-object v15, v10, v5

    if-nez v15, :cond_b0

    .line 176
    add-int/lit8 v13, v13, -0x1

    .line 177
    if-eqz v13, :cond_4a

    .line 172
    :cond_ad
    add-int/lit8 v4, v4, -0x1

    goto :goto_9a

    .line 185
    :cond_b0
    aget-object v15, v10, v5

    instance-of v15, v15, [C

    if-eqz v15, :cond_ce

    .line 186
    aget-object v15, v10, v5

    check-cast v15, [C

    move-object v8, v15

    check-cast v8, [C

    .line 191
    .local v8, "line":[C
    :goto_bd
    array-length v7, v8

    .line 193
    .local v7, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_bf
    if-ge v6, v7, :cond_c6

    .line 194
    aget-char v15, v8, v6

    if-nez v15, :cond_d7

    .line 196
    move v6, v7

    .line 204
    :cond_c6
    if-ne v6, v7, :cond_4a

    .line 206
    add-int/lit8 v13, v13, -0x1

    .line 207
    if-nez v13, :cond_ad

    goto/16 :goto_4a

    .line 188
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[C
    :cond_ce
    aget-object v15, v10, v5

    check-cast v15, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-virtual {v15}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v8

    .restart local v8    # "line":[C
    goto :goto_bd

    .line 198
    .restart local v6    # "j":I
    .restart local v7    # "len":I
    :cond_d7
    aget-char v15, v8, v6

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_c6

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    .line 222
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[C
    .end local v10    # "lines":[Ljava/lang/Object;
    :cond_e2
    if-gez v13, :cond_6a

    .line 224
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    goto/16 :goto_6a

    .line 230
    :cond_f7
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    goto/16 :goto_76
.end method

.method public scroll(III)V
    .registers 21
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "style"    # I

    .prologue
    .line 294
    add-int/lit8 v14, p2, -0x1

    move/from16 v0, p1

    if-le v0, v14, :cond_c

    .line 295
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 298
    :cond_c
    if-gez p1, :cond_14

    .line 299
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 302
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    move/from16 v0, p2

    if-le v0, v14, :cond_22

    .line 303
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 306
    :cond_22
    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 307
    .local v8, "screenRows":I
    move-object/from16 v0, p0

    iget v13, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 309
    .local v13, "totalRows":I
    if-nez p1, :cond_79

    move/from16 v0, p2

    if-ne v0, v8, :cond_79

    .line 311
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/lit8 v14, v14, 0x1

    rem-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 312
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v15, v13, v8

    if-ge v14, v15, :cond_4d

    .line 313
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 317
    :cond_4d
    add-int/lit8 v14, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 318
    .local v2, "blankRow":I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    new-instance v15, Ljackpal/androidterm/emulatorview/StyleRow;

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move/from16 v16, v0

    move/from16 v0, p3

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljackpal/androidterm/emulatorview/StyleRow;-><init>(II)V

    aput-object v15, v14, v2

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    const/4 v15, 0x0

    aput-boolean v15, v14, v2

    .line 356
    :goto_78
    return-void

    .line 325
    .end local v2    # "blankRow":I
    :cond_79
    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 326
    .local v7, "screenFirstRow":I
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v12

    .line 327
    .local v12, "topMarginInt":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v3

    .line 332
    .local v3, "bottomMarginInt":I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 333
    .local v6, "lines":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    .line 334
    .local v4, "color":[Ljackpal/androidterm/emulatorview/StyleRow;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 335
    .local v5, "lineWrap":[Z
    aget-object v10, v6, v12

    .line 336
    .local v10, "scrollLine":Ljava/lang/Object;
    aget-object v9, v4, v12

    .line 337
    .local v9, "scrollColor":Ljackpal/androidterm/emulatorview/StyleRow;
    aget-boolean v11, v5, v12

    .line 338
    .local v11, "scrollLineWrap":Z
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 339
    sub-int v14, v8, p2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v15}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 340
    aput-object v10, v6, v7

    .line 341
    aput-object v9, v4, v7

    .line 342
    aput-boolean v11, v5, v7

    .line 345
    add-int/lit8 v14, v7, 0x1

    rem-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 346
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v15, v13, v8

    if-ge v14, v15, :cond_ca

    .line 347
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 351
    :cond_ca
    add-int/lit8 v14, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 352
    .restart local v2    # "blankRow":I
    const/4 v14, 0x0

    aput-object v14, v6, v2

    .line 353
    new-instance v14, Ljackpal/androidterm/emulatorview/StyleRow;

    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move/from16 v0, p3

    invoke-direct {v14, v0, v15}, Ljackpal/androidterm/emulatorview/StyleRow;-><init>(II)V

    aput-object v14, v4, v2

    .line 354
    const/4 v14, 0x0

    aput-boolean v14, v5, v2

    goto :goto_78
.end method

.method public setChar(III)Z
    .registers 9
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "codePoint"    # I

    .prologue
    const/4 v4, 0x1

    .line 815
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-ge p2, v2, :cond_9

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-lt p1, v2, :cond_49

    .line 816
    :cond_9
    const-string v2, "UnicodeTranscript"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal arguments! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 819
    :cond_49
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 825
    const/4 v0, -0x1

    .line 828
    .local v0, "basicMode":I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    if-nez v2, :cond_60

    .line 829
    invoke-direct {p0, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 830
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateBasicLine(II)[C

    .line 831
    const/4 v0, 0x1

    .line 838
    :cond_60
    :goto_60
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    instance-of v2, v2, [C

    if-eqz v2, :cond_93

    .line 839
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    check-cast v2, [C

    move-object v1, v2

    check-cast v1, [C

    .line 841
    .local v1, "line":[C
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7b

    .line 842
    invoke-direct {p0, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 843
    const/4 v0, 0x1

    .line 849
    :cond_7b
    :goto_7b
    if-ne v0, v4, :cond_8a

    .line 851
    int-to-char v2, p3

    aput-char v2, v1, p1

    .line 861
    .end local v1    # "line":[C
    :goto_80
    return v4

    .line 833
    :cond_81
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateFullLine(II)Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 834
    const/4 v0, 0x0

    goto :goto_60

    .line 845
    .restart local v1    # "line":[C
    :cond_88
    const/4 v0, 0x0

    goto :goto_7b

    .line 856
    :cond_8a
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    new-instance v3, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-direct {v3, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;-><init>([C)V

    aput-object v3, v2, p2

    .line 859
    .end local v1    # "line":[C
    :cond_93
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v2, p2

    check-cast v1, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 860
    .local v1, "line":Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v1, p1, p3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->setChar(II)V

    goto :goto_80
.end method

.method public setChar(IIII)Z
    .registers 6
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "codePoint"    # I
    .param p4, "style"    # I

    .prologue
    .line 804
    invoke-virtual {p0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 805
    const/4 v0, 0x0

    .line 811
    :goto_7
    return v0

    .line 808
    :cond_8
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 809
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[Ljackpal/androidterm/emulatorview/StyleRow;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1, p4}, Ljackpal/androidterm/emulatorview/StyleRow;->set(II)V

    .line 811
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDefaultStyle(I)V
    .registers 2
    .param p1, "defaultStyle"    # I

    .prologue
    .line 75
    iput p1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultStyle:I

    .line 76
    return-void
.end method

.method public setLineWrap(I)V
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 125
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 126
    return-void
.end method
